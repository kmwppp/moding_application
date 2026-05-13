import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/presentation/widgets/card/card_item_length.dart';
import '../../../../../core/presentation/widgets/styles/card_style.dart';

class SearchMasonrySliver<T> extends StatefulWidget {
  final List<T> items;

  const SearchMasonrySliver({super.key, required this.items});

  @override
  State<SearchMasonrySliver<T>> createState() => _SearchMasonrySliverState<T>();
}

class _SearchMasonrySliverState<T> extends State<SearchMasonrySliver<T>> {
  late final int _colorStartIndex;

  @override
  void initState() {
    super.initState();
    _colorStartIndex = Random().nextInt(CardStyle.cardColors.length);
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(10),
      sliver: SliverMasonryGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 4,
        childCount: widget.items.length,
        itemBuilder: (context, index) {
          final item = widget.items[index];
          return _ItemCard(
            item: item,
            index: index,
            colorStartIndex: _colorStartIndex,
          );
        },
      ),
    );
  }
}

class _ItemCard extends StatelessWidget {
  final dynamic item;
  final int index;
  final int colorStartIndex;

  const _ItemCard({
    required this.item,
    required this.index,
    required this.colorStartIndex,
  });

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
        mainColor: CardStyle.colorByIndex(index, offset: colorStartIndex),
        tags: item.tags,
        colorSelectionSeed: index,
      ),
    );
  }
}
