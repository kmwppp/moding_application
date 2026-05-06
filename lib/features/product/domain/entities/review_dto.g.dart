// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => _ReviewDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  content: json['content'] as String,
  photos: _photosFromJson(json['photos'] as List),
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
);

Map<String, dynamic> _$ReviewDtoToJson(_ReviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'content': instance.content,
      'photos': instance.photos,
      'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
    };

_ReviewPhotoDto _$ReviewPhotoDtoFromJson(Map<String, dynamic> json) =>
    _ReviewPhotoDto(
      photoUrl: json['photoUrl'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
    );

Map<String, dynamic> _$ReviewPhotoDtoToJson(_ReviewPhotoDto instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'sortOrder': instance.sortOrder,
    };
