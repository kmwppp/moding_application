import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../identity_verification/domain/entities/identity_verification_page_params.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../../providers/edit_my_info_viewmodel.dart';
import '../widgets/edit_my_info_row.dart';

class RefundAccountInfoSection extends ConsumerWidget {
  const RefundAccountInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(editMyInfoViewModelProvider);
    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "환불 계좌 관리",
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  context.push(
                    '/identity_verification',
                    extra: const IdentityVerificationPageParams(
                      successRoute: '/account_management',
                    ),
                  );
                },
                child: TextWithChevron(
                  text: "계좌 관리",
                  style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                  iconSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          EditMyInfoRow(
            title: state.maskingMyInfo?.data.refundAccount?.bankName ?? "-",
            content:
                state.maskingMyInfo?.data.refundAccount?.accountNumber ?? "-",
          ),
        ],
      ),
    );
  }
}
