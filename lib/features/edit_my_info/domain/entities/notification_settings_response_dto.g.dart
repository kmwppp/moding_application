// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationSettingsResponseWrapper
_$NotificationSettingsResponseWrapperFromJson(Map<String, dynamic> json) =>
    _NotificationSettingsResponseWrapper(
      success: json['success'] as bool? ?? false,
      data: NotificationSettingsResponseDto.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$NotificationSettingsResponseWrapperToJson(
  _NotificationSettingsResponseWrapper instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_NotificationSettingsResponseDto _$NotificationSettingsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _NotificationSettingsResponseDto(
  notificationEnabled: json['notificationEnabled'] as bool? ?? false,
);

Map<String, dynamic> _$NotificationSettingsResponseDtoToJson(
  _NotificationSettingsResponseDto instance,
) => <String, dynamic>{'notificationEnabled': instance.notificationEnabled};
