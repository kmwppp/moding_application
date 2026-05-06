import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/cart/domain/entities/cart/cart_response_dto.dart';

import '../../../../product/domain/entities/product_recommand_dto.dart';

part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const CartState._();

  const factory CartState({
    CartResponseDto? cartData,
    @Default(<int>{}) Set<int> selectedCartItemIds,

    required List<RecommandDto>? recentlyList,
  }) = _CartState;

  factory CartState.initial() => const CartState(
    cartData: null,
    selectedCartItemIds: <int>{},
    recentlyList: null,
  );
}
