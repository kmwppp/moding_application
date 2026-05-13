import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_state.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_business_category_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_business_info_form_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_business_license_upload_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_business_registration_lookup_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_tax_invoice_email_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewPageStep2 extends ConsumerWidget {
  const SignupNewPageStep2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SignupNewStepHeader(step: SignupNewStep.businessInfo),
        // SizedBox(height: 20),
        // SignupNewBusinessIntroSection(),
        SizedBox(height: 16),
        SignupNewBusinessRegistrationLookupSection(),
        SizedBox(height: 16),
        SignupNewBusinessInfoFormSection(),
        SizedBox(height: 16),
        SignupNewTaxInvoiceEmailSection(),
        SizedBox(height: 16),
        SignupNewBusinessCategorySection(),
        SizedBox(height: 16),
        SignupNewBusinessLicenseUploadSection(),
      ],
    );
  }
}
