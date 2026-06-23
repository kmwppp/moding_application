import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/app_text_styles.dart';

enum ProductCardPlaceholderType { spinner, shimmer }

class ProductCardTopImage extends StatelessWidget {
  const ProductCardTopImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.isHaccpCertified = false,
    this.borderRadius = const BorderRadius.vertical(top: Radius.circular(10)),
    this.gradientColors,
    this.gradientHeight,
    this.overlay,
    this.placeholderType = ProductCardPlaceholderType.spinner,
  });

  final String imageUrl;
  final double width;
  final double height;
  final bool isHaccpCertified;
  final BorderRadius borderRadius;
  final List<Color>? gradientColors;
  final double? gradientHeight;
  final Widget? overlay;
  final ProductCardPlaceholderType placeholderType;

  @override
  Widget build(BuildContext context) {
    final encodedUrl = Uri.encodeFull(imageUrl);

    return ClipRRect(
      borderRadius: borderRadius,
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: encodedUrl,
              cacheKey: encodedUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => _buildPlaceholder(),
              errorWidget: (context, url, error) => Container(
                color: Colors.grey[200],
                child: const Center(
                  child: Icon(Icons.broken_image, color: Colors.grey),
                ),
              ),
            ),
            if (isHaccpCertified)
              Positioned(
                top: 8,
                right: 8,
                child: Image.asset(
                  'assets/images/icons/haccp_icon.png',
                  width: 30,
                  height: 30,
                ),
              ),
            if (gradientColors != null && gradientHeight != null)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: gradientHeight!,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: gradientColors!,
                    ),
                  ),
                ),
              ),
            ...switch (overlay) {
              final Widget widget => [widget],
              null => const <Widget>[],
            },
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    switch (placeholderType) {
      case ProductCardPlaceholderType.shimmer:
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(color: Colors.white),
        );
      case ProductCardPlaceholderType.spinner:
        return const Center(child: CircularProgressIndicator());
    }
  }
}

class ProductCardPriceSection extends StatelessWidget {
  const ProductCardPriceSection({
    super.key,
    required this.textColor,
    required this.lowestPrice,
    required this.lowestDiscountAmount,
    required this.lowestDiscountRate,
    required this.lowestSellingPrice,
    this.priceStyle,
    this.discountStyle,
    this.originalPriceStyle,
    this.topSpacing = 8,
    this.bottomSpacing = 4,
  });

  final Color textColor;
  final int? lowestPrice;
  final int? lowestDiscountAmount;
  final int? lowestDiscountRate;
  final int? lowestSellingPrice;
  final TextStyle? priceStyle;
  final TextStyle? discountStyle;
  final TextStyle? originalPriceStyle;
  final double topSpacing;
  final double bottomSpacing;

  bool get _hasDiscount =>
      (lowestDiscountAmount ?? 0) > 0 &&
      (lowestDiscountRate ?? 0) > 0 &&
      lowestPrice != null;

  int get _displayPrice => lowestSellingPrice ?? lowestPrice ?? 0;

  @override
  Widget build(BuildContext context) {
    if (lowestSellingPrice == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_hasDiscount) ...[
          SizedBox(height: topSpacing),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${StringUtil.formatCurrency(lowestDiscountRate)}%',
                  style:
                      discountStyle ??
                      context.bodySmall.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.pointColor,
                      ),
                ),
                const TextSpan(text: '  '),
                TextSpan(
                  text: '${StringUtil.formatCurrency(lowestPrice)}원',
                  style:
                      originalPriceStyle ??
                      context.bodySmall.copyWith(
                        color: textColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(height: bottomSpacing),
        ],
        Text(
          '${StringUtil.formatCurrency(_displayPrice)}원',
          style:
              priceStyle ??
              context.body.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

class ProductCardTagChip extends StatelessWidget {
  const ProductCardTagChip({super.key, required this.tag, required this.style});

  final String tag;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
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
      child: Text(tag, style: style),
    );
  }
}
