// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => _AddressDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  recipientName: json['recipientName'] as String,
  zipCode: json['zipCode'] as String,
  address: json['address'] as String,
  addressDetail: json['addressDetail'] as String,
  phone: json['phone'] as String,
  isDefault: json['isDefault'] as bool? ?? false,
);

Map<String, dynamic> _$AddressDtoToJson(_AddressDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'recipientName': instance.recipientName,
      'zipCode': instance.zipCode,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
      'phone': instance.phone,
      'isDefault': instance.isDefault,
    };

_AddressListResponse _$AddressListResponseFromJson(Map<String, dynamic> json) =>
    _AddressListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => AddressDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddressListResponseToJson(
  _AddressListResponse instance,
) => <String, dynamic>{'data': instance.data};
