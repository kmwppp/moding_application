// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaqListResponseWrapper _$FaqListResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _FaqListResponseWrapper(
  data: FaqListResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FaqListResponseWrapperToJson(
  _FaqListResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_FaqListResponseDto _$FaqListResponseDtoFromJson(Map<String, dynamic> json) =>
    _FaqListResponseDto(
      content: (json['content'] as List<dynamic>)
          .map((e) => FaqDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: (json['number'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$FaqListResponseDtoToJson(_FaqListResponseDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'number': instance.number,
      'size': instance.size,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
    };

_FaqDto _$FaqDtoFromJson(Map<String, dynamic> json) => _FaqDto(
  id: (json['id'] as num).toInt(),
  category: json['category'] as String,
  question: json['question'] as String,
  answer: json['answer'] as String,
  sortOrder: (json['sortOrder'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  isVisible: json['isVisible'] as bool,
);

Map<String, dynamic> _$FaqDtoToJson(_FaqDto instance) => <String, dynamic>{
  'id': instance.id,
  'category': instance.category,
  'question': instance.question,
  'answer': instance.answer,
  'sortOrder': instance.sortOrder,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isVisible': instance.isVisible,
};
