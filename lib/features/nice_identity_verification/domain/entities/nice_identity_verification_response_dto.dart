import 'package:freezed_annotation/freezed_annotation.dart';

part 'nice_identity_verification_response_dto.freezed.dart';
part 'nice_identity_verification_response_dto.g.dart';

@freezed
abstract class NiceIdentityVerificationResponseDto
    with _$NiceIdentityVerificationResponseDto {
  const factory NiceIdentityVerificationResponseDto({
    @Default(false) bool success,
    @Default('') String message,
    NiceIdentityVerificationResponseDataDto? data,
  }) = _NiceIdentityVerificationResponseDto;

  factory NiceIdentityVerificationResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$NiceIdentityVerificationResponseDtoFromJson(json);
}

@freezed
abstract class NiceIdentityVerificationResponseDataDto
    with _$NiceIdentityVerificationResponseDataDto {
  const factory NiceIdentityVerificationResponseDataDto({
    @Default('') String authUrl,
  }) = _NiceIdentityVerificationResponseDataDto;

  factory NiceIdentityVerificationResponseDataDto.fromJson(
    Map<String, dynamic> json,
  ) => _$NiceIdentityVerificationResponseDataDtoFromJson(json);
}
