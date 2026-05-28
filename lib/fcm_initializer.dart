import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/navigation/app_navigator.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/alarm/data/repositories/alarm_repository_impl.dart';
import 'package:moding_application/features/alarm/presentation/providers/alarm_refresh_provider.dart';
import 'package:moding_application/features/fcm/domain/entities/fcm_notification_payload.dart';
import 'package:moding_application/features/fcm/domain/enums/fcm_target_page.dart';
import 'package:moding_application/features/profile/domain/enums/approval_status.dart';
import 'package:moding_application/features/seller_web/presentation/utils/open_seller_web_page.dart';
import 'package:moding_application/router/enums/notification_type.dart';

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
        _handlePayloadTap(payload);
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
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
      appLog("APNs Token: $apnsToken");
    }
  }

  /// 📩 foreground 메시지
  void _setupForegroundListener() {
    FirebaseMessaging.onMessage.listen((message) async {
      appLog("Foreground 메시지");
      appLog(message.notification?.title);

      if (mounted) {
        final container = ProviderScope.containerOf(context, listen: false);
        container.read(alarmRefreshProvider.notifier).notifyRefresh();
      }

      final notification = message.notification;
      if (notification == null) return;
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        return;
      }
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
      _handleFcmTap(message);
    });

    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message == null) return;
      _handleFcmTap(message);
    });
  }

  String _buildPayloadText(RemoteMessage message) {
    return FcmNotificationPayload.fromRemoteMessage(message).toPrettyJson();
  }

  void _handleFcmTap(RemoteMessage message) {
    final payload = FcmNotificationPayload.fromRemoteMessage(message);
    _navigateByPayload(payload);
  }

  void _handlePayloadTap(String payloadText) {
    try {
      final payload = FcmNotificationPayload.fromJson(
        Map<String, dynamic>.from(
          jsonDecode(payloadText) as Map<String, dynamic>,
        ),
      );
      _navigateByPayload(payload);
    } catch (e) {
      appLog('FCM payload 파싱 실패: $e');
      _openFcmTestPage(payloadText);
    }
  }

  Future<void> _navigateByPayload(FcmNotificationPayload payload) async {
    final context = rootNavigatorKey.currentContext;
    if (context == null || !context.mounted) return;

    final router = GoRouter.of(context);
    final container = ProviderScope.containerOf(context, listen: false);

    final notificationId = payload.data.notificationId;
    if (notificationId != null) {
      try {
        await container
            .read(alarmRepositoryProvider)
            .patchNotificationRead(notificationId);
      } catch (e) {
        appLog('알림 읽음 처리 실패: $e');
      }
    }

    if (!mounted || !context.mounted) {
      return;
    }

    final referenceId = payload.data.referenceId;

    switch (payload.data.page) {
      case FcmTargetPage.orderDetail:
        if (referenceId != null) {
          router.push('/check_order/$referenceId');
        }
        break;
      case FcmTargetPage.sellerOrderDetail:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerOrderDetail,
          referenceId: referenceId,
        );
        break;
      case FcmTargetPage.claimDetail:
        if (referenceId != null) {
          router.push('/claim_check/$referenceId');
        }
        break;
      case FcmTargetPage.sellerClaimDetail:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerClaimDetail,
          referenceId: referenceId,
        );
        break;
      case FcmTargetPage.productDetail:
        if (referenceId != null) {
          router.push('/product/$referenceId');
        }
        break;
      case FcmTargetPage.sellerProductDetail:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerProductDetail,
          referenceId: referenceId,
        );
        break;
      case FcmTargetPage.sellerProductList:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerProductList,
        );
        break;
      case FcmTargetPage.sellerOrderList:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerOrderList,
        );
        break;
      case FcmTargetPage.sellerHome:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerHome,
        );
        break;
      case FcmTargetPage.sellerTaxInvoice:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerTaxInvoice,
        );
        break;
      case FcmTargetPage.sellerSettlement:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerSettlement,
        );
        break;
      case FcmTargetPage.noticeList:
        router.push('/notification/${NotificationType.NOTIFICATION.name}');
        break;
      case FcmTargetPage.conversionStatus:
        router.push('/seller_conversion_check', extra: ApprovalStatus.REJECTED);
        break;
      case FcmTargetPage.unknown:
        _openFcmTestPage(payload.toPrettyJson());
        break;
    }
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
