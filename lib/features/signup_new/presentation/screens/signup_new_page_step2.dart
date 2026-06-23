import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/providers/app_viewmodel_reset.dart';
import 'package:moding_application/core/presentation/widgets/appbar_profile.dart';
import 'package:moding_application/core/presentation/widgets/confirm_button.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/profile/presentation/providers/profile_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_state.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_business_category_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_business_info_form_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_business_license_upload_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/sections/signup_new_tax_invoice_email_section.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

import '../../../../core/constants/app_colors.dart';

class SignupNewPageStep2 extends ConsumerWidget {
  const SignupNewPageStep2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);
    final notifier = ref.read(signupNewViewModelProvider.notifier);

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
                final message = notifier.validateStep2();
                if (message != null) {
                  await CommonDialog.show(
                    context,
                    title: '안내',
                    message: message,
                  );
                  return;
                }

                final response = await notifier.submitSignUp();
                if (!context.mounted) return;

                if (response.success) {
                  final loginSuccess = await notifier.loginAfterSignUp();
                  if (!context.mounted) return;

                  if (!loginSuccess) {
                    await CommonDialog.show(
                      context,
                      title: '안내',
                      isSuccess: false,
                      message: '회원가입은 완료되었지만 자동 로그인에 실패했습니다.',
                    );
                    return;
                  }

                  await CommonDialog.show(
                    context,
                    title: '완료',
                    message: response.message.isNotEmpty
                        ? response.message
                        : '회원가입이 완료되었습니다.',
                  );
                  if (!context.mounted) return;
                  resetAppViewModels(ref);
                  await ref
                      .read(profileViewModelProvider.notifier)
                      .getProfileSummary();
                  if (!context.mounted) return;
                  notifier.reset();
                  context.go('/main', extra: true);
                  return;
                }

                await CommonDialog.show(
                  context,
                  title: '안내',
                  isSuccess: false,
                  message: response.message.isNotEmpty
                      ? response.message
                      : '회원가입에 실패했습니다.',
                );
                if (!context.mounted) return;

                if (response.statusCode == 404 || response.statusCode == 409) {
                  notifier.reset();
                  context.go('/login');
                }
              },
              child: const ConfirmButton(buttonTitle: '회원가입 완료'),
            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(14, 10, 14, 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SignupNewStepHeader(step: SignupNewStep.businessInfo),
                    const SizedBox(height: 16),
                    // SignupNewBusinessRegistrationLookupSection(),
                    // SizedBox(height: 16),
                    const SignupNewBusinessInfoFormSection(),
                    const SizedBox(height: 16),
                    const SignupNewTaxInvoiceEmailSection(),
                    const SizedBox(height: 16),
                    const SignupNewBusinessCategorySection(),
                    const SizedBox(height: 16),
                    const SignupNewBusinessLicenseUploadSection(),
                    const SizedBox(height: 16),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SignupNewCheckboxRow(
                          value: state.isAlcoholBuyer,
                          title: '주류 구매자격 신청',
                          onTap: () {
                            notifier.updateIsAlcoholBuyer(
                              !state.isAlcoholBuyer,
                            );
                          },
                        ),
                        SizedBox(height: 4),
                        Text(
                          "주류 상품 구매는 별도 신청 및 승인 후 가능하며, 승인까지 영업일 기준 1~2일이 소요될 수 있습니다.",
                          style: context.caption.copyWith(
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (state.isLoading)
                Positioned.fill(
                  child: ColoredBox(
                    color: Colors.white70,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
