import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';

part 'product_list_state.freezed.dart';

@freezed
abstract class ProductListState with _$ProductListState {
  const ProductListState._();

  const factory ProductListState({
    required bool isLoading,
    required List<RecommandDto>? productList,

    @Default(0) int page,
    @Default(true) bool hasNext,
    @Default(false) bool isFetchingMore,
  }) = _ProductListState;

  factory ProductListState.initial() =>
      ProductListState(isLoading: true, productList: null);
}
