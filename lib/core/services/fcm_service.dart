import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:moding_application/core/utils/log_util.dart';

Future<void> requestPermission() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    badge: true,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    appLog('사용자가 알림 허용');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    appLog('임시 허용');
  } else {
    appLog('알림 거부됨');
  }
}
