import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../product/domain/enums/product_recommand_type.dart';
import '../../../search/presentation/screens/widgets/search_masonry_list.dart';
import '../providers/product_list_viewmodel.dart';

class ProductListPage extends ConsumerStatefulWidget {
  const ProductListPage({super.key, required this.listType, this.productId});

  final ProductRecommendType listType;
  final int? productId;

  @override
  ConsumerState<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends ConsumerState<ProductListPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final state = ref.read(
      productListViewModelProvider(
        type: widget.listType,
        productId: widget.productId,
      ),
    );

    final notifier = ref.read(
      productListViewModelProvider(
        type: widget.listType,
        productId: widget.productId,
      ).notifier,
    );

    final isNearBottom =
        _scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300;

    if (isNearBottom && !state.isFetchingMore && state.hasNext) {
      notifier.loadNext(type: widget.listType, productId: widget.productId);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      productListViewModelProvider(
        type: widget.listType,
        productId: widget.productId,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            _buildProductListAppbar(context, widget.listType.label),

            if (state.isLoading)
              const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              )
            else ...[
              if (state.productList!.isEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    child: Center(
                      child: Text(
                        "불러온 상품이 없어요.",
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              else ...[
                /// ✅ 메이슨리 리스트 (그대로 Sliver로 넣기)
                SearchMasonrySliver(items: state.productList ?? []),

                /// 🔥 하단 로딩
                if (state.isFetchingMore)
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),
              ],
            ],
          ],
        ),
      ),
    );
  }
}

SliverAppBar _buildProductListAppbar(BuildContext context, String title) {
  return SliverAppBar(
    pinned: true,
    floating: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
      onPressed: context.pop,
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(color: Colors.grey.withValues(alpha: 0.3), height: 1.0),
    ),
    title: Text(
      title,
      style: context.title.copyWith(fontWeight: FontWeight.w600),
    ),
  );
}
