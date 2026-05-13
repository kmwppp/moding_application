import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/category/presentation/providers/category_viewmodel.dart';
import 'package:moding_application/features/main/domain/enums/MainTab.dart';
import 'package:moding_application/features/main/presentation/providers/main_viewmodel.dart';

import '../components/category_image_item.dart';

class CategorySection extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    const double horizontalPadding = 10.0;
    const double spacing = 10.0;
    const int crossAxisCount = 3;

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
          spacing: spacing,
          runSpacing: spacing,
          children: categories.map((category) {
            return GestureDetector(
              onTap: () async {
                final categoryNotifier = ref.read(
                  categoryViewModelProvider.notifier,
                );
                await categoryNotifier.init();
                await categoryNotifier.selectMainCategoryByName(category.$1);
                ref
                    .read(mainViewModelProvider.notifier)
                    .changeTab(MainTab.category);
              },
              child: SizedBox(
                width: itemWidth,
                child: CategoryImageItem(
                  title: category.$1,
                  imagePath: category.$2,
                  cardWidth: itemWidth,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
