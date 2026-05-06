import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/fcm_initializer.dart';
import 'package:moding_application/router/router.dart';

import 'core/constants/app_colors.dart';
import 'core/presentation/widgets/keyboard_dismiss_on_tap.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return FCMInitializer(
      child: MaterialApp.router(
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        builder: (context, child) {
          return KeyboardDismissOnTap(child: child ?? const SizedBox.shrink());
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: AppColors.pointColor,
            selectionHandleColor: AppColors.pointColor,
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: AppColors.primary, // 👉 원하는 색
          ),
          splashColor: AppColors.primary.withOpacity(0.2),
          highlightColor: AppColors.primary.withOpacity(0.1),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        ),
        // --- 한국어 설정을 위한 핵심 코드 ---
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ko', 'KR'), // 한국어
          Locale('en', 'US'), // 영어 (선택 사항)
        ],
        locale: const Locale('ko', 'KR'), // 기본 언어를 한국어로 강제 설정
      ),
    );
  }
}
