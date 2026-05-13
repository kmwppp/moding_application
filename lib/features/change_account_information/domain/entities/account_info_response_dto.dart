import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_info_response_dto.freezed.dart';
part 'account_info_response_dto.g.dart';

@freezed
abstract class AccountInfoResponseWrapper with _$AccountInfoResponseWrapper {
  const factory AccountInfoResponseWrapper({
    required AccountInfoResponseDto data,
  }) = _AccountInfoResponseWrapper;

  factory AccountInfoResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoResponseWrapperFromJson(json);
}

@freezed
abstract class AccountInfoResponseDto with _$AccountInfoResponseDto {
  const factory AccountInfoResponseDto({
    required int id,
    required String loginId,
    required String email,
    required String name,
    required String phone,
    required String role,
    required String status,
  }) = _AccountInfoResponseDto;

  factory AccountInfoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoResponseDtoFromJson(json);
}
