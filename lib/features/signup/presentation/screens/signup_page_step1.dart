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

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          ref.invalidate(signupViewModelProvider);
        }
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          // 1. 키보드가 올라올 때 body 전체가 위로 밀려 올라가는 것을 방지합니다.
          // 이 설정을 하면 하단 버튼이 키보드에 밀려 올라오지 않습니다.
          resizeToAvoidBottomInset: false,
          appBar: AppBarProfile(title: AppStrings.titleSignupStep1),
          body: SafeArea(
            child: Stack(
              // 버튼을 바닥에 고정하기 위해 Stack 사용
              children: [
                Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Text("계정을 만들어볼까요?", style: context.bigTitle),
                            const SizedBox(height: 6),
                            Text("아이디와 비밀번호를 입력해주세요", style: context.caption),
                            const SizedBox(height: 30),

                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              decoration: AppBoxStyles.borderBox,
                              child: Column(
                                children: [
                                  _inputWidget(
                                    context: context,
                                    visibleSuccessCaption:
                                        state.visibleSuccessCaptionId,
                                    visibleWarningCaption:
                                        state.visibleWarningCaptionId,
                                    inputTitle: AppStrings.id,
                                    hint: AppStrings.pleaseInputId,
                                    successCaption: AppStrings.availableId,
                                    warningCaption: AppStrings.duplicateId,
                                    titleTextStyle: context.body,
                                    onChanged: notifier.changeId,
                                  ),
                                  const SizedBox(height: 10),
                                  _inputWidget(
                                    context: context,
                                    visibleSuccessCaption:
                                        state.visibleSuccessCaptionPw,
                                    visibleWarningCaption:
                                        state.visibleWarningCaptionPw,
                                    inputTitle: AppStrings.pw,
                                    hint: AppStrings.pleaseInputPw,
                                    successCaption: AppStrings.correctFormatPw,
                                    warningCaption:
                                        AppStrings.incorrectFormatPw,
                                    titleTextStyle: context.body,
                                    isPw: true,
                                    onChanged: notifier.changePw,
                                  ),
                                  const SizedBox(height: 10),
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
                                    titleTextStyle: context.body,
                                    isPw: true,
                                    onChanged: notifier.changeConfirmPw,
                                  ),
                                ],
                              ),
                            ),

                            // 2. 키보드가 올라왔을 때 스크롤이 충분히 되도록 바닥 여백을 줍니다.
                            // viewInsets.bottom은 키보드 높이입니다.
                            SizedBox(
                              height:
                                  MediaQuery.of(context).viewInsets.bottom +
                                  100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // 3. 버튼을 바닥에 물리적으로 고정 (Stack의 Positioned 활용)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white, // 배경색을 주어 스크롤되는 내용이 겹쳐 보이지 않게 함
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        bool validation = notifier.validationChk();
                        if (validation) {
                          context.push('/signup/step2');
                        }
                      },
                      child: ConfirmButton(buttonTitle: AppStrings.nextBtn),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
    required TextStyle titleTextStyle,
    bool isPw = false,
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
          titleTextStyle: titleTextStyle,
          inputType: TextInputType.emailAddress,
          isPw: isPw,
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
