import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/providers/app_viewmodel_reset.dart';
import 'package:moding_application/core/presentation/widgets/confirm_button.dart';
import 'package:moding_application/core/presentation/widgets/input_widget.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/core/utils/toast.dart';
import 'package:moding_application/features/change_password/domain/entities/change_password_page_params.dart';
import 'package:moding_application/features/find_member_information/data/repositories/id/find_id_repository_impl.dart';
import 'package:moding_application/features/login/presentation/providers/login_viewmodel.dart';
import 'package:moding_application/features/login/presentation/screens/widgets/login_help_area.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_page_params.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';

import '../../../../core/presentation/widgets/appbar_profile.dart';
import '../../../../core/presentation/widgets/loading_indicator.dart';

class LoginPageMain extends ConsumerWidget {
  const LoginPageMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String logoPath = "assets/images/logo4.png";
    final notifier = ref.read(loginViewModelProvider.notifier);
    final state = ref.watch(loginViewModelProvider);

    return Scaffold(
      appBar: AppBarProfile(title: "로그인"),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 60),

                /// 로고
                Center(child: Image.asset(logoPath, width: 100, height: 100)),

                const SizedBox(height: 40),

                /// 입력 영역
                Expanded(
                  child: SingleChildScrollView(
                    child: _loginInputSection(context, ref, notifier),
                  ),
                ),
              ],
            ),
          ),
          if (state.isSubmitting)
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
    );
  }

  Column _loginInputSection(
    BuildContext context,
    WidgetRef ref,
    LoginViewModel notifier,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 14,
      children: [
        InputWidget(
          inputTitle: '아이디',
          inputHint: '아이디를 입력하세요.',
          paddingH: 20,
          onChanged: (String value) {
            notifier.changeUserId(userId: value);
          },
        ),
        InputWidget(
          inputTitle: '비밀번호',
          inputHint: '비밀번호를 입력하세요.',
          paddingH: 20,
          onChanged: (String value) {
            notifier.changeUserPassword(userPassword: value);
          },
          isPw: true,
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () async {
            final token = await notifier.login();
            if (!context.mounted) return;

            if (token != null) {
              if (token.identityVerificationRequired) {
                var shouldStartIdentityVerification = false;
                await CommonDialog.show(
                  context,
                  title: '안내',
                  isSuccess: false,
                  message: '초기 판매자 계정은 첫 로그인 시에 본인인증이 필요합니다.',
                  buttonText: '본인인증',
                  onPressed: () {
                    shouldStartIdentityVerification = true;
                  },
                );
                if (!context.mounted || !shouldStartIdentityVerification) {
                  return;
                }

                await ref
                    .read(tokenStorageProvider)
                    .setLoginGateResetPending(true);

                final result = await context
                    .push<NiceIdentityVerificationResult>(
                      '/nice_identity_verification',
                      extra: const NiceIdentityVerificationPageParams(
                        type: NiceIdentityVerificationType.general,
                        source: NiceVerificationSource.login,
                      ),
                    );
                if (!context.mounted) return;
                if (result == null || !result.success || result.key == null) {
                  await ref
                      .read(tokenStorageProvider)
                      .clearLoginGateResetPending();
                  await CommonDialog.show(
                    context,
                    title: '오류',
                    isSuccess: false,
                    message: '본인인증이 완료되지 않았습니다.',
                    onPressed: () {
                      if (!context.mounted) return;
                      context.go('/main');
                    },
                  );
                  return;
                }

                context.push(
                  '/change_password',
                  extra: ChangePasswordPageParams(
                    identityKey: result.key,
                    isLoginGateReset: true,
                  ),
                );
                return;
              }

              resetAppViewModels(ref);
              if (context.canPop()) {
                context.pop(true);
              } else {
                context.go('/main');
              }
              ToastUtil.show("성공적으로 로그인했습니다.");
              return;
            }

            ToastUtil.show("아이디 또는 비밀번호가 올바르지 않습니다.");
          },
          child: ConfirmButton(buttonTitle: "로그인", paddingH: 20),
        ),
        GestureDetector(
          onTap: () {
            context.push('/signup_new');
          },
          child: ConfirmButton(buttonTitle: "회원가입", paddingH: 20),
        ),
        _bottomSection(context, ref),
      ],
    );
  }

  Widget _bottomSection(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 6,
        children: [
          Container(
            color: AppColors.dividerGrey,
            width: double.infinity,
            height: 1,
          ),
          LoginHelpArea(
            content: "아이디 또는 비밀번호가 기억나지 않나요?",
            accentContent1: "아이디 찾기",
            accentContent2: "비밀번호 찾기",
            onFindIdTap: () async {
              final result = await context.push<NiceIdentityVerificationResult>(
                '/nice_identity_verification',
                extra: const NiceIdentityVerificationPageParams(
                  type: NiceIdentityVerificationType.general,
                  source: NiceVerificationSource.findId,
                ),
              );
              if (!context.mounted || result == null || !result.success) return;
              try {
                final response = await ref
                    .read(findIdRepositoryProvider)
                    .postFindId(result.key ?? '');
                if (!context.mounted) return;
                if (response.success && response.loginId != null) {
                  context.push('/find_id/check', extra: response.loginId!);
                } else {
                  ToastUtil.show('아이디를 찾을 수 없습니다.');
                }
              } catch (_) {
                if (context.mounted) ToastUtil.show('오류가 발생했습니다. 다시 시도해주세요.');
              }
            },
            onFindPasswordTap: () async {
              final result = await context.push<NiceIdentityVerificationResult>(
                '/nice_identity_verification',
                extra: const NiceIdentityVerificationPageParams(
                  type: NiceIdentityVerificationType.general,
                  source: NiceVerificationSource.findPw,
                ),
              );
              if (!context.mounted ||
                  result == null ||
                  !result.success ||
                  result.key == null) {
                return;
              }
              context.push('/find_pw/change_pw', extra: result.key!);
            },
          ),
        ],
      ),
    );
  }
}
