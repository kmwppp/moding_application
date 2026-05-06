import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_list_response_dto.freezed.dart';
part 'faq_list_response_dto.g.dart';

@freezed
abstract class FaqListResponseWrapper with _$FaqListResponseWrapper {
  const factory FaqListResponseWrapper({required FaqListResponseDto data}) =
      _FaqListResponseWrapper;

  factory FaqListResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$FaqListResponseWrapperFromJson(json);
}

@freezed
abstract class FaqListResponseDto with _$FaqListResponseDto {
  const factory FaqListResponseDto({
    required List<FaqDto> content,
    required int number,
    required int size,
    required int totalElements,
    required int totalPages,
  }) = _FaqListResponseDto;

  factory FaqListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FaqListResponseDtoFromJson(json);
}

@freezed
abstract class FaqDto with _$FaqDto {
  const factory FaqDto({
    required int id,
    required String category,
    required String question,
    required String answer,
    required int sortOrder,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isVisible,
  }) = _FaqDto;

  factory FaqDto.fromJson(Map<String, dynamic> json) => _$FaqDtoFromJson(json);
}
