import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/string_util.dart';
import '../../../../order/presentation/screens/widgets/order_common_box.dart';
import '../../providers/cart_order_viewmodel.dart';

class CartOrderPaymentsInfoSection extends ConsumerWidget {
  const CartOrderPaymentsInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartOrderViewModelProvider);

    final cartOrder = state.cartOrderInfo;

    return OrderCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("결제금액", style: context.titleMedium),
          const SizedBox(height: 6),

          /// 금액 영역
          _PriceRow(label: "상품 금액", value: cartOrder?.data.totalProductAmount),
          _PriceRow(label: "배송비", value: cartOrder?.data.totalDeliveryFee),

          _PriceRow(
            label: "제주지역 배송비",
            value: cartOrder?.data.totalJejuDeliveryFee,
          ),
          //
          const Divider(),

          _PriceRow(
            label: "총 결제 금액",
            value: cartOrder?.data.totalAmount,
            isBold: true,
          ),
        ],
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final int? value;
  final bool isBold;

  const _PriceRow({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = isBold
        ? context.body.copyWith(fontWeight: FontWeight.bold)
        : context.body;

    return Row(
      children: [
        Text(label, style: context.body.copyWith(color: AppColors.darkGrey)),
        const Spacer(),
        Text("${StringUtil.formatCurrency(value)}원", style: textStyle),
      ],
    );
  }
}

class _TermRow extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _TermRow({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label, style: context.caption.copyWith(color: AppColors.darkGrey)),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "보기",
            style: context.caption.copyWith(color: AppColors.darkGrey),
          ),
        ),
      ],
    );
  }
}
