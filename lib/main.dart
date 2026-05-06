import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/services/storage_service.dart';

const FirebaseOptions _androidFirebaseOptions = FirebaseOptions(
  apiKey: 'AIzaSyCiLqO9a2wDMSHV_KtYWRLyadgUL5keAPc',
  appId: '1:769059168324:android:1c9b305db1a12475159c11',
  messagingSenderId: '769059168324',
  projectId: 'moding-application',
  storageBucket: 'moding-application.firebasestorage.app',
);

FirebaseOptions? _firebaseOptionsForCurrentPlatform() {
  if (kIsWeb) return null;
  if (defaultTargetPlatform == TargetPlatform.android) {
    return _androidFirebaseOptions;
  }
  return null;
}

/// 백그라운드 핸들러
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  final options = _firebaseOptionsForCurrentPlatform();
  await Firebase.initializeApp(options: options);
  print("백그라운드 메시지: ${message.messageId}");
}

void main() async {
  // 앱 시작 시 상태바 스타일 고정
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light, // 안드로이드용
      statusBarBrightness: Brightness.dark, // iOS용
    ),
  );

  testNetwork();

  //앱 시작시 딱 한번 호출
  await StorageService.init();

  // 플러터가 첫 화면(커스텀 스플래시)을 그릴 때까지 네이티브 스플래시를 유지합니다.
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // 파이어베이스 초기화
  WidgetsFlutterBinding.ensureInitialized();
  final options = _firebaseOptionsForCurrentPlatform();
  await Firebase.initializeApp(options: options);

  // 백그라운드 핸들러 등록
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // 토큰 추출
  String? token = await FirebaseMessaging.instance.getToken();
  print("FCM Token: $token");

  runApp(const ProviderScope(child: App()));
}

Future<void> testNetwork() async {
  print('URL = http://moding.iiiii.info:8081');

  try {
    final result = await InternetAddress.lookup('moding.iiiii.info');
    print('DNS OK: $result');
  } catch (e) {
    print('DNS FAIL: $e');
  }
}
