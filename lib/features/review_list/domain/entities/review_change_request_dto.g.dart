// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_change_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewChangeRequestDto _$ReviewChangeRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ReviewChangeRequestDto(
  content: json['content'] as String,
  photos:
      (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$ReviewChangeRequestDtoToJson(
  _ReviewChangeRequestDto instance,
) => <String, dynamic>{'content': instance.content, 'photos': instance.photos};
