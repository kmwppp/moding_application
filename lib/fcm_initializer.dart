import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/navigation/app_navigator.dart';
import 'package:moding_application/core/utils/log_util.dart';

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

    await _localNotifications.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: (response) {
        final payload = response.payload;
        if (payload == null || payload.isEmpty) return;
        _openFcmTestPage(payload);
      },
    );

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
    appLog('권한 상태: ${settings.authorizationStatus}');
  }

  /// 🔑 토큰
  Future<void> _getToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    appLog("FCM Token: $token");
  }

  /// 📩 foreground 메시지
  void _setupForegroundListener() {
    FirebaseMessaging.onMessage.listen((message) async {
      appLog("Foreground 메시지");
      appLog(message.notification?.title);

      final notification = message.notification;
      if (notification == null) return;
      final payload = _buildPayloadText(message);

      await _localNotifications.show(
        id: notification.hashCode,
        title: notification.title,
        body: notification.body,
        payload: payload,
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
      appLog("알림 클릭됨");
      _openFcmTestPage(_buildPayloadText(message));
    });

    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message == null) return;
      _openFcmTestPage(_buildPayloadText(message));
    });
  }

  String _buildPayloadText(RemoteMessage message) {
    final payload = <String, dynamic>{
      'data': message.data,
      'notification': {
        'title': message.notification?.title,
        'body': message.notification?.body,
      },
    };

    return const JsonEncoder.withIndent('  ').convert(payload);
  }

  void _openFcmTestPage(String payloadText) {
    final context = rootNavigatorKey.currentContext;
    if (context == null || !context.mounted) return;

    GoRouter.of(context).push('/fcm_test', extra: payloadText);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
