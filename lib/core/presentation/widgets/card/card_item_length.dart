import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/utils/string_util.dart';

import '../../../theme/app_text_styles.dart';
import '../styles/card_style.dart';

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
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Stack(
              children: [
                _imageBox(cardWidth),
                if (isHaccpCertified)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Image.asset(
                      "assets/images/icons/haccp_icon.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: (cardWidth + 30) * 0.3,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: gradientList,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 6,
                  left: 4,
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 4,
                        runSpacing: 4,
                        children: tags
                            .take(3)
                            .map(
                              (tag) => _buildTagItem(
                                context,
                                tag,
                                cardWidth,
                                textColor,
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
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
                  if (lowestSellingPrice != null) ...[
                    if (_hasDiscount) ...[
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '${StringUtil.formatCurrency(lowestDiscountRate)}%',
                              style: context.bodySmall.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.pointColor,
                              ),
                            ),
                            const TextSpan(text: '  '),
                            TextSpan(
                              text: '${StringUtil.formatCurrency(lowestPrice)}원',
                              style: context.bodySmall.copyWith(
                                color: textColor,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    const SizedBox(height: 4),
                    Text(
                      '${StringUtil.formatCurrency(_displayPrice)}원',
                      style: context.body.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool get _hasDiscount =>
      (lowestDiscountAmount ?? 0) > 0 &&
      (lowestDiscountRate ?? 0) > 0 &&
      lowestPrice != null;

  int get _displayPrice => lowestSellingPrice ?? lowestPrice ?? 0;

  Widget _imageBox(double width) {
    final encodedUrl = Uri.encodeFull(imageUrl);

    return SizedBox(
      width: double.infinity,
      height: width,
      child: CachedNetworkImage(
        imageUrl: encodedUrl,
        cacheKey: encodedUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) {
          return Container(
            color: Colors.grey[200],
            child: const Center(child: Icon(Icons.broken_image)),
          );
        },
      ),
    );
  }

  Widget _buildTagItem(
    BuildContext context,
    String tag,
    double cardWidth,
    Color textColor,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.26),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.16),
          width: 0.5,
        ),
      ),
      child: Text(
        tag,
        style: context
            .lengthCardContentDynamic(isMain ? cardWidth : cardWidth - 20)
            .copyWith(
              color: textColor == Colors.white ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
