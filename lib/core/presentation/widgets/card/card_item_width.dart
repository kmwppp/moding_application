import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/app_text_styles.dart';
import '../styles/card_style.dart';

class CardItemWidth extends StatelessWidget {
  final int index;
  final int randomStartIndex;
  final int id;
  final String name;
  final String thumbnailUrl;
  final bool isMain;

  const CardItemWidth({
    super.key,
    required this.index,
    required this.randomStartIndex,
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.isMain,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedColor = CardStyle.colorByIndex(
      index,
      offset: randomStartIndex,
    );
    final gradientList = CardStyle.gradientFor(resolvedColor);
    final textColor = CardStyle.textColorFor(resolvedColor);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double plusWidth = isMain ? 50 : 30;
    final double cardWidth = (screenWidth / 3) + plusWidth;

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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageBox(double width) {
    final double imageHeight = width / 2.2;
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
}
