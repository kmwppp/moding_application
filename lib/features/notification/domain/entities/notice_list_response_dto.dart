import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_list_response_dto.freezed.dart';
part 'notice_list_response_dto.g.dart';

@freezed
abstract class NoticeListResponseWrapper with _$NoticeListResponseWrapper {
  const factory NoticeListResponseWrapper({
    required NoticeListResponseDto data,
  }) = _NoticeListResponseWrapper;

  factory NoticeListResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$NoticeListResponseWrapperFromJson(json);
}

@freezed
abstract class NoticeListResponseDto with _$NoticeListResponseDto {
  const factory NoticeListResponseDto({
    required List<NoticeListDto> content,
    required int number,
    required int size,
    required int totalElements,
    required int totalPages,
  }) = _NoticeListResponseDto;

  factory NoticeListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NoticeListResponseDtoFromJson(json);
}

@freezed
abstract class NoticeListDto with _$NoticeListDto {
  const factory NoticeListDto({
    required int id,
    required String title,
    required int sortOrder,
    required DateTime createdAt,
    required bool isVisible,
  }) = _NoticeListDto;

  factory NoticeListDto.fromJson(Map<String, dynamic> json) =>
      _$NoticeListDtoFromJson(json);
}
