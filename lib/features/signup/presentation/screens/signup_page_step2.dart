import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/business_certification_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/business_info_result_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/business_type_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/certification_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/insert_address_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/insert_email_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/select_business_type_list.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/terms_agree_section.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/upload_business_license_section.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/presentation/widgets/appbar_profile.dart';

class SignupPageStep2 extends ConsumerWidget {
  const SignupPageStep2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStep2ViewModelProvider);
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          ref.invalidate(signupStep2ViewModelProvider);
        }
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBarProfile(title: AppStrings.titleSignupStep2),
          body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                spacing: 14,
                children: [
                  const SizedBox(height: 20),
                  // 사업자 유형 선택 섹션
                  BusinessTypeSection(),
                  // 사업자 인증 섹션
                  BusinessCertificationSection(),
                  // 사업자 정보 조회 결과 섹션
                  BusinessInfoResultSection(),
                  // 대표자 본인 인증 섹션
                  CertificationSection(),
                  // 사업자 등록증 업로드 섹션
                  UploadBusinessLicenseSection(),
                  // 주소 입력 섹션
                  InsertAddressSection(),
                  // 업종 선택 섹션
                  SelectBusinessTypeListSection(),
                  // 이메일 입력 섹션
                  InsertEmailSection(),
                  // 약관 동의 섹션
                  TermsAgreeSection(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
