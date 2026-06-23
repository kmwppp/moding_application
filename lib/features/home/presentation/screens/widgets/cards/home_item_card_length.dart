import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:moding_application/core/constants/app_colors.dart';

import '../../../../../../core/presentation/widgets/card/product_card_parts.dart';
import '../../../../../../core/presentation/widgets/styles/card_style.dart';
import '../../../../../../core/theme/app_text_styles.dart';

class HomeItemCardLength extends StatelessWidget {
  final int index;
  final int randomStartIndex;
  final int id;
  final String name;
  final String thumbnailUrl;
  final int viewCount;
  final int reviewCount;
  final bool isHaccpCertified;
  final int? lowestPrice;
  final int? lowestDiscountAmount;
  final int? lowestDiscountRate;
  final int? lowestSellingPrice;
  final bool isLoggedIn;

  const HomeItemCardLength({
    super.key,
    required this.index,
    required this.randomStartIndex,
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.viewCount,
    required this.reviewCount,
    this.isHaccpCertified = false,
    this.lowestPrice,
    this.lowestDiscountAmount,
    this.lowestDiscountRate,
    this.lowestSellingPrice,
    this.isLoggedIn = true,
  });

  static double cardWidthFor(double screenWidth) {
    return math.min((screenWidth / 2) - 50, 145);
  }

  static double estimatedHeightFor(
    double screenWidth, {
    bool isLoggedIn = true,
  }) {
    final cardWidth = cardWidthFor(screenWidth);

    // 비로그인 시 가격 영역이 없으므로 더 낮은 높이 사용
    if (!isLoggedIn) {
      return cardWidth + 90;
    }

    // 정사각형 이미지 + 콘텐츠 + 안전 여백
    return cardWidth + 128;
  }

  Color get _resolvedColor =>
      CardStyle.colorByIndex(index, offset: randomStartIndex);

  @override
  Widget build(BuildContext context) {
    final cardWidth = cardWidthFor(MediaQuery.of(context).size.width);
    final gradientList = CardStyle.gradientFor(_resolvedColor);
    final textColor = CardStyle.textColorFor(_resolvedColor);

    return Container(
      width: cardWidth,
      decoration: BoxDecoration(
        color: _resolvedColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _imageBox(context, cardWidth, gradientList, textColor),
          _content(context, cardWidth, textColor),
        ],
      ),
    );
  }

  Widget _imageBox(
    BuildContext context,
    double width,
    List<Color> gradientList,
    Color textColor,
  ) {
    return ProductCardTopImage(
      imageUrl: thumbnailUrl,
      width: width,
      height: width,
      isHaccpCertified: isHaccpCertified,
      gradientColors: gradientList,
      gradientHeight: width * 0.3,
      overlay: Positioned(
        bottom: 6,
        left: 4,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.22),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.12),
              width: 0.5,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/icons/views.png',
                width: 14,
                color: textColor == Colors.white ? Colors.white : Colors.black,
              ),
              const SizedBox(width: 4),
              Text(
                '$viewCount',
                style: context.caption.copyWith(
                  color: textColor == Colors.white
                      ? Colors.white
                      : Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 4),
              Image.asset(
                'assets/images/icons/review.png',
                width: 14,
                color: textColor == Colors.white ? Colors.white : Colors.black,
              ),
              const SizedBox(width: 4),
              Text(
                '$reviewCount',
                style: context.caption.copyWith(
                  color: textColor == Colors.white
                      ? Colors.white
                      : Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context, double cardWidth, Color textColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: const BoxConstraints(minHeight: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 4),
            Text(
              name,
              style: context
                  .lengthCardTitleDynamic(cardWidth)
                  .copyWith(color: textColor),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (isLoggedIn)
              ProductCardPriceSection(
                textColor: textColor,
                lowestPrice: lowestPrice,
                lowestDiscountAmount: lowestDiscountAmount,
                lowestDiscountRate: lowestDiscountRate,
                lowestSellingPrice: lowestSellingPrice,
                priceStyle: context.body.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
                discountStyle: context.caption.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.pointColor,
                ),
                originalPriceStyle: context.caption.copyWith(
                  color: textColor,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
