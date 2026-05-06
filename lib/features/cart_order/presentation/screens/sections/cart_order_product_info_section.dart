import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/providers/delivery_ticker_provider.dart';
import 'package:moding_application/features/cart_order/presentation/providers/cart_order_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/delivery_util.dart';
import '../../../../../core/utils/holiday_util.dart';
import '../../../../../core/utils/string_util.dart';
import '../widgets/cart_order_common_box.dart';

class CartOrderProductInfoSection extends ConsumerWidget {
  const CartOrderProductInfoSection({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartOrderViewModelProvider);
    ref.watch(deliveryTickerProvider);
    final thumbnailCacheSize = (80 * MediaQuery.devicePixelRatioOf(context))
        .round();
    final product = state.cartOrderInfo!.data.products[index];

    final holidays = HolidayUtil.applySubstituteHolidays(
      HolidayUtil.getKoreanHolidays(DateTime.now().year),
    );

    final deliveryInfo = DeliveryUtil.calculateDeliveryInfo(
      shippingLeadTime:
          state.cartOrderInfo!.data.products[index].shippingLeadTime,
      deliveryDays: state.cartOrderInfo!.data.products[index].deliveryDays,
      weekendDeliveryAvailability:
          state.cartOrderInfo!.data.products[index].isWeekendShipping,
      isSameDayShipping:
          state.cartOrderInfo!.data.products[index].isSameDayShipping,
      shippingCutoffTime:
          state.cartOrderInfo!.data.products[index].shippingCutoffTime,
      holidays: holidays,
    );

    return CartOrderCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            deliveryInfo.title,
            style: context.titleMedium.copyWith(color: AppColors.primary),
          ),
          const SizedBox(height: 2),
          if (deliveryInfo.remain.isNotEmpty) ...[
            Row(
              children: [
                Text("출고 마감까지 ", style: context.body),
                Text(
                  deliveryInfo.remain,
                  style: context.body.copyWith(
                    color: AppColors.pointColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],

          Divider(height: 20),
          Column(
            children: product.items.map((item) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          product.thumbnailImageUrl,
                          fit: BoxFit.cover,
                          width: 80,
                          height: 80,
                          cacheWidth: thumbnailCacheSize,
                          cacheHeight: thumbnailCacheSize,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 80,
                              height: 80,
                              color: Colors.grey[200],
                              child: const Center(
                                child: Icon(Icons.broken_image),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.productName,
                              style: context.body,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(height: 4),

                            /// ✅ item 기준으로 표시
                            Text(
                              "${item.optionName} · ${item.quantity}개",
                              style: context.bodySmall.copyWith(
                                color: AppColors.darkGrey,
                              ),
                            ),

                            const Spacer(),

                            Text(
                              "배송비 ${StringUtil.formatCurrency(product.deliveryFee)}원",
                              style: context.bodySmall.copyWith(
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
