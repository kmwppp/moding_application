import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_page_params.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewIdentityVerificationSection extends ConsumerWidget {
  const SignupNewIdentityVerificationSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);
    final isVerified =
        state.verifiedName.trim().isNotEmpty &&
        state.verifiedPhone.trim().isNotEmpty;

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('본인인증'),
          const SizedBox(height: 14),
          SignupNewStaticInfoField(
            label: '이름',
            value: state.verifiedName.isEmpty ? '-' : state.verifiedName,
          ),
          const SizedBox(height: 10),
          SignupNewStaticInfoField(
            label: '전화번호',
            value: state.verifiedPhone.isEmpty ? '-' : state.verifiedPhone,
          ),
          const SizedBox(height: 14),
          GestureDetector(
            onTap: isVerified
                ? null
                : () async {
                    final result = await context
                        .push<NiceIdentityVerificationResult>(
                          '/nice_identity_verification',
                          extra: const NiceIdentityVerificationPageParams(
                            type: NiceIdentityVerificationType.general,
                            source: NiceVerificationSource.signup,
                          ),
                        );
                    if (!context.mounted || result == null || !result.success) {
                      return;
                    }
                    ref
                        .read(signupNewViewModelProvider.notifier)
                        .updateVerifiedIdentity(
                          name: result.name ?? '',
                          phone: result.phone ?? '',
                          identityVerificationKey: result.key ?? '',
                        );
                  },
            child: CustomButton(
              title: isVerified ? '인증 완료' : '본인 인증',
              boxColor: isVerified ? AppColors.darkGrey : AppColors.primary,
              borderColor: isVerified ? AppColors.darkGrey : AppColors.primary,
              textColor: Colors.white,
              textStyle: context.bodySmall.copyWith(
                fontWeight: FontWeight.w600,
              ),
              paddingVertical: 8,
            ),
          ),
        ],
      ),
    );
  }
}
