// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoticeContentResponseWrapper _$NoticeContentResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _NoticeContentResponseWrapper(
  data: NoticeContentDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NoticeContentResponseWrapperToJson(
  _NoticeContentResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_NoticeContentDto _$NoticeContentDtoFromJson(Map<String, dynamic> json) =>
    _NoticeContentDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isVisible: json['isVisible'] as bool,
    );

Map<String, dynamic> _$NoticeContentDtoToJson(_NoticeContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'sortOrder': instance.sortOrder,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isVisible': instance.isVisible,
    };
