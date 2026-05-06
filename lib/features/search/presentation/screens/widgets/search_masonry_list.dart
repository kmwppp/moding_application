import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/card/card_item_length.dart';

class SearchMasonrySliver<T> extends StatelessWidget {
  final List<T> items;

  const SearchMasonrySliver({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(10),
      sliver: SliverMasonryGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 4,
        childCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return _ItemCard(item: item);
        },
      ),
    );
  }
}

class _ItemCard extends StatelessWidget {
  final dynamic item;

  const _ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push("/product/${item.id}");
      },
      child: CardItemLength(
        imageUrl: item.thumbnailImageUrl,
        title: item.name,
        isMain: false,
        mainColor: _getColorById(item.id),
        tags: item.tags,
      ),
    );
  }

  Color _getColorById(int id) {
    const colors = [
      AppColors.cardColor1,
      AppColors.cardColor2,
      AppColors.cardColor3,
      AppColors.cardColor4,
      AppColors.cardColor5,
      AppColors.cardColor6,
      AppColors.cardColor7,
      AppColors.cardColor8,
      AppColors.cardColor9,
      AppColors.cardColor10,
      AppColors.cardColor11,
      AppColors.cardColor12,
    ];

    return colors[id % colors.length];
  }
}
