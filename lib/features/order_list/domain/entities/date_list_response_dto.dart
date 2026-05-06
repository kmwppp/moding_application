import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_list_response_dto.freezed.dart';
part 'date_list_response_dto.g.dart';

@freezed
abstract class DateListResponseWrapper with _$DateListResponseWrapper {
  const factory DateListResponseWrapper({required DateListResponseDto data}) =
      _DateListResponseWrapper;

  factory DateListResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$DateListResponseWrapperFromJson(json);
}

@freezed
abstract class DateListResponseDto with _$DateListResponseDto {
  const factory DateListResponseDto({
    required List<String> content,
    required int number,
    required int size,
    required int totalElements,
    required int totalPages,
  }) = _DateListResponseDto;

  factory DateListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DateListResponseDtoFromJson(json);
}
