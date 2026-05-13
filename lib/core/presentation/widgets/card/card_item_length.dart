import 'package:flutter/material.dart';

import '../../../theme/app_text_styles.dart';
import '../styles/card_style.dart';

class CardItemLength extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isMain;
  final Color mainColor;
  final List<String> tags;
  final int colorSelectionSeed;

  const CardItemLength({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.isMain,
    required this.mainColor,
    required this.tags,
    this.colorSelectionSeed = 0,
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
                    )
                  else
                    Column(
                      children: [
                        const SizedBox(height: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.22),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.12),
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
