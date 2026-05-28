import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_page_params.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/app_sliver_appbar.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_box_styles.dart';
import '../../../../../core/theme/app_text_styles.dart';

class FindPwPage extends ConsumerWidget {
  const FindPwPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "비밀번호 찾기"),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: AppBoxStyles.borderBox,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "비밀번호를 찾기 위해 본인인증이 필요합니다.",
                              style: context.bodyLarge.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 50),
                            GestureDetector(
                              onTap: () async {
                                final result = await context
                                    .push<NiceIdentityVerificationResult>(
                                  '/nice_identity_verification',
                                  extra: const NiceIdentityVerificationPageParams(
                                    type: NiceIdentityVerificationType.general,
                                    source: NiceVerificationSource.findPw,
                                  ),
                                );
                                if (!context.mounted ||
                                    result == null ||
                                    !result.success ||
                                    result.key == null) {
                                  return;
                                }
                                context.push(
                                  '/find_pw/change_pw',
                                  extra: result.key!,
                                );
                              },
                              child: CustomButton(
                                title: '본인인증',
                                boxColor: AppColors.primary,
                                borderColor: AppColors.primary,
                                textColor: Colors.white,
                                paddingVertical: 6,
                                textStyle: context.body.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
