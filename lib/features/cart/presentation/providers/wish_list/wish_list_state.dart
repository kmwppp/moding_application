import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/cart/domain/entities/wish_list/wish_list_dto.dart';

part 'wish_list_state.freezed.dart';

@freezed
abstract class WishListState with _$WishListState {
  const WishListState._();

  const factory WishListState({
    required int pageNum,
    required WishListDto? wishListDto,
    @Default(false) bool isLoading,
    @Default(true) bool hasNext,
  }) = _WishListState;

  factory WishListState.initial() => WishListState(
    pageNum: 0,
    wishListDto: null,
    isLoading: false,
    hasNext: true,
  );
}
