import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/app_text_styles.dart';
import '../../../utils/string_util.dart';
import '../styles/card_style.dart';

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
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: SizedBox(
              width: cardWidth,
              height: imageHeight,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(child: _imageBox(cardWidth, imageHeight)),
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
                    height: cardWidth * 0.14,
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
                ],
              ),
            ),
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

                // if (_hasDiscount)
                //   RichText(
                //     text: TextSpan(
                //       children: [
                //         TextSpan(
                //           text:
                //               '${StringUtil.formatCurrency(lowestDiscountRate)}%',
                //           style: context.caption.copyWith(
                //             fontWeight: FontWeight.bold,
                //             color: AppColors.pointColor,
                //           ),
                //         ),
                //         const TextSpan(text: '  '),
                //         TextSpan(
                //           text: '${StringUtil.formatCurrency(lowestPrice)}원',
                //           style: context.caption.copyWith(
                //             color: textColor,
                //             decoration: TextDecoration.lineThrough,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                if (isLoggedIn && lowestSellingPrice != null)
                  Text(
                    '${StringUtil.formatCurrency(_displayPrice)}원',
                    style: context.bodySmall.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageBox(double width, double imageHeight) {
    final encodedUrl = Uri.encodeFull(thumbnailUrl);

    return SizedBox(
      width: width,
      height: imageHeight,
      child: CachedNetworkImage(
        imageUrl: encodedUrl,
        cacheKey: encodedUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(color: Colors.white),
        ),
        errorWidget: (context, url, error) {
          debugPrint("❌ 이미지 로드 실패");
          debugPrint("URL: $url");
          debugPrint("ERROR: $error");

          return Container(
            color: Colors.grey[200],
            child: const Icon(Icons.error_outline, color: Colors.grey),
          );
        },
      ),
    );
  }

  int get _displayPrice => lowestSellingPrice ?? lowestPrice ?? 0;
}
