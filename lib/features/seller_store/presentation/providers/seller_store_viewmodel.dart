import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/seller_store_repository_impl.dart';
import 'seller_store_state.dart';

part 'seller_store_viewmodel.g.dart';

@Riverpod()
class SellerStoreViewModel extends _$SellerStoreViewModel {
  @override
  SellerStoreState build({required int sellerProfileId}) {
    Future.microtask(() => _init(sellerProfileId: sellerProfileId));
    return SellerStoreState.initial();
  }

  Future<void> _init({required int sellerProfileId}) async {
    await _fetch(sellerProfileId: sellerProfileId, page: 0, isFirst: true);
  }

  int _getSize(int page) => 20;

  Future<void> _fetch({
    required int sellerProfileId,
    required int page,
    bool isFirst = false,
  }) async {
    if (!isFirst) {
      if (state.isFetchingMore || !state.hasNext) return;
      state = state.copyWith(isFetchingMore: true);
    }

    try {
      final repository = ref.read(sellerStoreRepositoryProvider);
      final response = await repository.getSellerProducts(
        sellerProfileId: sellerProfileId,
        page: page,
        size: _getSize(page),
      );
      debugPrint(
        '[SellerStore] response.content.length=${response.content.length}, page=$page, totalPages=${response.totalPages}, totalElements=${response.totalElements}',
      );

      final newList = isFirst
          ? response.content
          : [...state.productList, ...response.content];
      debugPrint('[SellerStore] state.productList.length -> ${newList.length}');

      state = state.copyWith(
        isLoading: false,
        isFetchingMore: false,
        productList: newList,
        page: page,
        hasNext: page < response.totalPages - 1,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, isFetchingMore: false);
      debugPrint('$e');
    }
  }

  Future<void> loadNext({required int sellerProfileId}) async {
    await _fetch(sellerProfileId: sellerProfileId, page: state.page + 1);
  }
}
