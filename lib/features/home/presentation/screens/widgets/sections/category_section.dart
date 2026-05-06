import 'package:flutter/material.dart';

import '../components/category_image_item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  static const categories = [
    ("식육가공", "assets/images/porkImage.png"),
    ("수산가공", "assets/images/fishImage.png"),
    ("소스·향신료", "assets/images/sauceImage.png"),
    ("가공식품", "assets/images/dumplingImage.png"),
    ("카페·베이커리", "assets/images/breadImage.png"),
    ("주류", "assets/images/alcoholImage.png"),
  ];

  @override
  Widget build(BuildContext context) {
    // 1. 설정값 상수화
    const double horizontalPadding = 10.0;
    const double spacing = 10.0;
    const int crossAxisCount = 3; // 한 줄에 보여줄 개수

    // 2. 가용 너비 계산 (전체 너비 - 좌우 패딩 - 아이템 사이 간격들)
    final double totalPadding =
        (horizontalPadding * 2) + (spacing * (crossAxisCount - 1));
    final double itemWidth =
        (MediaQuery.of(context).size.width - totalPadding) / crossAxisCount;

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: horizontalPadding,
        ),
        child: Wrap(
          spacing: spacing, // 가로 간격
          runSpacing: spacing, // 세로 간격
          children: categories.map((c) {
            return GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: itemWidth, // 정확히 3등분된 너비 적용
                child: CategoryImageItem(
                  title: c.$1,
                  imagePath: c.$2,
                  cardWidth: itemWidth, // 내부 이미지 크기도 동기화
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
