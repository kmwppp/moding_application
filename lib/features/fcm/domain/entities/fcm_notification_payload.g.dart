// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_notification_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FcmNotificationPayload _$FcmNotificationPayloadFromJson(
  Map<String, dynamic> json,
) => _FcmNotificationPayload(
  notification: FcmNotificationContent.fromJson(
    json['notification'] as Map<String, dynamic>,
  ),
  data: FcmNotificationData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FcmNotificationPayloadToJson(
  _FcmNotificationPayload instance,
) => <String, dynamic>{
  'notification': instance.notification,
  'data': instance.data,
};

_FcmNotificationContent _$FcmNotificationContentFromJson(
  Map<String, dynamic> json,
) => _FcmNotificationContent(
  title: json['title'] as String,
  body: json['body'] as String,
);

Map<String, dynamic> _$FcmNotificationContentToJson(
  _FcmNotificationContent instance,
) => <String, dynamic>{'title': instance.title, 'body': instance.body};

_FcmNotificationData _$FcmNotificationDataFromJson(Map<String, dynamic> json) =>
    _FcmNotificationData(
      notificationId: _nullableIntFromJson(json['notificationId']),
      page: _fcmPageFromJson(json['page'] as String?),
      referenceId: _nullableIntFromJson(json['referenceId']),
    );

Map<String, dynamic> _$FcmNotificationDataToJson(
  _FcmNotificationData instance,
) => <String, dynamic>{
  'notificationId': _nullableIntToJson(instance.notificationId),
  'page': _fcmPageToJson(instance.page),
  'referenceId': _nullableIntToJson(instance.referenceId),
};
