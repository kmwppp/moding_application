import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';
import 'package:moding_application/features/search/presentation/providers/search_viewmodel.dart';
import 'package:moding_application/features/search/presentation/screens/widgets/search_masonry_list.dart';

class SearchListPage extends ConsumerStatefulWidget {
  const SearchListPage({super.key});

  @override
  ConsumerState<SearchListPage> createState() => _SearchListPageState();
}

class _SearchListPageState extends ConsumerState<SearchListPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      // 👉 끝 근처 도달 시
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 300) {
        final notifier = ref.read(
          searchViewModelProvider(
            type: ProductRecommendType.recommended,
            productId: null,
          ).notifier,
        );

        final state = ref.read(
          searchViewModelProvider(
            type: ProductRecommendType.recommended,
            productId: null,
          ),
        );

        if (!state.searchIsFetchingMore && state.searchHasNext) {
          notifier.searchLoadNext(keyword: state.searchWord);
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      searchViewModelProvider(
        type: ProductRecommendType.recommended,
        productId: null,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SearchMasonrySliver(items: state.searchList!), // 👈 핵심,
    );
  }
}
