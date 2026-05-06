import 'package:freezed_annotation/freezed_annotation.dart';

part 'put_in_shopping_cart_request_dto.freezed.dart';
part 'put_in_shopping_cart_request_dto.g.dart';

@freezed
abstract class PutInShoppingCartRequestDto with _$PutInShoppingCartRequestDto {
  const factory PutInShoppingCartRequestDto({
    required int productId,
    required int productOptionId,
    required int quantity,
  }) = _PutInShoppingCartRequestDto;

  factory PutInShoppingCartRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PutInShoppingCartRequestDtoFromJson(json);
}
