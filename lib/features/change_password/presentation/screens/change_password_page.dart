import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/providers/app_viewmodel_reset.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/core/theme/app_input_decoration.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/change_password/presentation/providers/change_password_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';

class ChangePasswordPage extends ConsumerStatefulWidget {
  const ChangePasswordPage({super.key, this.identityKey});

  final String? identityKey;

  @override
  ConsumerState<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends ConsumerState<ChangePasswordPage> {
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(changePasswordViewModelProvider);

    return Scaffold(
      bottomNavigationBar: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
              child: GestureDetector(
                onTap: state.isSubmitting
                    ? null
                    : () => _showConfirmDialog(context),
                child: CustomButton(
                  title: '변경하기',
                  boxColor: AppColors.primary,
                  borderColor: AppColors.primary,
                  textColor: Colors.white,
                  paddingVertical: 6,
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
                const AppSliverAppbar(title: '비밀번호 변경'),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                SliverToBoxAdapter(
                  child: PaymentCompleteCommonBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _PasswordField(
                          title: '변경 비밀번호',
                          controller: _newPasswordController,
                          hintText: '변경 비밀번호를 입력해주세요.',
                        ),
                        const SizedBox(height: 16),
                        _PasswordField(
                          title: '변경 비밀번호 확인',
                          controller: _confirmPasswordController,
                          hintText: '변경 비밀번호를 다시 입력해주세요.',
                        ),
                      ],
                    ),
                  ),
                ),
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

  Future<void> _showConfirmDialog(BuildContext context) async {
    final newPassword = _newPasswordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    if (newPassword.isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '변경 비밀번호를 입력해주세요.',
      );
      return;
    }

    if (confirmPassword.isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '변경 비밀번호 확인을 입력해주세요.',
      );
      return;
    }

    if (newPassword != confirmPassword) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '변경할 비밀번호가 일치하지 않습니다.',
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
                  '비밀번호 변경',
                  style: context.titleMedium.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '비밀번호를 변경하시겠습니까?',
                  style: context.body.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.of(dialogContext).pop(),
                        child: CustomButton(
                          title: '닫기',
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
                          await _submitChangePassword(newPassword: newPassword);
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

  Future<void> _submitChangePassword({required String newPassword}) async {
    final response = await ref
        .read(changePasswordViewModelProvider.notifier)
        .patchChangePassword(
          identityKey: widget.identityKey ?? '',
          newPassword: newPassword,
        );

    if (!mounted) return;

    if (response.success) {
      await CommonDialog.show(
        context,
        title: '완료',
        message: '비밀번호가 변경되었습니다.\n다시 로그인 해주세요.',
        onPressed: () async {
          await ref.read(tokenStorageProvider).deleteAll();
          resetAppViewModels(ref);
          if (!mounted) return;
          context.go('/main');
        },
      );
      return;
    }

    await CommonDialog.show(
      context,
      title: '오류',
      isSuccess: false,
      message: response.message.isEmpty ? '비밀번호 변경에 실패했습니다.' : response.message,
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    required this.title,
    required this.controller,
    required this.hintText,
  });

  final String title;
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.body.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          decoration: AppInputDecoration.focusDecoration(hintText),
        ),
      ],
    );
  }
}
