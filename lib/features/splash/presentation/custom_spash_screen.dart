import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({super.key});

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  Future<void> _startTimer() async {
    // 2. 네이티브 스플래시 제거
    FlutterNativeSplash.remove();

    // 1. 브랜드 노출을 위한 2초 대기
    await Future.delayed(const Duration(seconds: 2));

    // 3. 홈 화면으로 이동 (go_router 방식)
    if (mounted) {
      context.go('/main');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // App 테마와 동일하게 설정됨
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo4.png", width: 140),
            const SizedBox(height: 30),
            Text(
              "모딩에 오신것을 환영합니다.",
              style: context.title.copyWith(color: Colors.black),
            ),
            const SizedBox(height: 30),
            // 로딩 애니메이션
            const CircularProgressIndicator(
              strokeWidth: 2,
              color: Color(0xFF1A1A1A),
            ),
          ],
        ),
      ),
    );
  }
}
