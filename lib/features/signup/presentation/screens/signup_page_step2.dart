import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/business_certification_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/business_info_result_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/business_type_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/certification_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/insert_address_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/insert_email_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/terms_agree_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/upload_business_license_section.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/presentation/widgets/appbar_profile.dart';

class SignupPageStep2 extends ConsumerWidget {
  const SignupPageStep2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStep2ViewModelProvider);
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBarProfile(title: AppStrings.titleSignupStep2),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            spacing: 14,
            children: [
              SizedBox(height: 20),
              BusinessTypeSection(),
              CertificationSection(),
              BusinessCertificationSection(),
              BusinessInfoResultSection(),
              InsertAddressSection(),
              UploadBusinessLicenseSection(),
              InsertEmailSection(),
              TermsAgreeSection(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
