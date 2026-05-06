// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_in_shopping_cart_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PutInShoppingCartRequestDto _$PutInShoppingCartRequestDtoFromJson(
  Map<String, dynamic> json,
) => _PutInShoppingCartRequestDto(
  productId: (json['productId'] as num).toInt(),
  productOptionId: (json['productOptionId'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$PutInShoppingCartRequestDtoToJson(
  _PutInShoppingCartRequestDto instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'productOptionId': instance.productOptionId,
  'quantity': instance.quantity,
};
