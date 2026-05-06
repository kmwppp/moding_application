// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_store_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMyStoreInfoResponseWrapper _$GetMyStoreInfoResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _GetMyStoreInfoResponseWrapper(
  data: GetMyStoreInfoResponseDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GetMyStoreInfoResponseWrapperToJson(
  _GetMyStoreInfoResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_GetMyStoreInfoResponseDto _$GetMyStoreInfoResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetMyStoreInfoResponseDto(
  userId: (json['userId'] as num).toInt(),
  loginId: json['loginId'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
  status: json['status'] as String,
  id: (json['id'] as num).toInt(),
  businessName: json['businessName'] as String,
  ownerName: json['ownerName'] as String,
  zipCode: json['zipCode'] as String,
  address: json['address'] as String,
  addressDetail: json['addressDetail'] as String,
  businessNumber: json['businessNumber'] as String,
  businessType: json['businessType'] as String,
  businessCategoryId: (json['businessCategoryId'] as num).toInt(),
  businessCategoryName: json['businessCategoryName'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$GetMyStoreInfoResponseDtoToJson(
  _GetMyStoreInfoResponseDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'loginId': instance.loginId,
  'email': instance.email,
  'phone': instance.phone,
  'role': instance.role,
  'status': instance.status,
  'id': instance.id,
  'businessName': instance.businessName,
  'ownerName': instance.ownerName,
  'zipCode': instance.zipCode,
  'address': instance.address,
  'addressDetail': instance.addressDetail,
  'businessNumber': instance.businessNumber,
  'businessType': instance.businessType,
  'businessCategoryId': instance.businessCategoryId,
  'businessCategoryName': instance.businessCategoryName,
  'createdAt': instance.createdAt.toIso8601String(),
};
