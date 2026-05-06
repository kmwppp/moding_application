import 'package:flutter/material.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = (screenWidth / 3);

    return Container(
      // ClipRRect는 Column 밖이나 내부 이미지에만 적용하는 게 안전합니다
      width: cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // 여기서 바로 곡률 적용
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // 중요: 자기 크기만큼만!
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지 영역
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                _imageBox(cardWidth),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: (cardWidth) * 0.34,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black38,
                          Colors.black54,
                          Colors.black87,
                        ],
                      ),
                    ),
                  ),
                ),

                Positioned(
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
              ],
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
}
