// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_create_order_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartCreateOrderRequestDto _$CartCreateOrderRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CartCreateOrderRequestDto(
  idempotencyKey: json['idempotencyKey'] as String,
  cartItemIds: (json['cartItemIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  deliveryAddressId: (json['deliveryAddressId'] as num).toInt(),
  deliveryRequest: json['deliveryRequest'] as String,
  pgProvider: $enumDecodeNullable(_$PgProviderEnumMap, json['pgProvider']),
);

Map<String, dynamic> _$CartCreateOrderRequestDtoToJson(
  _CartCreateOrderRequestDto instance,
) => <String, dynamic>{
  'idempotencyKey': instance.idempotencyKey,
  'cartItemIds': instance.cartItemIds,
  'deliveryAddressId': instance.deliveryAddressId,
  'deliveryRequest': instance.deliveryRequest,
  'pgProvider': _pgProviderToJson(instance.pgProvider),
};

const _$PgProviderEnumMap = {
  PgProvider.toss: 'toss',
  PgProvider.inicis: 'inicis',
};
