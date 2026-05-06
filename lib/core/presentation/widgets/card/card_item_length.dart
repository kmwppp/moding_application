import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../theme/app_text_styles.dart';

final Map<Color, List<Color>> gradientMapping = {
  AppColors.cardColor1: [Colors.transparent, AppColors.cardColor1],
  AppColors.cardColor2: [Colors.transparent, AppColors.cardColor2],
  AppColors.cardColor3: [Colors.transparent, AppColors.cardColor3],
  AppColors.cardColor4: [Colors.transparent, AppColors.cardColor4],
  AppColors.cardColor5: [Colors.transparent, AppColors.cardColor5],
  AppColors.cardColor6: [Colors.transparent, AppColors.cardColor6],
  AppColors.cardColor7: [Colors.transparent, AppColors.cardColor7],
  AppColors.cardColor8: [Colors.transparent, AppColors.cardColor8],
  AppColors.cardColor7_1: [Colors.transparent, AppColors.cardColor7_1],
  AppColors.cardColor8_1: [Colors.transparent, AppColors.cardColor8_1],
  AppColors.cardColor9: [Colors.transparent, AppColors.cardColor9],
  AppColors.cardColor10: [Colors.transparent, AppColors.cardColor10],
  AppColors.cardColor11: [Colors.transparent, AppColors.cardColor11],
  AppColors.cardColor12: [Colors.transparent, AppColors.cardColor12],
};

final Map<Color, Color> textColorMapping = {
  AppColors.cardColor1: Colors.white,
  AppColors.cardColor2: Colors.white,
  AppColors.cardColor3: Colors.white,
  AppColors.cardColor4: Colors.white,
  AppColors.cardColor5: Colors.white,
  AppColors.cardColor6: Colors.white,
  AppColors.cardColor7: Colors.black,
  AppColors.cardColor8: Colors.black,
  AppColors.cardColor7_1: Colors.white,
  AppColors.cardColor8_1: Colors.white,
  AppColors.cardColor9: Colors.white,
  AppColors.cardColor10: Colors.white,
  AppColors.cardColor11: Colors.white,
  AppColors.cardColor12: Colors.white,
};

class CardItemLength extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isMain;
  final Color mainColor;
  final List<String> tags;

  const CardItemLength({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.isMain,
    required this.mainColor,
    required this.tags,
  });

  // mainColor를 기반으로 gradientList 반환
  List<Color> get gradientList =>
      gradientMapping[mainColor] ?? [mainColor, mainColor];

  Color get textColor => textColorMapping[mainColor] ?? Colors.black;

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder를 제거하고 직접 너비 계산
    final double screenWidth = MediaQuery.of(context).size.width;
    final double minusWidth = isMain ? 50 : 0;
    final double cardWidth = (screenWidth / 2) - minusWidth;

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
              ],
            ),
          ),
          // 텍스트 및 태그 영역
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              constraints: BoxConstraints(
                // 제목이 1줄이든 2줄이든, 태그가 있든 없든 최소 90px은 차지하게 함
                minHeight: isMain ? 60 : 0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    title,
                    style: context
                        .lengthCardTitleDynamic(
                          isMain ? cardWidth : cardWidth - 20,
                        )
                        .copyWith(color: textColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (!isMain)
                    Column(
                      children: [
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 4,
                          runSpacing: 4,
                          children: tags
                              .take(3)
                              .map(
                                (tag) => _buildTagItem(context, tag, cardWidth),
                              )
                              .toList(),
                        ),
                      ],
                    )
                  else
                    Column(
                      children: [
                        const SizedBox(height: 6),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4), // 모서리 둥글게
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            // 흐림 정도
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                // 하얀색 반투명 배경 (Opacity로 투명도 조절)
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 0.5,
                                ),
                              ),
                              child: Text(
                                "조회수: 12, 리뷰수: 13",
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
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageBox(double width) {
    return SizedBox(
      width: double.infinity,
      height: width,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return const Center(child: CircularProgressIndicator());
        },
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[200],
            child: const Center(child: Icon(Icons.broken_image)),
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
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
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
                .lengthCardContentDynamic(isMain ? cardWidth : cardWidth - 20)
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
