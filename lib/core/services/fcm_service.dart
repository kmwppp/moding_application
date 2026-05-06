import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> requestPermission() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    badge: true,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('사용자가 알림 허용');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('임시 허용');
  } else {
    print('알림 거부됨');
  }
}
