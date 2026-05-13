import 'package:freezed_annotation/freezed_annotation.dart';

part 'reauth_response_dto.freezed.dart';
part 'reauth_response_dto.g.dart';

@freezed
abstract class ReauthResponseWrapper with _$ReauthResponseWrapper {
  const factory ReauthResponseWrapper({required ReauthResponseDto data}) =
      _ReauthResponseWrapper;

  factory ReauthResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$ReauthResponseWrapperFromJson(json);
}

@freezed
abstract class ReauthResponseDto with _$ReauthResponseDto {
  const factory ReauthResponseDto({required String reauthKey}) =
      _ReauthResponseDto;

  factory ReauthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ReauthResponseDtoFromJson(json);
}
