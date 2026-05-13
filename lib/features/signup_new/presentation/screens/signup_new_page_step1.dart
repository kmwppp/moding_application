import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_state.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_identity_verification_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_login_info_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_terms_agreement_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';
import 'package:moding_application/features/terms/domain/entities/terms_item_dto.dart';

class SignupNewPageStep1 extends ConsumerWidget {
  final AsyncValue<TermsDto> termsAsync;

  const SignupNewPageStep1({super.key, required this.termsAsync});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
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
    );
  }
}
