// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderRequestDto _$CreateOrderRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateOrderRequestDto(
  idempotencyKey: json['idempotencyKey'] as String,
  deliveryAddressId: (json['deliveryAddressId'] as num).toInt(),
  deliveryRequest: json['deliveryRequest'] as String,
  pgProvider: _pgProviderFromJson(json['pgProvider'] as String?),
  items: (json['items'] as List<dynamic>)
      .map((e) => OrderItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateOrderRequestDtoToJson(
  _CreateOrderRequestDto instance,
) => <String, dynamic>{
  'idempotencyKey': instance.idempotencyKey,
  'deliveryAddressId': instance.deliveryAddressId,
  'deliveryRequest': instance.deliveryRequest,
  'pgProvider': _pgProviderToJson(instance.pgProvider),
  'items': instance.items,
};

_OrderItemDto _$OrderItemDtoFromJson(Map<String, dynamic> json) =>
    _OrderItemDto(
      productId: (json['productId'] as num).toInt(),
      productOptionId: (json['productOptionId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$OrderItemDtoToJson(_OrderItemDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productOptionId': instance.productOptionId,
      'quantity': instance.quantity,
    };
