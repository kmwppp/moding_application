import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_divider.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_input_decoration.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/core/utils/pdf_util.dart';
import 'package:moding_application/features/meta/domain/entities/meta_option_dto.dart';
import 'package:moding_application/features/meta/presentation/providers/meta_provider.dart';
import 'package:moding_application/features/seller_conversion/domain/enums/seller_tax_type.dart';
import 'package:moding_application/features/seller_conversion/presentation/providers/seller_conversion_viewmodel.dart';
import 'package:moding_application/features/seller_conversion/presentation/screens/widgets/seller_conversion_sliver_appbar.dart';
import 'package:moding_application/features/terms/domain/enums/terms_type.dart';
import 'package:moding_application/features/terms/presentation/providers/terms_provider.dart';

class SellerConversionPage extends ConsumerStatefulWidget {
  const SellerConversionPage({super.key, this.goMainOnSuccess = false});

  final bool goMainOnSuccess;

  @override
  ConsumerState<SellerConversionPage> createState() =>
      _SellerConversionPageState();
}

class _SellerConversionPageState extends ConsumerState<SellerConversionPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(sellerConversionViewModelProvider.notifier).getMainPermits();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sellerConversionViewModelProvider);
    final bankCodes =
        ref.watch(bankCodesProvider).value ?? const <MetaOptionDto>[];
    final notifier = ref.read(sellerConversionViewModelProvider.notifier);
    final termsAsync = ref.watch(termsProvider);

    return Scaffold(
      bottomNavigationBar: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 12),
              child: GestureDetector(
                onTap: state.isSubmitting
                    ? null
                    : () => _submitSellerConversion(context, ref),
                child: CustomButton(
                  title: '판매자 전환 신청',
                  boxColor: AppColors.primary,
                  textColor: Colors.white,
                  borderColor: AppColors.primary,
                  paddingVertical: 10,
                  textStyle: context.body.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              slivers: [
                const SellerConversionSliverAppbar(title: "판매자 전환 신청"),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _SectionTitle(title: '세금계산서 수신 이메일'),
                      _TextInputField(
                        hintText: '세금계산서를 수신할 이메일을 입력해주세요.',
                        keyboardType: TextInputType.emailAddress,
                        onChanged: notifier.updateTaxInvoiceEmail,
                      ),
                      _SectionTitle(title: '과세유형'),
                      _SelectField(
                        value: state.taxType?.label,
                        hintText: '과세유형을 선택해주세요.',
                        onTap: () => _showTaxTypeBottomSheet(context, notifier),
                      ),
                      _SectionTitle(title: '허가 카테고리 대분류'),
                      _SelectField(
                        value: state.selectedMainPermit?.name,
                        hintText: '허가 카테고리 대분류를 선택해주세요.',
                        onTap: () =>
                            _showMainPermitBottomSheet(context, notifier),
                      ),
                      _SectionTitle(title: '허가 카테고리 소분류'),
                      _SelectField(
                        value: state.selectedSubPermit?.name,
                        hintText: state.selectedMainPermit == null
                            ? '먼저 허가 카테고리 대분류를 선택해주세요.'
                            : '허가 카테고리 소분류를 선택해주세요.',
                        onTap: state.selectedMainPermit == null
                            ? () {}
                            : () =>
                                  _showSubPermitBottomSheet(context, notifier),
                      ),
                      SizedBox(height: 20),
                      const AppDivider(height: 4),
                      _SectionTitle(title: '은행명'),
                      _SelectField(
                        value: state.selectedBank?.label,
                        hintText: '은행을 선택해주세요.',
                        onTap: () =>
                            _showBankBottomSheet(context, notifier, bankCodes),
                      ),
                      _SectionTitle(title: '계좌번호'),
                      _TextInputField(
                        hintText: '계좌번호를 입력해주세요.',
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9-]')),
                        ],
                        onChanged: notifier.updateBankAccountNumber,
                      ),
                      _SectionTitle(title: '예금주 명'),
                      _TextInputField(
                        hintText: '예금주명을 입력해주세요.',
                        onChanged: notifier.updateBankAccountHolder,
                      ),
                      SizedBox(height: 20),
                      const AppDivider(height: 4),
                      _SingleImageSection(
                        title: '통장사본 (필수)',
                        imagePath: state.bankbookImagePath,
                        onAddTap: () => _showSingleImageSourceSheet(
                          context,
                          onGalleryTap: () =>
                              notifier.pickBankbookImage(ImageSource.gallery),
                          onCameraTap: () =>
                              notifier.pickBankbookImage(ImageSource.camera),
                        ),
                        onRemoveTap: notifier.removeBankbookImage,
                      ),
                      const AppDivider(height: 4),
                      _MultiImageSection(
                        title: '영업허가증 (필수)',
                        imagePaths: state.businessPermitImagePaths,
                        onAddTap: () => _showMultiImageSourceSheet(
                          context,
                          onGalleryTap:
                              notifier.pickBusinessPermitImagesFromGallery,
                          onCameraTap:
                              notifier.pickBusinessPermitImageFromCamera,
                        ),
                        onRemoveTap: notifier.removeBusinessPermitImage,
                      ),
                      const AppDivider(height: 4),
                      _MultiImageSection(
                        title: '통신판매업신고증 (선택)',
                        imagePaths: state.salesPermitImagePaths,
                        onAddTap: () => _showMultiImageSourceSheet(
                          context,
                          onGalleryTap:
                              notifier.pickSalesPermitImagesFromGallery,
                          onCameraTap: notifier.pickSalesPermitImageFromCamera,
                        ),
                        onRemoveTap: notifier.removeSalesPermitImage,
                      ),
                      const AppDivider(height: 4),
                      _MultiImageSection(
                        title: 'HACCP 인증서 (선택)',
                        caption:
                            'HACCP 인증 대상이 아니거나 허위·만료된 인증서를 제출할 경우 판매 제한, 정산 보류 및 법적 책임이 발생할 수 있습니다.',
                        imagePaths: state.haccpCertificateImagePaths,
                        onAddTap: () => _showMultiImageSourceSheet(
                          context,
                          onGalleryTap:
                              notifier.pickHaccpCertificateImagesFromGallery,
                          onCameraTap:
                              notifier.pickHaccpCertificateImageFromCamera,
                        ),
                        onRemoveTap: notifier.removeHaccpCertificateImage,
                      ),
                      const AppDivider(height: 4),
                      _MultiImageSection(
                        title: '기타증빙서류',
                        caption:
                            '수입식품, 주류면허, 중매인, 도소매허가 등 취급 상품의 판매 자격을 증빙할 수 있는 서류를 첨부해 주세요.',
                        imagePaths: state.otherFilePaths,
                        onAddTap: () =>
                            _showOtherFilesSourceSheet(context, notifier),
                        onRemoveTap: notifier.removeOtherFile,
                      ),
                      const AppDivider(height: 4),
                      _SellerConversionTermsSection(
                        termsAsync: termsAsync,
                        agreedSellerTerms: state.agreedSellerTerms,
                        agreedSettlementTerms: state.agreedSettlementTerms,
                        onToggleAll: notifier.toggleAllRequiredTerms,
                        onToggleSellerTerms: notifier.toggleSellerTerms,
                        onToggleSettlementTerms: notifier.toggleSettlementTerms,
                      ),
                      const SizedBox(height: 96),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (state.isSubmitting)
            Positioned.fill(
              child: AbsorbPointer(
                child: Container(
                  color: Colors.black.withValues(alpha: 0.18),
                  alignment: Alignment.center,
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.center,
                    child: const SizedBox(
                      width: 28,
                      height: 28,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _submitSellerConversion(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final state = ref.read(sellerConversionViewModelProvider);

    if (!_isValidEmail(state.taxInvoiceEmail.trim())) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '세금계산서 수신 이메일을 올바르게 입력해주세요.',
      );
      return;
    }

    if (state.taxType == null) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '과세유형을 선택해주세요.',
      );
      return;
    }

    if (state.selectedMainPermit == null) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '허가 카테고리 대분류를 선택해주세요.',
      );
      return;
    }

    if (state.selectedSubPermit == null) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '허가 카테고리 소분류를 선택해주세요.',
      );
      return;
    }

    if (state.selectedBank == null) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '은행명을 선택해주세요.',
      );
      return;
    }

    if (state.bankAccountNumber.trim().isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '계좌번호를 입력해주세요.',
      );
      return;
    }

    if (state.bankAccountHolder.trim().isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '예금주 명을 입력해주세요.',
      );
      return;
    }

    if (state.bankbookImagePath == null) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '통장사본 이미지를 첨부해주세요.',
      );
      return;
    }

    if (state.businessPermitImagePaths.isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '영업허가증 이미지를 첨부해주세요.',
      );
      return;
    }

    if (!state.agreedSellerTerms || !state.agreedSettlementTerms) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '약관에 동의해주세요.',
      );
      return;
    }

    try {
      final response = await ref
          .read(sellerConversionViewModelProvider.notifier)
          .submitSellerConversion();
      if (!context.mounted) return;

      if (!response.success) {
        await CommonDialog.show(
          context,
          title: '확인',
          isSuccess: false,
          message: response.message,
        );
        return;
      }

      await CommonDialog.show(
        context,
        title: '확인',
        message: '판매자 전환 신청이 완료되었습니다.',
        onPressed: () {
          if (widget.goMainOnSuccess) {
            context.go('/main');
            return;
          }
          context.pop(true);
        },
      );
    } catch (_) {
      if (!context.mounted) return;
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '요청 데이터를 준비하는 중 문제가 생겼습니다.',
      );
    }
  }

  Future<void> _showBankBottomSheet(
    BuildContext context,
    SellerConversionViewModel notifier,
    List<MetaOptionDto> banks,
  ) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return SafeArea(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: banks.length,
            separatorBuilder: (context, index) =>
                Container(height: 1, color: AppColors.lightGrey),
            itemBuilder: (context, index) {
              final bank = banks[index];
              return ListTile(
                title: Text(bank.label, style: context.body),
                onTap: () {
                  Navigator.of(context).pop();
                  notifier.selectBank(bank);
                },
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _showTaxTypeBottomSheet(
    BuildContext context,
    SellerConversionViewModel notifier,
  ) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (bottomSheetContext) {
        return SafeArea(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: SellerTaxType.values.length,
            separatorBuilder: (context, index) =>
                Container(height: 1, color: AppColors.lightGrey),
            itemBuilder: (context, index) {
              final taxType = SellerTaxType.values[index];
              return ListTile(
                title: Text(taxType.label, style: context.body),
                onTap: () {
                  Navigator.of(bottomSheetContext).pop();
                  notifier.selectTaxType(taxType);
                },
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _showMainPermitBottomSheet(
    BuildContext context,
    SellerConversionViewModel notifier,
  ) {
    final state = ref.read(sellerConversionViewModelProvider);
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (bottomSheetContext) {
        return SafeArea(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: state.mainPermits.length,
            separatorBuilder: (context, index) =>
                Container(height: 1, color: AppColors.lightGrey),
            itemBuilder: (context, index) {
              final permit = state.mainPermits[index];
              return ListTile(
                title: Text(permit.name, style: context.body),
                onTap: () {
                  Navigator.of(bottomSheetContext).pop();
                  notifier.selectMainPermit(permit);
                },
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _showSubPermitBottomSheet(
    BuildContext context,
    SellerConversionViewModel notifier,
  ) {
    final state = ref.read(sellerConversionViewModelProvider);
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (bottomSheetContext) {
        return SafeArea(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: state.subPermits.length,
            separatorBuilder: (context, index) =>
                Container(height: 1, color: AppColors.lightGrey),
            itemBuilder: (context, index) {
              final permit = state.subPermits[index];
              return ListTile(
                title: Text(permit.name, style: context.body),
                onTap: () {
                  Navigator.of(bottomSheetContext).pop();
                  notifier.selectSubPermit(permit);
                },
              );
            },
          ),
        );
      },
    );
  }

  void _showSingleImageSourceSheet(
    BuildContext context, {
    required VoidCallback onGalleryTap,
    required VoidCallback onCameraTap,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (bottomSheetContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_library_outlined),
                  title: const Text('갤러리에서 선택'),
                  onTap: () {
                    Navigator.of(bottomSheetContext).pop();
                    onGalleryTap();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_camera_outlined),
                  title: const Text('사진 촬영'),
                  onTap: () {
                    Navigator.of(bottomSheetContext).pop();
                    onCameraTap();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showOtherFilesSourceSheet(
    BuildContext context,
    SellerConversionViewModel notifier,
  ) {
    _showMultiImageSourceSheet(
      context,
      onGalleryTap: notifier.pickOtherFilesFromGallery,
      onCameraTap: notifier.pickOtherFileFromCamera,
    );
  }

  void _showMultiImageSourceSheet(
    BuildContext context, {
    required VoidCallback onGalleryTap,
    required VoidCallback onCameraTap,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (bottomSheetContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_library_outlined),
                  title: const Text('갤러리에서 선택'),
                  onTap: () {
                    Navigator.of(bottomSheetContext).pop();
                    onGalleryTap();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_camera_outlined),
                  title: const Text('사진 촬영'),
                  onTap: () {
                    Navigator.of(bottomSheetContext).pop();
                    onCameraTap();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailRegex.hasMatch(email);
  }
}

class _SellerConversionTermsSection extends ConsumerWidget {
  const _SellerConversionTermsSection({
    required this.termsAsync,
    required this.agreedSellerTerms,
    required this.agreedSettlementTerms,
    required this.onToggleAll,
    required this.onToggleSellerTerms,
    required this.onToggleSettlementTerms,
  });

  final AsyncValue<dynamic> termsAsync;
  final bool agreedSellerTerms;
  final bool agreedSettlementTerms;
  final ValueChanged<bool> onToggleAll;
  final ValueChanged<bool> onToggleSellerTerms;
  final ValueChanged<bool> onToggleSettlementTerms;

  bool get agreedAll => agreedSellerTerms && agreedSettlementTerms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => onToggleAll(!agreedAll),
            child: Row(
              children: [
                Checkbox(
                  value: agreedAll,
                  onChanged: (value) => onToggleAll(value ?? false),
                  activeColor: AppColors.primary,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                Text(
                  '전체 동의',
                  style: context.title.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          termsAsync.when(
            loading: () => const SizedBox.shrink(),
            error: (_, _) => const SizedBox.shrink(),
            data: (_) {
              final items = ref
                  .read(termsProvider.notifier)
                  .sellerConversionTerms;

              return Column(
                children: items.map((item) {
                  final checked = switch (item.type) {
                    TermsType.seller => agreedSellerTerms,
                    TermsType.settlementServiceAgreement =>
                      agreedSettlementTerms,
                    _ => false,
                  };

                  final onChanged = switch (item.type) {
                    TermsType.seller => onToggleSellerTerms,
                    TermsType.settlementServiceAgreement =>
                      onToggleSettlementTerms,
                    _ => (_) {},
                  };

                  return InkWell(
                    onTap: () => onChanged(!checked),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        children: [
                          Checkbox(
                            value: checked,
                            onChanged: (value) => onChanged(value ?? false),
                            activeColor: AppColors.primary,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                          ),
                          Expanded(
                            child: Text(
                              '${item.typeLabel}(필수)',
                              style: context.body.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => PdfUtil.openPdf(
                              context,
                              item.pdfUrl,
                              item.typeLabel,
                            ),
                            child: Text(
                              '[보기]',
                              style: context.body.copyWith(
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Text(
        title,
        style: context.bodyLarge.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _TextInputField extends StatelessWidget {
  const _TextInputField({
    required this.hintText,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.inputFormatters = const [],
  });

  final String hintText;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        style: context.body,
        decoration: AppInputDecoration.focusDecoration(hintText),
      ),
    );
  }
}

class _SelectField extends StatelessWidget {
  const _SelectField({
    required this.value,
    required this.hintText,
    required this.onTap,
  });

  final String? value;
  final String hintText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: AbsorbPointer(
          child: TextField(
            decoration: AppInputDecoration.focusDecoration(hintText).copyWith(
              hintText: value ?? hintText,
              hintStyle: context.bodySmall.copyWith(
                color: value == null ? AppColors.darkGrey : Colors.black,
              ),
              suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded),
            ),
          ),
        ),
      ),
    );
  }
}

class _SingleImageSection extends StatelessWidget {
  const _SingleImageSection({
    required this.title,
    required this.imagePath,
    required this.onAddTap,
    required this.onRemoveTap,
  });

  final String title;
  final String? imagePath;
  final VoidCallback onAddTap;
  final VoidCallback onRemoveTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),

          if (imagePath == null)
            _UploadCard(onTap: onAddTap, title: '사진 업로드')
          else
            _ImagePreview(
              imagePath: imagePath!,
              onTap: onAddTap,
              onRemoveTap: onRemoveTap,
            ),
        ],
      ),
    );
  }
}

class _MultiImageSection extends StatelessWidget {
  const _MultiImageSection({
    required this.title,
    this.caption = '',
    required this.imagePaths,
    required this.onAddTap,
    required this.onRemoveTap,
  });

  final String title;
  final String caption;
  final List<String> imagePaths;
  final VoidCallback onAddTap;
  final ValueChanged<String> onRemoveTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.w600),
          ),
          if (caption.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              caption,
              style: context.bodySmall.copyWith(color: AppColors.pointColor),
            ),
          ],
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _UploadCard(onTap: onAddTap, title: '파일 추가'),
                for (final imagePath in imagePaths) ...[
                  const SizedBox(width: 10),
                  _ImagePreview(
                    imagePath: imagePath,
                    onTap: onAddTap,
                    onRemoveTap: () => onRemoveTap(imagePath),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UploadCard extends StatelessWidget {
  const _UploadCard({required this.onTap, required this.title});

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 120,
          height: 120,
          color: AppColors.mediumGrey,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.add, color: Colors.white),
              Text(
                title,
                style: context.caption.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ImagePreview extends StatelessWidget {
  const _ImagePreview({
    required this.imagePath,
    required this.onTap,
    required this.onRemoveTap,
  });

  final String imagePath;
  final VoidCallback onTap;
  final VoidCallback onRemoveTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: onTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.file(
              File(imagePath),
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 6,
          right: 6,
          child: GestureDetector(
            onTap: onRemoveTap,
            child: Container(
              width: 22,
              height: 22,
              decoration: const BoxDecoration(
                color: AppColors.darkGrey,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, color: Colors.white, size: 14),
            ),
          ),
        ),
      ],
    );
  }
}
