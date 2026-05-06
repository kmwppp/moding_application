import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'review_list_response_dto.freezed.dart';
part 'review_list_response_dto.g.dart';

@freezed
abstract class ReviewListResponseWrapper with _$ReviewListResponseWrapper {
  const factory ReviewListResponseWrapper({
    required ReviewListResponseDto data,
  }) = _ReviewListResponseWrapper;

  factory ReviewListResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$ReviewListResponseWrapperFromJson(json);
}

@freezed
abstract class ReviewListResponseDto with _$ReviewListResponseDto {
  const factory ReviewListResponseDto({
    required List<ReviewDto> content,
    required int number,
    required int size,
    required int totalElements,
    required int totalPages,
  }) = _ReviewListResponseDto;

  factory ReviewListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewListResponseDtoFromJson(json);
}

@freezed
abstract class ReviewDto with _$ReviewDto {
  const factory ReviewDto({
    required int id,
    required int productId,
    required String productName,
    String? productThumbnailUrl,

    String? orderItemOptionName,
    required String content,

    required List<ReviewPhotoDto> photos,

    @LocalDateTimeConverter() required DateTime createdAt,
    @LocalDateTimeConverter() required DateTime updatedAt,

    required bool canEdit,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);
}

@freezed
abstract class ReviewPhotoDto with _$ReviewPhotoDto {
  const factory ReviewPhotoDto({
    required String photoUrl,
    required int sortOrder,
  }) = _ReviewPhotoDto;

  factory ReviewPhotoDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewPhotoDtoFromJson(json);
}
