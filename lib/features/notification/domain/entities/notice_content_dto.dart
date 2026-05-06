import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_content_dto.freezed.dart';
part 'notice_content_dto.g.dart';

@freezed
abstract class NoticeContentResponseWrapper
    with _$NoticeContentResponseWrapper {
  const factory NoticeContentResponseWrapper({required NoticeContentDto data}) =
      _NoticeContentResponseWrapper;

  factory NoticeContentResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$NoticeContentResponseWrapperFromJson(json);
}

@freezed
abstract class NoticeContentDto with _$NoticeContentDto {
  const factory NoticeContentDto({
    required int id,
    required String title,
    required String content,
    required int sortOrder,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isVisible,
  }) = _NoticeContentDto;

  factory NoticeContentDto.fromJson(Map<String, dynamic> json) =>
      _$NoticeContentDtoFromJson(json);
}
