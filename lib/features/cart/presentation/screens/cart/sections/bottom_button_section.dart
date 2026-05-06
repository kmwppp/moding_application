import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:moding_application/features/cart/domain/cart_pricing.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';

import '../../../../../../core/theme/app_text_styles.dart';
import '../widgets/cart_common_box.dart';

final _currency = NumberFormat('#,###', 'ko_KR');

class CartPriceSection extends ConsumerWidget {
  const CartPriceSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartViewModelProvider);
    final items = state.cartData?.data ?? [];

    final productSum = CartPricing.sumProductAmount(items);
    final shippingSum = CartPricing.sumShipping(items);
    final grand = productSum + shippingSum;

    return CartCommonBox(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '총 상품 금액',
                  style: context.body.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '${_currency.format(productSum)}원',
                style: context.body.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '총 배송비',
                  style: context.body.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '${_currency.format(shippingSum)}원',
                style: context.body.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                child: Text(
                  '총 결제 예상 금액',
                  style: context.bodyLarge.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '${_currency.format(grand)}원',
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
