import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings_response_dto.freezed.dart';
part 'notification_settings_response_dto.g.dart';

@freezed
abstract class NotificationSettingsResponseWrapper
    with _$NotificationSettingsResponseWrapper {
  const factory NotificationSettingsResponseWrapper({
    @Default(false) bool success,
    required NotificationSettingsResponseDto data,
  }) = _NotificationSettingsResponseWrapper;

  factory NotificationSettingsResponseWrapper.fromJson(
    Map<String, dynamic> json,
  ) => _$NotificationSettingsResponseWrapperFromJson(json);
}

@freezed
abstract class NotificationSettingsResponseDto
    with _$NotificationSettingsResponseDto {
  const factory NotificationSettingsResponseDto({
    @Default(false) bool notificationEnabled,
  }) = _NotificationSettingsResponseDto;

  factory NotificationSettingsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsResponseDtoFromJson(json);
}
