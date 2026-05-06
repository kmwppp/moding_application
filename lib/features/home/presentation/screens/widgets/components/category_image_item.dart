import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_text_styles.dart';

class CategoryImageItem extends StatelessWidget {
  const CategoryImageItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.cardWidth,
    this.isSelected = false,
  });

  final String title;
  final String imagePath;
  final double cardWidth;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: cardWidth * 0.25,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    AppColors.darkGrey.withOpacity(0.9),
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: context.caption.copyWith(
                    color: !isSelected ? Colors.white : AppColors.pointColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
