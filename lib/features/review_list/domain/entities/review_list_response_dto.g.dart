// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewListResponseWrapper _$ReviewListResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _ReviewListResponseWrapper(
  data: ReviewListResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReviewListResponseWrapperToJson(
  _ReviewListResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_ReviewListResponseDto _$ReviewListResponseDtoFromJson(
  Map<String, dynamic> json,
) => _ReviewListResponseDto(
  content: (json['content'] as List<dynamic>)
      .map((e) => ReviewDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  number: (json['number'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  totalElements: (json['totalElements'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$ReviewListResponseDtoToJson(
  _ReviewListResponseDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'number': instance.number,
  'size': instance.size,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
};

_ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => _ReviewDto(
  id: (json['id'] as num).toInt(),
  productId: (json['productId'] as num).toInt(),
  productName: json['productName'] as String,
  productThumbnailUrl: json['productThumbnailUrl'] as String?,
  orderItemOptionName: json['orderItemOptionName'] as String?,
  content: json['content'] as String,
  photos: (json['photos'] as List<dynamic>)
      .map((e) => ReviewPhotoDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
  updatedAt: const LocalDateTimeConverter().fromJson(
    json['updatedAt'] as String,
  ),
  canEdit: json['canEdit'] as bool,
);

Map<String, dynamic> _$ReviewDtoToJson(_ReviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productName': instance.productName,
      'productThumbnailUrl': instance.productThumbnailUrl,
      'orderItemOptionName': instance.orderItemOptionName,
      'content': instance.content,
      'photos': instance.photos,
      'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const LocalDateTimeConverter().toJson(instance.updatedAt),
      'canEdit': instance.canEdit,
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
