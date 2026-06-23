// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductReviewListResponseWrapper _$ProductReviewListResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _ProductReviewListResponseWrapper(
  data: ProductReviewListResponseDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ProductReviewListResponseWrapperToJson(
  _ProductReviewListResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_ProductReviewListResponseDto _$ProductReviewListResponseDtoFromJson(
  Map<String, dynamic> json,
) => _ProductReviewListResponseDto(
  content: (json['content'] as List<dynamic>)
      .map((e) => ReviewDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  number: (json['number'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  totalElements: (json['totalElements'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$ProductReviewListResponseDtoToJson(
  _ProductReviewListResponseDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'number': instance.number,
  'size': instance.size,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
};
