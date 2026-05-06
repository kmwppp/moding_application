import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FCMInitializer extends StatefulWidget {
  final Widget child;

  const FCMInitializer({super.key, required this.child});

  @override
  State<FCMInitializer> createState() => _FCMInitializerState();
}

class _FCMInitializerState extends State<FCMInitializer> {
  static const AndroidNotificationChannel _androidChannel =
      AndroidNotificationChannel(
        'high_importance_channel',
        '중요 알림',
        description: '주문 및 서비스 중요 알림을 표시합니다.',
        importance: Importance.max,
      );

  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    _initFCM();
  }

  Future<void> _initFCM() async {
    await _initializeLocalNotifications();
    await _requestPermission();
    await _getToken();
    _setupForegroundListener();
    _setupClickListener();
  }

  Future<void> _initializeLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/launcher_icon',
    );
    const iosSettings = DarwinInitializationSettings();
    const initializationSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(settings: initializationSettings);

    await _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(_androidChannel);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  /// 🔔 권한 요청
  Future<void> _requestPermission() async {
    final settings = await FirebaseMessaging.instance.requestPermission();
    print('권한 상태: ${settings.authorizationStatus}');
  }

  /// 🔑 토큰
  Future<void> _getToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    print("FCM Token: $token");
  }

  /// 📩 foreground 메시지
  void _setupForegroundListener() {
    FirebaseMessaging.onMessage.listen((message) async {
      print("Foreground 메시지");
      print(message.notification?.title);

      final notification = message.notification;
      if (notification == null) return;

      await _localNotifications.show(
        id: notification.hashCode,
        title: notification.title,
        body: notification.body,
        notificationDetails: const NotificationDetails(
          android: AndroidNotificationDetails(
            'high_importance_channel',
            '중요 알림',
            channelDescription: '주문 및 서비스 중요 알림을 표시합니다.',
            importance: Importance.max,
            priority: Priority.high,
            icon: '@mipmap/launcher_icon',
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
      );
    });
  }

  /// 👆 알림 클릭
  void _setupClickListener() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print("알림 클릭됨");
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
