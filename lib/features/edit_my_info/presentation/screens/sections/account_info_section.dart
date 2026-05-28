import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_viewmodel.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_page_params.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../widgets/edit_my_info_row.dart';

class AccountInfoSection extends ConsumerWidget {
  const AccountInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInfo = ref.watch(editMyInfoViewModelProvider).maskingMyInfo?.data;

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "계정 정보",
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              InkWell(
                onTap: () async {
                  // 나이스 본인인증 먼저
                  final niceResult =
                      await context.push<NiceIdentityVerificationResult>(
                    '/nice_identity_verification',
                    extra: const NiceIdentityVerificationPageParams(
                      type: NiceIdentityVerificationType.accountMatch,
                      source: NiceVerificationSource.editInfo,
                    ),
                  );
                  if (!context.mounted ||
                      niceResult == null ||
                      !niceResult.success) {
                    return;
                  }
                  // 인증 성공 → 계정 정보 변경 페이지로 이동
                  final result = await context.push<bool>(
                    '/change_account_information',
                    extra: niceResult,
                  );
                  if (result == true) {
                    await ref
                        .read(editMyInfoViewModelProvider.notifier)
                        .getMaskingMyInfo();
                  }
                },
                child: TextWithChevron(
                  text: "계정 정보 관리",
                  style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                  iconSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          EditMyInfoRow(title: "아이디", content: myInfo?.loginId ?? '-'),
          SizedBox(height: 2),
          EditMyInfoRow(title: "사업자명", content: myInfo?.name ?? '-'),
          SizedBox(height: 2),
          EditMyInfoRow(title: "전화번호", content: myInfo?.phone ?? '-'),
          SizedBox(height: 2),
          EditMyInfoRow(title: "이메일", content: myInfo?.email ?? '-'),
          SizedBox(height: 10),
          InkWell(
            onTap: () async {
              final niceResult =
                  await context.push<NiceIdentityVerificationResult>(
                '/nice_identity_verification',
                extra: const NiceIdentityVerificationPageParams(
                  type: NiceIdentityVerificationType.accountMatch,
                  source: NiceVerificationSource.editInfo,
                ),
              );
              if (!context.mounted ||
                  niceResult == null ||
                  !niceResult.success ||
                  niceResult.key == null) {
                return;
              }
              context.push('/change_password', extra: niceResult.key!);
            },
            child: CustomButton(
              title: "비밀번호 변경",
              boxColor: AppColors.pointColor,
              textColor: Colors.white,
              borderColor: AppColors.pointColor,
              textStyle: context.bodySmall,
              paddingVertical: 4,
            ),
          ),
        ],
      ),
    );
  }
}
