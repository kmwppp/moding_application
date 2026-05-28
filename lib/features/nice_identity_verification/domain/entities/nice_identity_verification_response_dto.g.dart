// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nice_identity_verification_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NiceIdentityVerificationResponseDto
_$NiceIdentityVerificationResponseDtoFromJson(Map<String, dynamic> json) =>
    _NiceIdentityVerificationResponseDto(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : NiceIdentityVerificationResponseDataDto.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$NiceIdentityVerificationResponseDtoToJson(
  _NiceIdentityVerificationResponseDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_NiceIdentityVerificationResponseDataDto
_$NiceIdentityVerificationResponseDataDtoFromJson(Map<String, dynamic> json) =>
    _NiceIdentityVerificationResponseDataDto(
      authUrl: json['authUrl'] as String? ?? '',
    );

Map<String, dynamic> _$NiceIdentityVerificationResponseDataDtoToJson(
  _NiceIdentityVerificationResponseDataDto instance,
) => <String, dynamic>{'authUrl': instance.authUrl};
