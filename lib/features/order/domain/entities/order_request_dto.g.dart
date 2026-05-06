// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderRequestDto _$OrderRequestDtoFromJson(Map<String, dynamic> json) =>
    _OrderRequestDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemRequestDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderRequestDtoToJson(_OrderRequestDto instance) =>
    <String, dynamic>{'items': instance.items};

_OrderItemRequestDto _$OrderItemRequestDtoFromJson(Map<String, dynamic> json) =>
    _OrderItemRequestDto(
      productId: (json['productId'] as num).toInt(),
      productOptionId: (json['productOptionId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$OrderItemRequestDtoToJson(
  _OrderItemRequestDto instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'productOptionId': instance.productOptionId,
  'quantity': instance.quantity,
};
