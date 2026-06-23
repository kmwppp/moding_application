import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/app_divider.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/product/presentation/providers/product_review_list_viewmodel.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/product_review_item.dart';
import 'package:moding_application/features/review_list/presentation/screens/widgets/review_list_sliver_appbar.dart';

class ProductReviewListPage extends ConsumerStatefulWidget {
  const ProductReviewListPage({super.key, required this.productId});

  final int productId;

  @override
  ConsumerState<ProductReviewListPage> createState() =>
      _ProductReviewListPageState();
}

class _ProductReviewListPageState extends ConsumerState<ProductReviewListPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final state = ref.read(
      productReviewListViewModelProvider(widget.productId),
    );
    final isNearBottom =
        _scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300;

    if (isNearBottom && !state.isFetchingMore && state.hasNext) {
      ref
          .read(productReviewListViewModelProvider(widget.productId).notifier)
          .loadNext(widget.productId);
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
      productReviewListViewModelProvider(widget.productId),
    );
    final reviews = state.reviews;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            const ReviewListSliverAppbar(title: '리뷰 목록'),
            if (state.isLoading)
              const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              )
            else if (reviews.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text(
                    '아직 작성된 리뷰가 없습니다.',
                    style: context.body.copyWith(color: AppColors.darkGrey),
                  ),
                ),
              )
            else ...[
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 16,
                ),
                sliver: SliverList.separated(
                  itemCount: reviews.length,
                  itemBuilder: (context, index) {
                    return ProductReviewItem(review: reviews[index]);
                  },
                  separatorBuilder: (context, index) =>
                      const AppDivider(height: 4),
                ),
              ),
              if (state.isFetchingMore)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 24),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
