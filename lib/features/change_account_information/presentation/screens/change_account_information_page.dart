import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_input_decoration.dart';
import 'package:moding_application/features/change_account_information/presentation/providers/change_account_information_viewmodel.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';

import '../../../../core/theme/app_text_styles.dart';

class ChangeAccountInformationPage extends ConsumerStatefulWidget {
  const ChangeAccountInformationPage({super.key, this.niceResult});

  final NiceIdentityVerificationResult? niceResult;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChangeAccountInformationPage();
}

class _ChangeAccountInformationPage
    extends ConsumerState<ChangeAccountInformationPage> {
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref
          .read(changeAccountInformationViewModelProvider.notifier)
          .getMyAccountInfo(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(changeAccountInformationViewModelProvider);
    final accountInfo = state.accountInfo;

    // 이메일은 API에서 받아온 값으로 초기 세팅
    if (accountInfo != null && _emailController.text.isEmpty) {
      _emailController.text = accountInfo.email;
    }

    // NICE 결과에서 이름·전화번호 사용, 없으면 API 데이터 폴백
    final displayName = widget.niceResult?.name?.isNotEmpty == true
        ? widget.niceResult!.name!
        : (accountInfo?.name ?? '-');
    final displayPhone = widget.niceResult?.phone?.isNotEmpty == true
        ? widget.niceResult!.phone!
        : (accountInfo?.phone ?? '-');

    return Scaffold(
      bottomNavigationBar: !state.isLoading && accountInfo != null
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
                    child: GestureDetector(
                      onTap: state.isSubmitting
                          ? null
                          : () => _showConfirmDialog(
                              context,
                              name: displayName,
                              phone: displayPhone,
                            ),
                      child: CustomButton(
                        title: '계정 정보 변경',
                        boxColor: AppColors.primary,
                        borderColor: AppColors.primary,
                        textColor: Colors.white,
                        paddingVertical: 10,
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
                const AppSliverAppbar(title: "계정 정보 변경"),
                if (state.isLoading)
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: CircularProgressIndicator()),
                  )
                else if (accountInfo == null)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(
                        '계정 정보를 불러오지 못했어요.',
                        style: context.body.copyWith(color: AppColors.darkGrey),
                      ),
                    ),
                  )
                else ...[
                  const SliverToBoxAdapter(child: SizedBox(height: 10)),
                  SliverToBoxAdapter(
                    child: PaymentCompleteCommonBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '계정 정보',
                            style: context.bodyLarge.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          _ReadOnlyRow(
                            title: '아이디',
                            content: accountInfo.loginId,
                          ),
                          const SizedBox(height: 8),
                          _ReadOnlyRow(title: '이름', content: displayName),
                          const SizedBox(height: 8),
                          _ReadOnlyRow(title: '전화번호', content: displayPhone),
                          const SizedBox(height: 16),
                          Text(
                            '이메일',
                            style: context.body.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: AppInputDecoration.focusDecoration(
                              "이메일을 입력해주세요.",
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
          if (state.isSubmitting)
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

  Future<void> _showConfirmDialog(
    BuildContext context, {
    required String name,
    required String phone,
  }) async {
    final email = _emailController.text.trim();

    if (email.isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '이메일을 입력해주세요.',
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
                  '계정 정보 변경',
                  style: context.titleMedium.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '이름: $name\n전화번호: $phone\n이메일: $email\n\n이 정보로 변경하시겠습니까?',
                  style: context.body,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.of(dialogContext).pop(),
                        child: CustomButton(
                          title: '취소',
                          boxColor: AppColors.lightGrey,
                          borderColor: AppColors.lightGrey,
                          textColor: AppColors.darkGrey,
                          paddingVertical: 6,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          Navigator.of(dialogContext).pop();
                          await _submitAccountInfo(email: email);
                        },
                        child: CustomButton(
                          title: '변경',
                          boxColor: AppColors.primary,
                          borderColor: AppColors.primary,
                          textColor: Colors.white,
                          paddingVertical: 6,
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

  Future<void> _submitAccountInfo({required String email}) async {
    final identityKey = widget.niceResult?.key ?? '';
    final response = await ref
        .read(changeAccountInformationViewModelProvider.notifier)
        .patchMyAccountInfo(email: email, identityKey: identityKey);

    if (!mounted) return;

    if (response.success) {
      context.pop(true);
      return;
    }

    await CommonDialog.show(
      context,
      title: '오류',
      isSuccess: false,
      message: response.message.isEmpty
          ? '계정 정보 변경에 실패했습니다.'
          : response.message,
    );
  }
}

class _ReadOnlyRow extends StatelessWidget {
  const _ReadOnlyRow({required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 72,
          child: Text(
            title,
            style: context.bodySmall.copyWith(color: AppColors.darkGrey),
          ),
        ),
        Expanded(child: Text(content, style: context.body)),
      ],
    );
  }
}
