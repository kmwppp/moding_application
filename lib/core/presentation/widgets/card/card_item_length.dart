import 'package:flutter/material.dart';
import '../../../theme/app_text_styles.dart';
import '../styles/card_style.dart';
import 'product_card_parts.dart';

class CardItemLength extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isMain;
  final Color mainColor;
  final List<String> tags;
  final int colorSelectionSeed;
  final bool isHaccpCertified;
  final int? lowestPrice;
  final int? lowestDiscountAmount;
  final int? lowestDiscountRate;
  final int? lowestSellingPrice;

  const CardItemLength({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.isMain,
    required this.mainColor,
    required this.tags,
    this.colorSelectionSeed = 0,
    this.isHaccpCertified = false,
    this.lowestPrice,
    this.lowestDiscountAmount,
    this.lowestDiscountRate,
    this.lowestSellingPrice,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedColor = mainColor;
    final gradientList = CardStyle.gradientFor(resolvedColor);
    final textColor = CardStyle.textColorFor(resolvedColor);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double minusWidth = isMain ? 50 : 0;
    final double cardWidth = (screenWidth / 2) - minusWidth;

    return Container(
      width: cardWidth,
      decoration: BoxDecoration(
        color: resolvedColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductCardTopImage(
            imageUrl: imageUrl,
            width: cardWidth,
            height: cardWidth,
            isHaccpCertified: isHaccpCertified,
            gradientColors: gradientList,
            gradientHeight: (cardWidth + 30) * 0.3,
            overlay: Positioned(
              bottom: 6,
              left: 4,
              child: Wrap(
                spacing: 4,
                runSpacing: 4,
                children: tags
                    .take(3)
                    .map(
                      (tag) => ProductCardTagChip(
                        tag: tag,
                        style: context
                            .lengthCardContentDynamic(
                              isMain ? cardWidth : cardWidth - 20,
                            )
                            .copyWith(
                              color: textColor == Colors.white
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              constraints: BoxConstraints(minHeight: isMain ? 60 : 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    title,
                    style: context.body.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  ProductCardPriceSection(
                    textColor: textColor,
                    lowestPrice: lowestPrice,
                    lowestDiscountAmount: lowestDiscountAmount,
                    lowestDiscountRate: lowestDiscountRate,
                    lowestSellingPrice: lowestSellingPrice,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
