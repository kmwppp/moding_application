import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_change_request_dto.freezed.dart';
part 'review_change_request_dto.g.dart';

@freezed
abstract class ReviewChangeRequestDto with _$ReviewChangeRequestDto {
  const factory ReviewChangeRequestDto({
    required String content,
    @Default([]) List<String> photos,
  }) = _ReviewChangeRequestDto;

  factory ReviewChangeRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewChangeRequestDtoFromJson(json);
}

extension ReviewChangeRequestDtoX on ReviewChangeRequestDto {
  FormData toFormData() {
    return FormData.fromMap({
      'content': content,
      if (photos.isNotEmpty) 'photos': photos,
    });
  }
}
