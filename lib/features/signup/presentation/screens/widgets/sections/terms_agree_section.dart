import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/providers/app_viewmodel_reset.dart';
import 'package:moding_application/core/utils/toast.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';

import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/presentation/enums/pdf_type.dart';
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
            AppStrings.termsSectionTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),

          Divider(),

          CustomLabeledCheckbox(
            label: "${PdfType.serviceTerms.label} (필수)",
            value: state.agreeList[0],
            onChanged: (newValue) {
              notifier.changeAgreement(0, newValue!);
            },
            pdfPath: PdfType.serviceTerms.getPath(PdfShowView.main),
          ),
          CustomLabeledCheckbox(
            label: "${PdfType.privacyPolicy.label} (필수)",
            value: state.agreeList[1],
            onChanged: (newValue) {
              notifier.changeAgreement(1, newValue!);
            },
            pdfPath: PdfType.privacyPolicy.getPath(PdfShowView.main),
          ),

          // CustomLabeledCheckbox(
          //   label: "${PdfType.electronicFinancialTerms.label} (필수)",
          //   value: state.agreeList[2],
          //   onChanged: (newValue) {
          //     notifier.changeAgreement(2, newValue!);
          //   },
          //   pdfPath: PdfType.electronicFinancialTerms.getPath(PdfShowView.main),
          // ),
          //
          // CustomLabeledCheckbox(
          //   label: "${PdfType.buyerTerms.label} (필수)",
          //   value: state.agreeList[3],
          //   onChanged: (newValue) {
          //     notifier.changeAgreement(3, newValue!);
          //   },
          //   pdfPath: PdfType.buyerTerms.getPath(PdfShowView.main),
          // ),
          Divider(),

          CustomLabeledCheckbox(
            label: "전체 동의",
            value: notifier.isAllAgreed,
            onChanged: (newValue) {
              notifier.toggleAll(newValue!);
            },
          ),

          const SizedBox(height: 10),
          GestureDetector(
            onTap: () async {
              // 1. 회원가입 관련 모든 상태 초기화

              final response = await notifier.executeSignUp();
              if (!context.mounted) return;
              if (response != null) {
                if (response.success) {
                  // 회원가입 성공
                  resetAppViewModels(ref);
                  ToastUtil.show(AppStrings.welcomeModing);
                  context.go('/main');
                } else {
                  // 실패 메시지를 스낵바나 다이얼로그로 출력
                  ToastUtil.show(response.message);
                }
              }
            },
            child: ConfirmButton(buttonTitle: AppStrings.sendSignUpButton),
          ),
        ],
      ),
    );
  }
}
