import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';

import '../../../../../../core/presentation/widgets/confirm_button.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../agree_labeled_checkbox.dart';
import '../signup_step2_box.dart';

class TermsAgreeSection extends ConsumerWidget {
  const TermsAgreeSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStep2ViewModelProvider);
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);
    return SignupStep2Box(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "8. 약관 동의",
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),

          CustomLabeledCheckbox(
            label: "서비스 이용약관 (필수)",
            value: state.agreeList[0],
            onChanged: (newValue) {
              notifier.changeAgreement(0, newValue!);
            },
          ),
          CustomLabeledCheckbox(
            label: "서비스 이용약관 (필수)",
            value: state.agreeList[1],
            onChanged: (newValue) {
              notifier.changeAgreement(1, newValue!);
            },
          ),

          CustomLabeledCheckbox(
            label: "서비스 이용약관 (필수)",
            value: state.agreeList[2],
            onChanged: (newValue) {
              notifier.changeAgreement(2, newValue!);
            },
          ),

          CustomLabeledCheckbox(
            label: "서비스 이용약관 (필수)",
            value: state.agreeList[3],
            onChanged: (newValue) {
              notifier.changeAgreement(3, newValue!);
            },
          ),

          SizedBox(height: 30),
          ConfirmButton(buttonTitle: "회원가입 완료"),
        ],
      ),
    );
  }
}
