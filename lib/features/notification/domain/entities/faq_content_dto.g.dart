// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaqContentResponseWrapper _$FaqContentResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _FaqContentResponseWrapper(
  data: FaqContentDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FaqContentResponseWrapperToJson(
  _FaqContentResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_FaqContentDto _$FaqContentDtoFromJson(Map<String, dynamic> json) =>
    _FaqContentDto(
      id: (json['id'] as num).toInt(),
      category: json['category'] as String,
      question: json['question'] as String,
      answer: json['answer'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isVisible: json['isVisible'] as bool,
    );

Map<String, dynamic> _$FaqContentDtoToJson(_FaqContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'question': instance.question,
      'answer': instance.answer,
      'sortOrder': instance.sortOrder,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isVisible': instance.isVisible,
    };
