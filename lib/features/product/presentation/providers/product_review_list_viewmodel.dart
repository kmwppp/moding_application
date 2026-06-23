import 'package:flutter/foundation.dart';
import 'package:moding_application/features/product/data/repositories/product_repository_impl.dart';
import 'package:moding_application/features/product/presentation/providers/product_review_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_review_list_viewmodel.g.dart';

@Riverpod()
class ProductReviewListViewModel extends _$ProductReviewListViewModel {
  static const int _pageSize = 10;

  @override
  ProductReviewListState build(int productId) {
    Future.microtask(() => loadInitial(productId));
    return ProductReviewListState.initial();
  }

  Future<void> loadInitial(int productId) async {
    state = state.copyWith(
      isLoading: true,
      reviews: [],
      page: 0,
      hasNext: true,
      isFetchingMore: false,
    );

    try {
      final repository = ref.read(productRepositoryProvider);
      final response = await repository.getProductReviewPage(
        productId,
        0,
        _pageSize,
      );
      if (!ref.mounted) return;

      state = state.copyWith(
        isLoading: false,
        reviews: response.content,
        page: response.number,
        hasNext: response.number + 1 < response.totalPages,
      );
    } catch (e) {
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, reviews: [], hasNext: false);
      debugPrint('$e');
    }
  }

  Future<void> loadNext(int productId) async {
    if (state.isLoading || state.isFetchingMore || !state.hasNext) return;

    state = state.copyWith(isFetchingMore: true);

    try {
      final repository = ref.read(productRepositoryProvider);
      final nextPage = state.page + 1;
      final response = await repository.getProductReviewPage(
        productId,
        nextPage,
        _pageSize,
      );
      if (!ref.mounted) return;

      state = state.copyWith(
        reviews: [...state.reviews, ...response.content],
        page: response.number,
        hasNext: response.number + 1 < response.totalPages,
        isFetchingMore: false,
      );
    } catch (e) {
      if (!ref.mounted) return;
      state = state.copyWith(isFetchingMore: false);
      debugPrint('$e');
    }
  }
}
