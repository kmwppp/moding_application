import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/providers/delivery_ticker_provider.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/utils/delivery_util.dart';
import 'package:moding_application/core/utils/holiday_util.dart';
import 'package:moding_application/features/product/domain/enums/storage_method.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/presentation/widgets/modal/app_bottom_sheet.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../domain/enums/delivery_method.dart';

class ProductDetailInfoSection extends ConsumerWidget {
  const ProductDetailInfoSection({
    super.key,
    required this.cardWidth,
    required this.productId,
  });

  final double cardWidth;
  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productViewModelProvider(productId));
    ref.watch(deliveryTickerProvider);
    final holidays = HolidayUtil.applySubstituteHolidays(
      HolidayUtil.getKoreanHolidays(DateTime.now().year),
    );

    final deliveryText = DeliveryUtil.calculateDeliveryInfo(
      shippingLeadTime: state.productInfo?.shippingLeadTime ?? 0,
      deliveryDays: state.productInfo?.deliveryDays ?? 0,
      weekendDeliveryAvailability:
          state.productInfo?.isWeekendShipping ?? false,
      isSameDayShipping: state.productInfo?.isSameDayShipping ?? false,
      shippingCutoffTime: state.productInfo?.shippingCutoffTime ?? "12:00",
      holidays: holidays,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "상품 정보",
                style: context.titleMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  AppBottomSheet.show(
                    context: context,
                    title: "상품 필수 정보",
                    child: SafeArea(
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Image.network(
                            state.productInfo?.foodLabelImageUrl ?? "",
                            fit: BoxFit.fitWidth,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey[200],
                                child: const Center(
                                  child: Icon(Icons.broken_image),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: CustomButton(
                                title: "확인",
                                boxColor: AppColors.primary,
                                paddingVertical: 6,
                                textColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "상품필수정보",
                    style: context.bodySmall.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "보관 방법",
                  style: context.body.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  state.productInfo?.storageMethod!.label ?? "",
                  style: context.body,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "배송 방식",
                  style: context.body.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  state.productInfo?.deliveryMethods?.label ?? "",
                  style: context.body,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "출고소요일",
                  style: context.body.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(deliveryText.subText, style: context.body),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "배송 기간",
                  style: context.body.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(deliveryText.title, style: context.body),
              ),
            ],
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
