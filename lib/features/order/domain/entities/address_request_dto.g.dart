// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressRequestDto _$AddressRequestDtoFromJson(Map<String, dynamic> json) =>
    _AddressRequestDto(
      name: json['name'] as String,
      recipientName: json['recipientName'] as String,
      zipCode: json['zipCode'] as String,
      address: json['address'] as String,
      addressDetail: json['addressDetail'] as String,
      phone: json['phone'] as String,
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$AddressRequestDtoToJson(_AddressRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'recipientName': instance.recipientName,
      'zipCode': instance.zipCode,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
      'phone': instance.phone,
      'isDefault': instance.isDefault,
    };
