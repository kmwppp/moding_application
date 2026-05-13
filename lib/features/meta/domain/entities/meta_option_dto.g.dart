// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_option_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetaOptionDto _$MetaOptionDtoFromJson(Map<String, dynamic> json) =>
    _MetaOptionDto(
      value: json['value'] as String,
      label: json['label'] as String,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$MetaOptionDtoToJson(_MetaOptionDto instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'path': instance.path,
    };
