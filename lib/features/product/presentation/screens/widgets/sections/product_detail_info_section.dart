import 'package:cached_network_image/cached_network_image.dart';
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
                          CachedNetworkImage(
                            imageUrl: Uri.encodeFull(
                              state.productInfo?.foodLabelImageUrl ?? "",
                            ),
                            fit: BoxFit.fitWidth,
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) {
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
          _buildRow(
            context,
            title: '보관 방법',
            content: state.productInfo?.storageMethod!.label ?? "",
          ),
          const SizedBox(height: 6),
          _buildRow(
            context,
            title: '배송 방식',
            content: state.productInfo?.deliveryMethods?.label ?? "",
          ),
          const SizedBox(height: 6),
          _buildRow(context, title: '출고소요일', content: deliveryText.subText),

          const SizedBox(height: 6),
          _buildRow(context, title: '배송 기간', content: deliveryText.title),

          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Row _buildRow(
    BuildContext context, {
    required String title,
    required String content,
  }) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: context.bodySmall.copyWith(color: AppColors.darkGrey),
          ),
        ),
        Expanded(flex: 6, child: Text(content, style: context.bodySmall)),
      ],
    );
  }
}
