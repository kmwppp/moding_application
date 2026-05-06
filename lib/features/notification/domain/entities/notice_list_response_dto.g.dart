// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoticeListResponseWrapper _$NoticeListResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _NoticeListResponseWrapper(
  data: NoticeListResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NoticeListResponseWrapperToJson(
  _NoticeListResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_NoticeListResponseDto _$NoticeListResponseDtoFromJson(
  Map<String, dynamic> json,
) => _NoticeListResponseDto(
  content: (json['content'] as List<dynamic>)
      .map((e) => NoticeListDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  number: (json['number'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  totalElements: (json['totalElements'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$NoticeListResponseDtoToJson(
  _NoticeListResponseDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'number': instance.number,
  'size': instance.size,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
};

_NoticeListDto _$NoticeListDtoFromJson(Map<String, dynamic> json) =>
    _NoticeListDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isVisible: json['isVisible'] as bool,
    );

Map<String, dynamic> _$NoticeListDtoToJson(_NoticeListDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sortOrder': instance.sortOrder,
      'createdAt': instance.createdAt.toIso8601String(),
      'isVisible': instance.isVisible,
    };
