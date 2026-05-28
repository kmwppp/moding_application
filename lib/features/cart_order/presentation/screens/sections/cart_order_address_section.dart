import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/cart_order/presentation/providers/cart_order_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../widgets/cart_order_common_box.dart';

class CartOrderAddressSection extends ConsumerWidget {
  const CartOrderAddressSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartOrderViewModelProvider);
    return CartOrderCommonBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("배송지", style: context.titleMedium),
                    Container(
                      width: 2,
                      height: 18,
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      color: AppColors.mediumGrey,
                    ),
                    Text(
                      state.cartOrderInfo?.data.deliveryAddress.name ?? "",
                      style: context.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  "${state.cartOrderInfo?.data.deliveryAddress.address} ${state.cartOrderInfo?.data.deliveryAddress.addressDetail}",
                  style: context.body,
                ),
                const SizedBox(height: 6),
                Text(
                  "${state.cartOrderInfo?.data.deliveryAddress.phone}",
                  style: context.body,
                ),
              ],
            ),
          ),

          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: AppColors.pointColor,
          ),
        ],
      ),
    );
  }
}
