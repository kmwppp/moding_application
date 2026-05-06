// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellerInfoDto _$SellerInfoDtoFromJson(Map<String, dynamic> json) =>
    _SellerInfoDto(
      sellerProfileId: (json['sellerProfileId'] as num).toInt(),
      businessName: json['businessName'] as String,
      ownerName: json['ownerName'] as String,
      businessNumber: json['businessNumber'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$SellerInfoDtoToJson(_SellerInfoDto instance) =>
    <String, dynamic>{
      'sellerProfileId': instance.sellerProfileId,
      'businessName': instance.businessName,
      'ownerName': instance.ownerName,
      'businessNumber': instance.businessNumber,
      'address': instance.address,
      'phone': instance.phone,
    };
