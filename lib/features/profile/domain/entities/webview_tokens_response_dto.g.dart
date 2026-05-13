// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webview_tokens_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WebviewTokensResponseWrapper _$WebviewTokensResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _WebviewTokensResponseWrapper(
  data: WebviewTokensResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WebviewTokensResponseWrapperToJson(
  _WebviewTokensResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_WebviewTokensResponseDto _$WebviewTokensResponseDtoFromJson(
  Map<String, dynamic> json,
) => _WebviewTokensResponseDto(token: json['token'] as String);

Map<String, dynamic> _$WebviewTokensResponseDtoToJson(
  _WebviewTokensResponseDto instance,
) => <String, dynamic>{'token': instance.token};
