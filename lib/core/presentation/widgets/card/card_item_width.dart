import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/app_text_styles.dart';
import '../styles/card_style.dart';
import 'card_item_length.dart';

class CardItemWidth extends StatelessWidget {
  final int index;
  final int randomStartIndex;

  final int id;
  final String name;
  final String thumbnailUrl;
  final bool isMain;

  late final Color mainColor;

  CardItemWidth({
    super.key,
    required this.index,
    required this.randomStartIndex,
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.isMain,
  }) {
    mainColor = CardStyle
        .cardColors[(index + randomStartIndex) % CardStyle.cardColors.length];
  }

  List<Color> get gradientList =>
      gradientMapping[mainColor] ?? [mainColor, mainColor];

  Color get textColor => textColorMapping[mainColor] ?? Colors.black;

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder를 제거하고 직접 너비 계산
    final double screenWidth = MediaQuery.of(context).size.width;
    final double plusWidth = isMain ? 50 : 30;
    final double cardWidth = (screenWidth / 3) + plusWidth;

    return Container(
      // ClipRRect는 Column 밖이나 내부 이미지에만 적용하는 게 안전합니다
      width: cardWidth,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(10), // 여기서 바로 곡률 적용
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // 중요: 자기 크기만큼만!
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지 영역
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Stack(
              children: [
                _imageBox(cardWidth),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: (cardWidth) * 0.14,
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
          // 텍스트 및 태그 영역
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
                // Wrap(
                //   spacing: 4,
                //   runSpacing: 4,
                //   children: tags
                //       .take(3)
                //       .map((tag) => _buildTagItem(context, tag, cardWidth))
                //       .toList(),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageBox(double width) {
    final double imageHeight = width / 2.1;

    // ✅ 1. URL 인코딩 (핵심)
    final encodedUrl = Uri.encodeFull(thumbnailUrl);

    return SizedBox(
      width: width,
      height: imageHeight,
      child: CachedNetworkImage(
        imageUrl: encodedUrl,

        // ✅ 2. 캐시 깨짐 방지 (디버깅용)
        cacheKey: encodedUrl,

        // 👉 imageBuilder 없이도 충분히 동작 (더 안정적)
        fit: BoxFit.cover,

        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(color: Colors.white),
        ),

        // ✅ 3. 에러 로그 출력 (중요)
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

  Widget _buildTagItem(BuildContext context, String tag, double cardWidth) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3), // 투명도를 조금 더 주면 블러가 더 잘 살아요
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 0.5,
            ),
          ),
          child: Text(
            tag,
            style: context
                .widthCardContentDynamic(cardWidth)
                .copyWith(
                  color: textColor == Colors.white
                      ? Colors.white
                      : Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
