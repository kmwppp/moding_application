// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountInfoResponseWrapper _$AccountInfoResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _AccountInfoResponseWrapper(
  data: AccountInfoResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AccountInfoResponseWrapperToJson(
  _AccountInfoResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_AccountInfoResponseDto _$AccountInfoResponseDtoFromJson(
  Map<String, dynamic> json,
) => _AccountInfoResponseDto(
  id: (json['id'] as num).toInt(),
  loginId: json['loginId'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$AccountInfoResponseDtoToJson(
  _AccountInfoResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'loginId': instance.loginId,
  'email': instance.email,
  'name': instance.name,
  'phone': instance.phone,
  'role': instance.role,
  'status': instance.status,
};
