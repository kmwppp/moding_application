import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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

  const HomeItemCardLength({
    super.key,
    required this.index,
    required this.randomStartIndex,
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.viewCount,
    required this.reviewCount,
  });

  Color _getMainColor() {
    return CardStyle.cardColors[(index + randomStartIndex) %
        CardStyle.cardColors.length];
  }

  @override
  Widget build(BuildContext context) {
    final cardWidth = (MediaQuery.of(context).size.width / 2) - 50;

    final mainColor = _getMainColor();

    final gradientList =
        CardStyle.gradientMapping[mainColor] ?? [mainColor, mainColor];

    final textColor = CardStyle.textColorMapping[mainColor] ?? Colors.black;

    return Container(
      width: cardWidth,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _imageBox(cardWidth, gradientList),

          _content(context, cardWidth, textColor),
        ],
      ),
    );
  }

  Widget _imageBox(double width, List<Color> gradientList) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: thumbnailUrl,
            height: width,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: width * 0.3,
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
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/icons/views.png",
                      width: 14,
                      color: textColor == Colors.white
                          ? Colors.white
                          : Colors.black,
                    ),
                    const SizedBox(width: 4),

                    /// 조회수
                    Text(
                      "$viewCount",
                      style: context
                          .lengthCardContentDynamic(cardWidth)
                          .copyWith(
                            color: textColor == Colors.white
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                    ),

                    const SizedBox(width: 4),

                    Image.asset(
                      "assets/images/icons/review.png",
                      width: 14,
                      color: textColor == Colors.white
                          ? Colors.white
                          : Colors.black,
                    ),

                    const SizedBox(width: 4),

                    /// 리뷰수
                    Text(
                      "$reviewCount",
                      style: context
                          .lengthCardContentDynamic(cardWidth)
                          .copyWith(
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

            const SizedBox(height: 4),

            /// 제목
            Text(
              name,
              style: context
                  .lengthCardTitleDynamic(cardWidth)
                  .copyWith(color: textColor),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
