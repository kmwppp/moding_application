import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/appbar_profile.dart';
import 'package:moding_application/core/presentation/widgets/confirm_button.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_state.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/signup_new_page_step1.dart';
import 'package:moding_application/features/signup_new/presentation/screens/signup_new_page_step2.dart';
import 'package:moding_application/features/terms/presentation/providers/terms_provider.dart';

class SignupNewPage extends ConsumerWidget {
  const SignupNewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);
    final notifier = ref.read(signupNewViewModelProvider.notifier);
    final termsAsync = ref.watch(termsProvider);

    return PopScope(
      canPop: state.step == SignupNewStep.accountInfo,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && state.step == SignupNewStep.businessInfo) {
          notifier.goToAccountStep();
        }
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBarProfile(title: "회원가입"),
          bottomNavigationBar: SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 6, 10, 12),
              child: GestureDetector(
                onTap: () async {
                  if (state.step == SignupNewStep.accountInfo) {
                    final message = notifier.validateStep1();
                    if (message != null) {
                      await CommonDialog.show(
                        context,
                        title: '안내',
                        message: message,
                      );
                      return;
                    }
                    notifier.goToBusinessStep();
                    return;
                  }

                  final message = notifier.validateStep2();
                  if (message != null) {
                    await CommonDialog.show(
                      context,
                      title: '안내',
                      message: message,
                    );
                    return;
                  }

                  await CommonDialog.show(
                    context,
                    title: '안내',
                    message: '회원가입 API는 추후 연결 예정입니다.',
                  );
                },
                child: ConfirmButton(
                  buttonTitle: state.step == SignupNewStep.accountInfo
                      ? '다음'
                      : '회원가입 완료',
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(14, 10, 14, 100),
              child: state.step == SignupNewStep.accountInfo
                  ? SignupNewPageStep1(termsAsync: termsAsync)
                  : const SignupNewPageStep2(),
            ),
          ),
        ),
      ),
    );
  }
}
