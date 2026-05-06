import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_content_dto.freezed.dart';
part 'faq_content_dto.g.dart';

@freezed
abstract class FaqContentResponseWrapper with _$FaqContentResponseWrapper {
  const factory FaqContentResponseWrapper({required FaqContentDto data}) =
      _FaqContentResponseWrapper;

  factory FaqContentResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$FaqContentResponseWrapperFromJson(json);
}

@freezed
abstract class FaqContentDto with _$FaqContentDto {
  const factory FaqContentDto({
    required int id,
    required String category,
    required String question,
    required String answer,
    required int sortOrder,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isVisible,
  }) = _FaqContentDto;

  factory FaqContentDto.fromJson(Map<String, dynamic> json) =>
      _$FaqContentDtoFromJson(json);
}
