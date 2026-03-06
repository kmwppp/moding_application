import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_state.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/presentation/widgets/confirm_button.dart';
import '../../../../../../core/presentation/widgets/input_widget.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../core/utils/phone_number_formatter.dart';
import '../signup_step2_box.dart';

class CertificationSection extends ConsumerWidget {
  const CertificationSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStep2ViewModelProvider);
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);
    return SignupStep2Box(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.ownerIdVerificationTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          if (!state.certifiSuccess)
            Column(
              children: [
                SizedBox(height: 14),
                _inputAndButton(
                  context: context,
                  state: state,
                  type: 1,
                  inputTitle: AppStrings.ownerPhoneNumberTitle,
                  inputHint: AppStrings.phoneNumberHint,
                  titleTextStyle: context.body,
                  inputType: TextInputType.phone,
                  inputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    // 숫자만 입력받게 강제
                    PhoneNumberFormatter(),
                  ],
                  onChanged: (String value) {
                    notifier.changePhoneNum(value);
                  },
                  onTap: () {
                    notifier.clickedSendSMS();
                  },
                  confirmText: AppStrings.request,
                ),
                SizedBox(height: 10),
                if (state.phoneNumSuccess)
                  _inputAndButton(
                    context: context,
                    state: state,
                    type: 2,
                    inputTitle: "",
                    inputHint: AppStrings.pleaseVerificationCode,
                    titleTextStyle: context.body,
                    inputType: TextInputType.phone,
                    inputFormatter: [],
                    onChanged: (String value) {
                      notifier.changeCertifiNum(value);
                    },
                    onTap: () {
                      notifier.clickedCertifiBtn();
                    },
                    confirmText: AppStrings.confirm,
                  ),
              ],
            ),

          if (state.certifiSuccess)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ConfirmButton(buttonTitle: AppStrings.successVerification),
            ),
          Text(
            AppStrings.needVerificationPhoneNumber,
            style: context.caption.copyWith(color: AppColors.hintTextColor),
          ),
        ],
      ),
    );
  }

  Row _inputAndButton({
    required BuildContext context,
    required SignupStep2State state,
    required int type, // type 1: 전화번호 / type 2: 인증번호
    required String inputTitle,
    required String inputHint,
    required TextStyle titleTextStyle,
    required TextInputType inputType,
    required List<TextInputFormatter> inputFormatter,
    required VoidCallback onTap,
    required ValueChanged<String> onChanged,
    required String confirmText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 10,
      children: [
        Expanded(
          child: InputWidget(
            inputTitle: inputTitle,
            inputHint: inputHint,
            titleTextStyle: titleTextStyle,
            inputType: inputType,
            inputFormatter: inputFormatter,
            onChanged: onChanged,
          ),
        ),
        SizedBox(
          width: 60,
          child: GestureDetector(
            onTap: onTap,
            child: ConfirmButton(
              buttonTitle: confirmText,
              backgroudColor: type == 1
                  ? (state.phoneNumValid
                        ? AppColors.primary
                        : AppColors.darkGrey)
                  : (state.certifiNumValid
                        ? AppColors.primary
                        : AppColors.darkGrey),
            ),
          ),
        ),
      ],
    );
  }
}
