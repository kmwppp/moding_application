import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/providers/delivery_ticker_provider.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/delivery_util.dart';
import '../../../../../core/utils/holiday_util.dart';
import '../widgets/order_common_box.dart';

class OrderProductInfoSection extends ConsumerWidget {
  const OrderProductInfoSection({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderViewModelProvider);
    ref.watch(deliveryTickerProvider);
    final thumbnailCacheSize = (80 * MediaQuery.devicePixelRatioOf(context))
        .round();

    final holidays = HolidayUtil.applySubstituteHolidays(
      HolidayUtil.getKoreanHolidays(DateTime.now().year),
    );

    final deliveryInfo = DeliveryUtil.calculateDeliveryInfo(
      shippingLeadTime: state.orderInfo!.shippingLeadTime,
      deliveryDays: state.orderInfo!.deliveryDays,
      weekendDeliveryAvailability: state.orderInfo!.isWeekendShipping,
      isSameDayShipping: state.orderInfo!.isSameDayShipping,
      shippingCutoffTime: state.orderInfo!.shippingCutoffTime,
      holidays: holidays,
    );

    return OrderCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            deliveryInfo.title,
            style: context.titleMedium.copyWith(color: AppColors.primary),
          ),
          const SizedBox(height: 6),
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
          Divider(height: 26),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        state.orderInfo?.thumbnailImageUrl ?? "",
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
                            state.orderInfo?.productName ?? "",
                            style: context.bodyLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),

                          const SizedBox(height: 2),

                          Text(
                            "${state.orderInfo?.items[index].optionName} · ${state.orderInfo?.items[index].quantity}개",
                            style: context.bodySmall.copyWith(
                              color: AppColors.darkGrey,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "배송비 ${StringUtil.formatCurrency(state.orderInfo?.deliveryFee)}원",
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
            ],
          ),
        ],
      ),
    );
  }
}
