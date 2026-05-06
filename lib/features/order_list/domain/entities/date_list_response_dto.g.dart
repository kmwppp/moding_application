// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DateListResponseWrapper _$DateListResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _DateListResponseWrapper(
  data: DateListResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DateListResponseWrapperToJson(
  _DateListResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_DateListResponseDto _$DateListResponseDtoFromJson(Map<String, dynamic> json) =>
    _DateListResponseDto(
      content: (json['content'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      number: (json['number'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$DateListResponseDtoToJson(
  _DateListResponseDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'number': instance.number,
  'size': instance.size,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
};
