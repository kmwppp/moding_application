import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_my_info_response_dto.freezed.dart';
part 'get_my_info_response_dto.g.dart';

@freezed
abstract class GetMyInfoResponseWrapper with _$GetMyInfoResponseWrapper {
  const factory GetMyInfoResponseWrapper({required GetMyInfoResponseDto data}) =
      _GetMyInfoResponseWrapper;

  factory GetMyInfoResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$GetMyInfoResponseWrapperFromJson(json);
}

@freezed
abstract class GetMyInfoResponseDto with _$GetMyInfoResponseDto {
  const factory GetMyInfoResponseDto({
    required int id,
    required String loginId,
    required String email,
    required String name,
    required String phone,
    required String role,
    required String status,
  }) = _GetMyInfoResponseDto;

  factory GetMyInfoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetMyInfoResponseDtoFromJson(json);
}
