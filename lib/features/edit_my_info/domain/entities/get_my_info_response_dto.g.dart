// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMyInfoResponseWrapper _$GetMyInfoResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _GetMyInfoResponseWrapper(
  data: GetMyInfoResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetMyInfoResponseWrapperToJson(
  _GetMyInfoResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_GetMyInfoResponseDto _$GetMyInfoResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetMyInfoResponseDto(
  id: (json['id'] as num).toInt(),
  loginId: json['loginId'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$GetMyInfoResponseDtoToJson(
  _GetMyInfoResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'loginId': instance.loginId,
  'email': instance.email,
  'name': instance.name,
  'phone': instance.phone,
  'role': instance.role,
  'status': instance.status,
};
