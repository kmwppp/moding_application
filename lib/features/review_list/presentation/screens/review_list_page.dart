import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/review_list/presentation/providers/review_list_viewmodel.dart';
import 'package:moding_application/features/review_list/presentation/screens/widgets/review_list_item.dart';
import 'package:moding_application/features/review_list/presentation/screens/widgets/review_list_sliver_appbar.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/widgets/app_divider.dart';
import '../../../../core/theme/app_text_styles.dart';

class ReviewListPage extends ConsumerStatefulWidget {
  const ReviewListPage({super.key});

  @override
  ConsumerState<ReviewListPage> createState() => _ReviewListPageState();
}

class _ReviewListPageState extends ConsumerState<ReviewListPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final state = ref.read(reviewListViewModelProvider);
    final isNearBottom =
        _scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300;

    if (isNearBottom && !state.isFetchingMore && state.hasNext) {
      ref.read(reviewListViewModelProvider.notifier).loadNext();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(reviewListViewModelProvider);
    final reviews = state.reviews;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            const ReviewListSliverAppbar(),
            if (state.isLoading)
              const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              )
            else if (reviews.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text(
                    '작성한 리뷰가 없어요.',
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
                    return ReviewListItem(item: reviews[index]);
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
