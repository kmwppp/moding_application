import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/appbar_profile.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/loading_indicator.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/find_member_information/presentation/pw/providers/find_pw_viewmodel.dart';

class ChangePwPage extends ConsumerStatefulWidget {
  const ChangePwPage({super.key, required this.identityVerificationKey});

  final String identityVerificationKey;

  @override
  ConsumerState<ChangePwPage> createState() => _ChangePwPageState();
}

class _ChangePwPageState extends ConsumerState<ChangePwPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref
          .read(findPwViewModelProvider.notifier)
          .setIdentityVerificationKey(widget.identityVerificationKey),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(findPwViewModelProvider);
    final notifier = ref.read(findPwViewModelProvider.notifier);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBarProfile(title: '비밀번호 변경'),
        bottomNavigationBar: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
                child: GestureDetector(
                  onTap: () async {
                    final message = notifier.validate();
                    if (message != null) {
                      await CommonDialog.show(
                        context,
                        title: '안내',
                        isSuccess: false,
                        message: message,
                      );
                      return;
                    }

                    final response = await notifier.patchFindPassword();
                    if (!context.mounted) return;

                    if (response.success) {
                      await CommonDialog.show(
                        context,
                        title: '완료',
                        message: response.message.isNotEmpty
                            ? response.message
                            : '비밀번호가 재설정되었습니다.',
                        onPressed: () {
                          if (!context.mounted) return;
                          context.pop();
                          context.pop();
                        },
                      );
                      return;
                    }

                    final errorMessage = switch (response.statusCode) {
                      400 => '기존 비밀번호와 일치합니다.',
                      404 => '일치하는 계정이 없습니다.',
                      _ =>
                        response.message.isNotEmpty
                            ? response.message
                            : '비밀번호 재설정에 실패했습니다.',
                    };

                    await CommonDialog.show(
                      context,
                      title: '안내',
                      isSuccess: false,
                      message: errorMessage,
                      onPressed: () {
                        if (!context.mounted) return;
                        // if (response.statusCode == 404) {
                        //   context.pop();
                        //   context.pop();
                        // }
                      },
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      title: '비밀번호 변경',
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
          ),
        ),
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 120),
                child: Column(
                  children: [
                    ChangePwTextField(
                      label: '아이디',
                      hint: '아이디를 입력해주세요.',
                      onChanged: notifier.updateLoginId,
                    ),
                    const SizedBox(height: 10),
                    ChangePwTextField(
                      label: '새 비밀번호',
                      hint: '새 비밀번호를 입력해주세요.',
                      obscureText: true,
                      onChanged: notifier.updateNewPassword,
                    ),
                    const SizedBox(height: 10),
                    ChangePwTextField(
                      label: '새 비밀번호 확인',
                      hint: '새 비밀번호를 한번더 입력해주세요.',
                      obscureText: true,
                      onChanged: notifier.updateNewPasswordConfirm,
                    ),
                  ],
                ),
              ),
            ),
            if (state.isLoading)
              Positioned.fill(
                child: AbsorbPointer(
                  child: Container(
                    color: Colors.black.withValues(alpha: 0.12),
                    child: const Center(child: LoadingIndicator()),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ChangePwTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;
  final ValueChanged<String> onChanged;

  const ChangePwTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.onChanged,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: context.body),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.dividerGrey),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextField(
            obscureText: obscureText,
            onChanged: onChanged,
            style: context.body,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              hintText: hint,
              hintStyle: context.body.copyWith(color: AppColors.darkGrey),
            ),
          ),
        ),
      ],
    );
  }
}
