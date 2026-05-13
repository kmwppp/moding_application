// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reauth_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReauthResponseWrapper _$ReauthResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _ReauthResponseWrapper(
  data: ReauthResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReauthResponseWrapperToJson(
  _ReauthResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_ReauthResponseDto _$ReauthResponseDtoFromJson(Map<String, dynamic> json) =>
    _ReauthResponseDto(reauthKey: json['reauthKey'] as String);

Map<String, dynamic> _$ReauthResponseDtoToJson(_ReauthResponseDto instance) =>
    <String, dynamic>{'reauthKey': instance.reauthKey};
