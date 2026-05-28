import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/fcm/domain/enums/fcm_target_page.dart';

part 'fcm_notification_payload.freezed.dart';
part 'fcm_notification_payload.g.dart';

FcmTargetPage _fcmPageFromJson(String? value) {
  return FcmTargetPage.fromCode(value);
}

String _fcmPageToJson(FcmTargetPage value) {
  return value.code;
}

int? _nullableIntFromJson(Object? value) {
  if (value == null) return null;
  final text = value.toString().trim();
  if (text.isEmpty) return null;
  return int.tryParse(text);
}

String? _nullableIntToJson(int? value) {
  return value?.toString();
}

@freezed
abstract class FcmNotificationPayload with _$FcmNotificationPayload {
  const FcmNotificationPayload._();

  const factory FcmNotificationPayload({
    required FcmNotificationContent notification,
    required FcmNotificationData data,
  }) = _FcmNotificationPayload;

  factory FcmNotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$FcmNotificationPayloadFromJson(json);

  factory FcmNotificationPayload.fromRemoteMessage(RemoteMessage message) {
    final data = message.data;

    return FcmNotificationPayload(
      notification: FcmNotificationContent(
        title: message.notification?.title ?? '',
        body: message.notification?.body ?? '',
      ),
      data: FcmNotificationData(
        notificationId: _parseInt(data['notificationId']),
        page: FcmTargetPage.fromCode(data['page']),
        referenceId: _parseInt(data['referenceId']),
      ),
    );
  }

  String toPrettyJson() {
    return const JsonEncoder.withIndent('  ').convert(toJson());
  }

  static int? _parseInt(Object? value) {
    if (value == null) return null;
    return int.tryParse(value.toString());
  }
}

@freezed
abstract class FcmNotificationContent with _$FcmNotificationContent {
  const factory FcmNotificationContent({
    required String title,
    required String body,
  }) = _FcmNotificationContent;

  factory FcmNotificationContent.fromJson(Map<String, dynamic> json) =>
      _$FcmNotificationContentFromJson(json);
}

@freezed
abstract class FcmNotificationData with _$FcmNotificationData {
  const FcmNotificationData._();

  const factory FcmNotificationData({
    @JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson)
    int? notificationId,
    @JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson)
    required FcmTargetPage page,
    @JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson)
    int? referenceId,
  }) = _FcmNotificationData;

  factory FcmNotificationData.fromJson(Map<String, dynamic> json) =>
      _$FcmNotificationDataFromJson(json);
}
