import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/payment_complete_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../widgets/payment_complete_common_box.dart';

class PriceInfoSection extends ConsumerWidget {
  const PriceInfoSection({super.key, required this.paymentId});

  final int paymentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentCompleteViewModelProvider(paymentId));
    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "총 상품 가격",
                style: context.bodySmall.copyWith(color: AppColors.darkGrey),
              ),
              Spacer(),
              Text(
                "${StringUtil.formatCurrency(state.paymentInfo!.data.totalProductAmount)}원",
                style: context.bodySmall,
              ),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "총 배송비",
                style: context.bodySmall.copyWith(color: AppColors.darkGrey),
              ),
              Spacer(),
              Text(
                "${StringUtil.formatCurrency(state.paymentInfo!.data.totalDeliveryFee)}원",
                style: context.bodySmall,
              ),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "총 제주 지역 배송비",
                style: context.bodySmall.copyWith(color: AppColors.darkGrey),
              ),
              Spacer(),
              Text(
                "${StringUtil.formatCurrency(state.paymentInfo!.data.totalJejuDeliveryFee)}원",
                style: context.bodySmall,
              ),
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "총 결제금액",
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "${StringUtil.formatCurrency(state.paymentInfo!.data.amount)}원",
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
