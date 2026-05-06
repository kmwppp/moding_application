import 'package:flutter/material.dart';
import 'package:moding_application/features/home/presentation/screens/widgets/sections/product_section.dart';

import 'category_section.dart';

class HomeSectionsBuilder extends StatelessWidget {
  const HomeSectionsBuilder({super.key, required this.homeState});

  final dynamic homeState;

  @override
  Widget build(BuildContext context) {
    final sections = homeState.sectionList;

    return SliverMainAxisGroup(
      slivers: [
        // 첫번째 영역 - 최근 주문한 내역
        if (sections.isNotEmpty) ProductSection(section: sections.first),

        // 카테고리 영역
        const CategorySection(),

        // 나머지 영역 - 기획전 등
        if (sections.length > 1)
          ...sections
              .sublist(1)
              .map((section) => ProductSection(section: section)),
      ],
    );
  }
}
