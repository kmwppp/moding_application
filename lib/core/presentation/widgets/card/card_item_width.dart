import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../theme/app_text_styles.dart';
import '../styles/card_style.dart';
import 'product_card_parts.dart';

class CardItemWidth extends StatelessWidget {
  final int index;
  final int randomStartIndex;
  final int id;
  final String name;
  final String thumbnailUrl;
  final bool isMain;
  final bool isHaccpCertified;
  final int? lowestPrice;
  final int? lowestDiscountAmount;
  final int? lowestDiscountRate;
  final int? lowestSellingPrice;
  final double imageAspectRatio;
  final bool isLoggedIn;

  const CardItemWidth({
    super.key,
    required this.index,
    required this.randomStartIndex,
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.isMain,
    this.isHaccpCertified = false,
    this.lowestPrice,
    this.lowestDiscountAmount,
    this.lowestDiscountRate,
    this.lowestSellingPrice,
    this.imageAspectRatio = 2.2,
    this.isLoggedIn = true,
  });

  static double cardWidthFor(double screenWidth, {required bool isMain}) {
    final plusWidth = isMain ? 50.0 : 30.0;
    final calculatedWidth = (screenWidth / 3) + plusWidth;
    final maxWidth = isMain ? 180.0 : 160.0;
    return math.min(calculatedWidth, maxWidth);
  }

  static double estimatedHeightFor(
    double screenWidth, {
    required bool isMain,
    double imageAspectRatio = 2.6,
  }) {
    final cardWidth = cardWidthFor(screenWidth, isMain: isMain);
    final imageHeight = cardWidth / imageAspectRatio;

    return imageHeight + 92;
  }

  @override
  Widget build(BuildContext context) {
    final resolvedColor = CardStyle.colorByIndex(
      index,
      offset: randomStartIndex,
    );
    final gradientList = CardStyle.gradientFor(resolvedColor);
    final textColor = CardStyle.textColorFor(resolvedColor);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = cardWidthFor(screenWidth, isMain: isMain);
    final double imageHeight = cardWidth / imageAspectRatio;

    return Container(
      width: cardWidth,
      decoration: BoxDecoration(
        color: resolvedColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductCardTopImage(
            imageUrl: thumbnailUrl,
            width: cardWidth,
            height: imageHeight,
            isHaccpCertified: isHaccpCertified,
            gradientColors: gradientList,
            gradientHeight: cardWidth * 0.14,
            placeholderType: ProductCardPlaceholderType.shimmer,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name,
                  style: context
                      .widthCardTitleDynamic(cardWidth)
                      .copyWith(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                if (isLoggedIn)
                  ProductCardPriceSection(
                    textColor: textColor,
                    lowestPrice: lowestPrice,
                    lowestDiscountAmount: lowestDiscountAmount,
                    lowestDiscountRate: lowestDiscountRate,
                    lowestSellingPrice: lowestSellingPrice,
                    priceStyle: context.bodySmall.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                    topSpacing: 0,
                    bottomSpacing: 0,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
