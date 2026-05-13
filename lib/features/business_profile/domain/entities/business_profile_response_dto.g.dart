// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessProfileResponseWrapper _$BusinessProfileResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _BusinessProfileResponseWrapper(
  data: BusinessProfileResponseDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$BusinessProfileResponseWrapperToJson(
  _BusinessProfileResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_BusinessProfileResponseDto _$BusinessProfileResponseDtoFromJson(
  Map<String, dynamic> json,
) => _BusinessProfileResponseDto(
  id: (json['id'] as num).toInt(),
  businessName: json['businessName'] as String?,
  ownerName: json['ownerName'] as String?,
  zipCode: json['zipCode'] as String?,
  address: json['address'] as String?,
  addressDetail: json['addressDetail'] as String?,
  businessNumber: json['businessNumber'] as String?,
  businessPhone: json['businessPhone'] as String?,
  industry: json['industry'] as String?,
  industryClass: json['industryClass'] as String?,
  parentCategoryName: json['parentCategoryName'] as String?,
  businessCategoryName: json['businessCategoryName'] as String?,
  latestChangeRequestStatus: _latestChangeRequestStatusFromJson(
    json['latestChangeRequestStatus'],
  ),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$BusinessProfileResponseDtoToJson(
  _BusinessProfileResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'businessName': instance.businessName,
  'ownerName': instance.ownerName,
  'zipCode': instance.zipCode,
  'address': instance.address,
  'addressDetail': instance.addressDetail,
  'businessNumber': instance.businessNumber,
  'businessPhone': instance.businessPhone,
  'industry': instance.industry,
  'industryClass': instance.industryClass,
  'parentCategoryName': instance.parentCategoryName,
  'businessCategoryName': instance.businessCategoryName,
  'latestChangeRequestStatus': _latestChangeRequestStatusToJson(
    instance.latestChangeRequestStatus,
  ),
  'createdAt': instance.createdAt.toIso8601String(),
};
