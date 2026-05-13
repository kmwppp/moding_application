import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewIdentityVerificationSection extends ConsumerWidget {
  const SignupNewIdentityVerificationSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('본인인증'),
          const SizedBox(height: 14),
          SignupNewStaticInfoField(
            label: '이름',
            value: state.verifiedName.isEmpty ? '-' : state.verifiedName,
          ),
          const SizedBox(height: 10),
          SignupNewStaticInfoField(
            label: '전화번호',
            value: state.verifiedPhone.isEmpty ? '-' : state.verifiedPhone,
          ),
          const SizedBox(height: 14),
          GestureDetector(
            onTap: () async {
              await CommonDialog.show(
                context,
                title: '안내',
                message: '본인인증 API 승인 후 연결 예정입니다.',
              );
            },
            child: CustomButton(
              title: '인증 버튼',
              boxColor: AppColors.primary,
              textColor: Colors.white,
              textStyle: context.bodySmall.copyWith(
                fontWeight: FontWeight.w600,
              ),
              paddingVertical: 8,
            ),
          ),
        ],
      ),
    );
  }
}
