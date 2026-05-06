import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
abstract class ReviewDto with _$ReviewDto {
  const factory ReviewDto({
    required int id,
    required String name,
    required String content,
    @JsonKey(fromJson: _photosFromJson) required List<ReviewPhotoDto> photos,
    @LocalDateTimeConverter() required DateTime createdAt,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);
}

/// 🔥 핵심: sortOrder를 0부터 다시 매김
List<ReviewPhotoDto> _photosFromJson(List<dynamic> jsonList) {
  final list = jsonList.map((e) => ReviewPhotoDto.fromJson(e)).toList();

  // 기존 sortOrder 기준 정렬
  list.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

  // 0부터 다시 할당
  return list.asMap().entries.map((entry) {
    final index = entry.key;
    final photo = entry.value;
    return photo.copyWith(sortOrder: index);
  }).toList();
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
