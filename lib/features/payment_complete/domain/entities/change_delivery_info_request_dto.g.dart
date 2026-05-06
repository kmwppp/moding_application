// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_delivery_info_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeDeliveryInfoRequestDto _$ChangeDeliveryInfoRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ChangeDeliveryInfoRequestDto(
  deliveryAddressId: (json['deliveryAddressId'] as num).toInt(),
  deliveryRequest: json['deliveryRequest'] as String,
);

Map<String, dynamic> _$ChangeDeliveryInfoRequestDtoToJson(
  _ChangeDeliveryInfoRequestDto instance,
) => <String, dynamic>{
  'deliveryAddressId': instance.deliveryAddressId,
  'deliveryRequest': instance.deliveryRequest,
};
