import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_strings.dart';
import 'package:moding_application/core/presentation/widgets/appbar_profile.dart';
import 'package:moding_application/core/presentation/widgets/confirm_button.dart';
import 'package:moding_application/core/presentation/widgets/input_widget.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

import '../providers/step1_providers/signup_viewmodel.dart';

class SignupPageStep1 extends ConsumerWidget {
  const SignupPageStep1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupViewModelProvider);
    final notifier = ref.read(signupViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBarProfile(title: AppStrings.titleSignupStep1),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 400,
                  decoration: AppBoxStyles.borderBox,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 14,
                    children: [
                      _inputWidget(
                        context: context,
                        visibleSuccessCaption: state.visibleSuccessCaptionId,
                        visibleWarningCaption: state.visibleWarningCaptionId,
                        inputTitle: AppStrings.id,
                        hint: AppStrings.pleaseInputId,
                        successCaption: AppStrings.availableId,
                        warningCaption: AppStrings.duplicateId,
                        onChanged: (String value) {
                          notifier.changeId(value);
                        },
                      ),

                      _inputWidget(
                        context: context,
                        visibleSuccessCaption: state.visibleSuccessCaptionPw,
                        visibleWarningCaption: state.visibleWarningCaptionPw,
                        inputTitle: AppStrings.pw,
                        hint: AppStrings.pleaseInputPw,
                        successCaption: AppStrings.correctFormatPw,
                        warningCaption: AppStrings.incorrectFormatPw,
                        onChanged: (String value) {
                          notifier.changePw(value);
                        },
                      ),

                      _inputWidget(
                        context: context,
                        visibleSuccessCaption:
                            state.visibleSuccessCaptionConfirmPw,
                        visibleWarningCaption:
                            state.visibleWarningCaptionConfirmPw,
                        inputTitle: AppStrings.confirmPw,
                        hint: AppStrings.pleaseInputConfirmPw,
                        successCaption: AppStrings.matchPw,
                        warningCaption: AppStrings.notMatchPw,
                        onChanged: (String value) {
                          notifier.changeConfirmPw(value);
                        },
                      ),
                      SizedBox(height: 56),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  bool validation = notifier.validationChk();
                  if (validation) {
                    context.push('/signup/step2');
                  }
                  print(validation);
                },
                child: ConfirmButton(buttonTitle: AppStrings.nextBtn),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _inputWidget({
    required BuildContext context,
    required bool visibleSuccessCaption,
    required bool visibleWarningCaption,
    required String inputTitle,
    String caption = "",
    required String hint,
    required String successCaption,
    required String warningCaption,
    required ValueChanged<String> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        InputWidget(
          inputTitle: inputTitle,
          inputHint: hint,
          caption: caption,
          paddingH: 20,
          onChanged: onChanged,
        ),
        if (visibleSuccessCaption)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              successCaption,
              style: context.caption.copyWith(color: Colors.green),
            ),
          ),

        if (visibleWarningCaption)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              warningCaption,
              style: context.caption.copyWith(color: Colors.red),
            ),
          ),
      ],
    );
  }
}
