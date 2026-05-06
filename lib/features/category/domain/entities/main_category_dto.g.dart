// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MainCategoryResponseDto _$MainCategoryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _MainCategoryResponseDto(
  data: (json['data'] as List<dynamic>)
      .map((e) => MainCategoryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MainCategoryResponseDtoToJson(
  _MainCategoryResponseDto instance,
) => <String, dynamic>{'data': instance.data};

_MainCategoryDto _$MainCategoryDtoFromJson(Map<String, dynamic> json) =>
    _MainCategoryDto(
      id: (json['id'] as num).toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      name: json['name'] as String,
      sortOrder: (json['sortOrder'] as num?)?.toInt(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => MainCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainCategoryDtoToJson(_MainCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'sortOrder': instance.sortOrder,
      'children': instance.children,
    };
