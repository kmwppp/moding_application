import 'package:freezed_annotation/freezed_annotation.dart';

import 'review_dto.dart';

part 'product_review_list_response_dto.freezed.dart';
part 'product_review_list_response_dto.g.dart';

@freezed
abstract class ProductReviewListResponseWrapper
    with _$ProductReviewListResponseWrapper {
  const factory ProductReviewListResponseWrapper({
    required ProductReviewListResponseDto data,
  }) = _ProductReviewListResponseWrapper;

  factory ProductReviewListResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewListResponseWrapperFromJson(json);
}

@freezed
abstract class ProductReviewListResponseDto with _$ProductReviewListResponseDto {
  const factory ProductReviewListResponseDto({
    required List<ReviewDto> content,
    required int number,
    required int size,
    required int totalElements,
    required int totalPages,
  }) = _ProductReviewListResponseDto;

  factory ProductReviewListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewListResponseDtoFromJson(json);
}
