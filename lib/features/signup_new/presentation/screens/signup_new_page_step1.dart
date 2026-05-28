import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/appbar_profile.dart';
import 'package:moding_application/core/presentation/widgets/confirm_button.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_state.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_identity_verification_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_login_info_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_terms_agreement_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';
import 'package:moding_application/features/terms/presentation/providers/terms_provider.dart';

class SignupNewPageStep1 extends ConsumerStatefulWidget {
  const SignupNewPageStep1({super.key});

  @override
  ConsumerState<SignupNewPageStep1> createState() => _SignupNewPageStep1State();
}

class _SignupNewPageStep1State extends ConsumerState<SignupNewPageStep1> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(signupNewViewModelProvider.notifier).reset(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(signupNewViewModelProvider.notifier);
    final termsAsync = ref.watch(termsProvider);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBarProfile(title: '회원가입'),
        bottomNavigationBar: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 6, 10, 12),
            child: GestureDetector(
              onTap: () async {
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
                if (!context.mounted) return;
                context.push('/signup_new/step2');
              },
              child: const ConfirmButton(buttonTitle: '다음'),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(14, 10, 14, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SignupNewStepHeader(step: SignupNewStep.accountInfo),
                const SizedBox(height: 20),
                const SignupNewIdentityVerificationSection(),
                const SizedBox(height: 16),
                const SignupNewLoginInfoSection(),
                const SizedBox(height: 16),
                SignupNewTermsAgreementSection(termsAsync: termsAsync),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
