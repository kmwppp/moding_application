// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_permits_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryPermitsResponseWrapper _$CategoryPermitsResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _CategoryPermitsResponseWrapper(
  data: (json['data'] as List<dynamic>)
      .map((e) => CategoryPermitsDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoryPermitsResponseWrapperToJson(
  _CategoryPermitsResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_CategoryPermitsDto _$CategoryPermitsDtoFromJson(Map<String, dynamic> json) =>
    _CategoryPermitsDto(
      id: (json['id'] as num).toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      name: json['name'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      children: (json['children'] as List<dynamic>)
          .map((e) => CategoryPermitsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryPermitsDtoToJson(_CategoryPermitsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'sortOrder': instance.sortOrder,
      'children': instance.children,
    };
