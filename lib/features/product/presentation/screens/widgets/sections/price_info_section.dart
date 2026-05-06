import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/providers/delivery_ticker_provider.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/presentation/widgets/app_tooltip.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../core/utils/delivery_util.dart';
import '../../../../../../core/utils/holiday_util.dart';
import '../../../../../../core/utils/string_util.dart';

final List<Color> tagColors = [
  AppColors.cardColor1,
  AppColors.cardColor2,
  AppColors.cardColor3,
  AppColors.cardColor4,
  AppColors.cardColor5,
];

final tags = ["냉장식품", "택배배송", "D-2배송"];

class PriceInfoSection extends ConsumerWidget {
  const PriceInfoSection({
    super.key,
    required this.reviewSectionKey,
    required this.productId,
  });

  final GlobalKey reviewSectionKey;
  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double cardWidth = MediaQuery.of(context).size.width / 2;

    final state = ref.watch(productViewModelProvider(productId));
    final notifier = ref.read(productViewModelProvider(productId).notifier);
    ref.watch(deliveryTickerProvider);

    final holidays = HolidayUtil.applySubstituteHolidays(
      HolidayUtil.getKoreanHolidays(DateTime.now().year),
    );
    final info = DeliveryUtil.calculateDeliveryInfo(
      shippingLeadTime: state.productInfo?.shippingLeadTime ?? 0,
      deliveryDays: state.productInfo?.deliveryDays ?? 0,
      weekendDeliveryAvailability:
          state.productInfo?.isWeekendShipping ?? false,
      isSameDayShipping: state.productInfo?.isSameDayShipping ?? false,
      shippingCutoffTime: state.productInfo?.shippingCutoffTime ?? "12:00",
      holidays: holidays,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            state.productInfo?.name ?? "",
            style: context.title.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),

          Text(
            state.productInfo?.description ?? "",
            style: context.bodySmall.copyWith(color: AppColors.darkGrey),
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 4,
            runSpacing: 4,
            children: List.generate(
              state.productInfo?.tags?.length ?? 0,
              (index) => _buildTag(
                context,
                state.productInfo?.tags?[index] ?? "",
                cardWidth,
                tagColors[index % tagColors.length],
              ),
            ),
          ),
          const SizedBox(height: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state.productInfo?.options?[0].discountRate != null)
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text:
                            "${StringUtil.formatCurrency(state.productInfo?.options?[0].discountRate ?? 0)}%",
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.pointColor,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                "${StringUtil.formatCurrency(state.productInfo?.options?[0].price ?? 0)}원",
                            style: context.bodyLarge.copyWith(
                              decoration: TextDecoration.lineThrough,
                              color: AppColors.darkGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    AppTooltip(
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("판매자가 설정한 기본 판매가입니다.", style: context.bodySmall),
                          const SizedBox(height: 10),
                          Text(
                            "* 할인율은 배송비를 제외한 상품 가격을 기준으로 적용됩니다.",
                            style: context.bodySmall.copyWith(
                              color: AppColors.pointColor,
                            ),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.help_outline,
                        size: 16,
                        color: AppColors.pointColor,
                      ),
                    ),
                  ],
                ),

              Text(
                "${StringUtil.formatCurrency(state.productInfo?.options?[0].sellingPrice ?? 0)}원",
                style: context.title.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          GestureDetector(
            onTap: () {
              notifier.toggleShippingCostInfo();
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "배송비 정보",
                  style: context.bodySmall.copyWith(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 2),
                Icon(
                  state.showShippingCostInfo
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 14,
                  color: AppColors.darkGrey,
                ),
              ],
            ),
          ),
          if (state.showShippingCostInfo)
            _shippingCostInfo(
              context: context,
              shippingPrice: StringUtil.formatCurrency(
                state.productInfo?.shippingFee ?? 0,
              ),
              freePrice: StringUtil.formatCurrency(
                state.productInfo?.freeShippingThreshold ?? 0,
              ),
              cardWidth: cardWidth,
              isExtraUnavailable:
                  state.productInfo?.isRemoteAreaUnavailable ?? false,
              extraFee:
                  "${StringUtil.formatCurrency(state.productInfo?.remoteAreaShippingFee ?? 0)}원",
              isJejuUnavailable: state.productInfo?.isJejuUnavailable ?? false,
              jejuFee:
                  "${StringUtil.formatCurrency(state.productInfo?.jejuShippingFee ?? 0)}원",
            ),
          const SizedBox(height: 14),
          GestureDetector(
            onTap: () {
              final context = reviewSectionKey.currentContext;
              if (context != null) {
                // 현재 뷰포트에서의 위치를 계산하여 스크롤 이동
                Scrollable.ensureVisible(
                  context,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeInOut,
                );
              }
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "리뷰",
                    style: context.bodyLarge.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Text(
                    "총 ${StringUtil.formatCurrency(state.productInfo?.reviewCount ?? 0)}개",
                    style: context.bodyLarge.copyWith(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 14,
                    color: AppColors.darkGrey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  "배송일정",
                  style: context.bodyLarge.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(info.title, style: context.bodyLarge.copyWith()),
                    if (info.subText.isNotEmpty)
                      RichText(
                        text: TextSpan(
                          text: '${info.subText} ',
                          style: context.bodyLarge.copyWith(),
                          children: <TextSpan>[
                            TextSpan(
                              text: '(${info.remain} 내 주문 시)',
                              style: context.bodyLarge.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.pointColor,
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
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildTag(
    BuildContext context,
    String tag,
    double cardWidth,
    Color tagColor,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: tagColor.withValues(alpha: 0.75),
      ),
      child: Text(
        tag,
        style: context.bodySmall.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _shippingCostInfo({
    required BuildContext context,
    required String shippingPrice,
    required String freePrice,
    required double cardWidth,
    required bool isExtraUnavailable,
    required String extraFee,
    required bool isJejuUnavailable,
    required String jejuFee,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 6),
        Row(
          children: [
            Text(
              "배송비",
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
            const SizedBox(width: 6),
            Text(
              "$shippingPrice원",
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "도서/산간 지역 배송비",
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
            const SizedBox(width: 6),
            Text(
              "$extraFee원 추가",
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "제주 지역 배송비",
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
            const SizedBox(width: 6),
            Text(
              "$jejuFee원 추가",
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            Text(
              "$freePrice원",
              style: context.bodySmall.copyWith(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              "이상 결제 시 무료배송",
              style: context.bodySmall.copyWith(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
