import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewLoginInfoSection extends ConsumerWidget {
  const SignupNewLoginInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);
    final notifier = ref.read(signupNewViewModelProvider.notifier);

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('로그인 정보'),
          const SizedBox(height: 14),
          SignupNewLabeledTextField(
            label: '아이디',
            hint: '아이디를 입력해주세요.',
            onChanged: notifier.updateLoginId,
          ),
          const SizedBox(height: 4),
          SignupNewLoginIdCaption(status: state.loginIdCheckStatus),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '비밀번호',
            hint: '비밀번호를 입력해주세요.',
            obscureText: true,
            onChanged: notifier.updatePassword,
          ),
          const SizedBox(height: 4),
          Text(
            '비밀번호는 영문, 숫자, 특수문자를 포함하여 8자 이상 입력해 주세요.',
            style: context.caption.copyWith(color: AppColors.darkGrey),
          ),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '비밀번호 확인',
            hint: '비밀번호를 다시 입력해주세요.',
            obscureText: true,
            onChanged: notifier.updatePasswordConfirm,
          ),
          const SizedBox(height: 4),
          SignupNewPasswordCaption(
            passwordValid: state.isPasswordValid,
            confirmMatched: state.isPasswordConfirmMatched,
            password: state.password,
            confirmPassword: state.passwordConfirm,
          ),
        ],
      ),
    );
  }
}
