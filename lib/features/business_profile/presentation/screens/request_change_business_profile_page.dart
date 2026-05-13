import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_input_decoration.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/business_profile/presentation/providers/business_profile_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';

class RequestChangeBusinessProfilePage extends ConsumerStatefulWidget {
  const RequestChangeBusinessProfilePage({super.key});

  @override
  ConsumerState<RequestChangeBusinessProfilePage> createState() =>
      _RequestChangeBusinessProfilePageState();
}

class _RequestChangeBusinessProfilePageState
    extends ConsumerState<RequestChangeBusinessProfilePage> {
  final _businessPhoneController = TextEditingController();
  ProviderSubscription? _formSubscription;

  @override
  void initState() {
    super.initState();
    _businessPhoneController.addListener(() {
      ref
          .read(businessProfileViewModelProvider.notifier)
          .updateRequestBusinessPhone(_businessPhoneController.text);
    });

    _formSubscription = ref.listenManual(businessProfileViewModelProvider, (
      previous,
      next,
    ) {
      if (_businessPhoneController.text != next.requestBusinessPhone) {
        _businessPhoneController.value = TextEditingValue(
          text: next.requestBusinessPhone,
          selection: TextSelection.collapsed(
            offset: next.requestBusinessPhone.length,
          ),
        );
      }
    });

    Future.microtask(
      () => ref
          .read(businessProfileViewModelProvider.notifier)
          .loadRequestChangeFormData(),
    );
  }

  @override
  void dispose() {
    _formSubscription?.close();
    _businessPhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(businessProfileViewModelProvider);

    return Scaffold(
      bottomNavigationBar: !state.requestFormLoading
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
                    child: GestureDetector(
                      onTap: state.requestFormSubmitting
                          ? null
                          : () => _showSubmitDialog(context),
                      child: CustomButton(
                        title: '사업자 정보 변경 신청',
                        boxColor: AppColors.primary,
                        borderColor: AppColors.primary,
                        textColor: Colors.white,
                        paddingVertical: 6,
                        textStyle: context.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : null,
      body: Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              slivers: [
                const AppSliverAppbar(title: "사업자 정보 변경"),
                if (state.requestFormLoading)
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: CircularProgressIndicator()),
                  )
                else ...[
                  const SliverToBoxAdapter(child: SizedBox(height: 10)),
                  SliverToBoxAdapter(
                    child: PaymentCompleteCommonBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '사업자 정보 변경',
                            style: context.bodyLarge.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '사업자 전화번호',
                            style: context.body.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _businessPhoneController,
                            keyboardType: TextInputType.phone,
                            decoration: AppInputDecoration.focusDecoration(
                              "사업자 전화번호를 입력해주세요.",
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '업종 대분류 카테고리',
                            style: context.body.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GestureDetector(
                            onTap: () => _showCategorySheet(
                              context: context,
                              title: '업종 대분류 선택',
                              categories: state.mainCategories,
                              selected: state.selectedMainCategory,
                              onSelected: (category) async {
                                await ref
                                    .read(
                                      businessProfileViewModelProvider.notifier,
                                    )
                                    .selectMainCategory(category);
                              },
                            ),
                            child: _SelectField(
                              text:
                                  state.selectedMainCategory?.name ??
                                  '대분류를 선택해주세요.',
                              isPlaceholder: state.selectedMainCategory == null,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '업종 소분류 카테고리',
                            style: context.body.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GestureDetector(
                            onTap: () async {
                              if (state.selectedMainCategory == null) {
                                await CommonDialog.show(
                                  context,
                                  title: '확인',
                                  isSuccess: false,
                                  message: '업종 대분류를 먼저 선택해주세요.',
                                );
                                return;
                              }
                              _showCategorySheet(
                                context: context,
                                title: '업종 소분류 선택',
                                categories: state.subCategories,
                                selected: state.selectedSubCategory,
                                onSelected: (category) {
                                  ref
                                      .read(
                                        businessProfileViewModelProvider
                                            .notifier,
                                      )
                                      .selectSubCategory(category);
                                },
                              );
                            },
                            child: _SelectField(
                              text:
                                  state.selectedSubCategory?.name ??
                                  '소분류를 선택해주세요.',
                              isPlaceholder: state.selectedSubCategory == null,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '사업자 등록증 업로드',
                            style: context.body.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 120,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () => _showPhotoSourceSheet(context),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      alignment: Alignment.center,
                                      color: AppColors.mediumGrey,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "사진 업로드",
                                            style: context.caption.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                if (state.businessLicensePath != null) ...[
                                  const SizedBox(width: 10),
                                  _PhotoPreview(
                                    photoPath: state.businessLicensePath!,
                                    onRemove: () {
                                      ref
                                          .read(
                                            businessProfileViewModelProvider
                                                .notifier,
                                          )
                                          .updateBusinessLicensePath(null);
                                    },
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (state.requestFormSubmitting)
            Positioned.fill(
              child: AbsorbPointer(
                child: Container(
                  color: Colors.black.withValues(alpha: 0.22),
                  child: const Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _showCategorySheet({
    required BuildContext context,
    required String title,
    required List<CategoryRequestModel> categories,
    required CategoryRequestModel? selected,
    required ValueChanged<CategoryRequestModel> onSelected,
  }) {
    AppBottomSheet.show(
      context: context,
      title: title,
      child: Builder(
        builder: (sheetContext) => Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: categories.map((category) {
              final isSelected = selected?.id == category.id;
              return InkWell(
                onTap: () {
                  onSelected(category);
                  Navigator.of(sheetContext).pop();
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.withValues(alpha: 0.15),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          category.name,
                          style: context.body.copyWith(
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: isSelected
                                ? AppColors.primary
                                : Colors.black,
                          ),
                        ),
                      ),
                      if (isSelected)
                        const Icon(
                          Icons.check_rounded,
                          color: AppColors.primary,
                        ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  void _showPhotoSourceSheet(BuildContext context) {
    AppBottomSheet.show(
      context: context,
      title: '사업자등록증 업로드',
      child: Builder(
        builder: (sheetContext) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library_outlined),
                title: const Text('앨범에서 선택'),
                onTap: () {
                  Navigator.of(sheetContext).pop();
                  _pickBusinessLicense(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera_outlined),
                title: const Text('사진 찍기'),
                onTap: () {
                  Navigator.of(sheetContext).pop();
                  _pickBusinessLicense(ImageSource.camera);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickBusinessLicense(ImageSource source) async {
    try {
      final picker = ImagePicker();
      final image = await picker.pickImage(source: source, imageQuality: 85);
      if (image == null || !mounted) return;
      ref
          .read(businessProfileViewModelProvider.notifier)
          .updateBusinessLicensePath(image.path);
    } catch (_) {}
  }

  Future<void> _showSubmitDialog(BuildContext context) async {
    final state = ref.read(businessProfileViewModelProvider);
    final businessPhone = state.requestBusinessPhone.trim();

    if (businessPhone.isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '사업자 전화번호를 입력해주세요.',
      );
      return;
    }

    await showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '사업자 정보 변경 신청',
                  style: context.titleMedium.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  '입력하신 정보로 변경 신청 하시겠습니까?',
                  style: context.body.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.of(dialogContext).pop(),
                        child: const SizedBox(
                          height: 32,
                          child: CustomButton(
                            title: '닫기',
                            boxColor: AppColors.lightGrey,
                            borderColor: AppColors.lightGrey,
                            textColor: AppColors.darkGrey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          Navigator.of(dialogContext).pop();
                          await _submitRequest();
                        },
                        child: const SizedBox(
                          height: 32,
                          child: CustomButton(
                            title: '신청',
                            boxColor: AppColors.primary,
                            borderColor: AppColors.primary,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _submitRequest() async {
    final response = await ref
        .read(businessProfileViewModelProvider.notifier)
        .submitRequestChangeBusinessProfile();

    if (!mounted) return;

    if (response.success) {
      await CommonDialog.show(
        context,
        title: '완료',
        message: response.message.isEmpty
            ? '사업자 정보 변경 신청이 완료되었습니다.'
            : response.message,
        onPressed: () {
          context.pop(true);
        },
      );
      return;
    }

    await CommonDialog.show(
      context,
      title: '오류',
      isSuccess: false,
      message: response.message.isEmpty
          ? '사업자 정보 변경 신청에 실패했습니다.'
          : response.message,
    );
  }
}

class _SelectField extends StatelessWidget {
  const _SelectField({required this.text, required this.isPlaceholder});

  final String text;
  final bool isPlaceholder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: AppBoxStyles.focusContainerDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: (isPlaceholder ? context.bodySmall : context.body)
                  .copyWith(
                    color: isPlaceholder ? AppColors.darkGrey : Colors.black,
                  ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.darkGrey,
          ),
        ],
      ),
    );
  }
}

class _PhotoPreview extends StatelessWidget {
  const _PhotoPreview({required this.photoPath, required this.onRemove});

  final String photoPath;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            File(photoPath),
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 6,
          right: 6,
          child: GestureDetector(
            onTap: onRemove,
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
