import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../product/domain/entities/product_recommand_dto.dart';

part 'seller_store_state.freezed.dart';

@freezed
abstract class SellerStoreState with _$SellerStoreState {
  const factory SellerStoreState({
    required bool isLoading,
    required List<RecommandDto> productList,
    @Default(0) int page,
    @Default(true) bool hasNext,
    @Default(false) bool isFetchingMore,
  }) = _SellerStoreState;

  factory SellerStoreState.initial() =>
      const SellerStoreState(isLoading: true, productList: []);
}
