import 'package:flutter/material.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'dart:math' as math;

import '../../../../../core/presentation/widgets/card/product_card_parts.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    super.key,
    required this.imageUrl,
    required this.title,
    this.isHaccpCertified = false,
  });

  final String imageUrl;
  final String title;
  final bool isHaccpCertified;

  static double cardWidthFor(double screenWidth) =>
      math.min(screenWidth / 3, 130);

  static double estimatedHeightFor(double screenWidth) {
    return cardWidthFor(screenWidth) + 12;
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = cardWidthFor(screenWidth);

    return Container(
      width: cardWidth,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductCardTopImage(
            imageUrl: imageUrl,
            width: cardWidth,
            height: cardWidth,
            isHaccpCertified: isHaccpCertified,
            borderRadius: BorderRadius.circular(10),
            gradientColors: const [
              Colors.transparent,
              Colors.black38,
              Colors.black54,
              Colors.black87,
            ],
            gradientHeight: cardWidth * 0.34,
            overlay: Positioned(
              left: 10,
              right: 10,
              bottom: 10,
              child: Text(
                title,
                style: context.bodySmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
