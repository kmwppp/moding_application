import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/product_recommend_list/presentation/providers/product_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../product/domain/enums/product_recommand_type.dart';
import '../../data/repositories/product_list_repository_impl.dart';

part 'product_list_viewmodel.g.dart';

@Riverpod()
class ProductListViewModel extends _$ProductListViewModel {
  @override
  ProductListState build({required ProductRecommendType type, int? productId}) {
    _init(type: type, productId: productId);
    return ProductListState.initial();
  }

  Future<void> _init({
    required ProductRecommendType type,
    int? productId,
  }) async {
    await _fetch(type: type, page: 0, productId: productId, isFirst: true);
  }

  int _getSize(int page) => page == 0 ? 10 : 20;

  Future<void> _fetch({
    required ProductRecommendType type,
    required int page,
    int? productId,
    bool isFirst = false,
  }) async {
    if (!isFirst) {
      if (state.isFetchingMore || !state.hasNext) return;
      state = state.copyWith(isFetchingMore: true);
    }

    try {
      final repository = ref.read(productListRepositoryProvider);

      final response = await repository.getProductList(
        type: type,
        page: page,
        size: _getSize(page),
        productId: productId,
      );

      final current = state.productList ?? [];

      final newList = isFirst
          ? response.content
          : [...current, ...response.content];

      final hasNext = page < response.totalPages - 1;

      state = state.copyWith(
        productList: newList,
        page: page,
        hasNext: hasNext,
        isLoading: false,
        isFetchingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isFetchingMore: false, isLoading: false);
      appLog(e);
    }
  }

  /// 🔥 외부에서 호출 (스크롤)
  void loadNext({required ProductRecommendType type, int? productId}) {
    _fetch(type: type, page: state.page + 1, productId: productId);
  }
}
