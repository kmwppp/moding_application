import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:moding_application/fcm_initializer.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/presentation/providers/nice_callback_result_provider.dart';
import 'package:moding_application/features/order/presentation/providers/inicis_callback_result_provider.dart';
import 'package:moding_application/router/router.dart';

import 'core/constants/app_colors.dart';
import 'core/presentation/widgets/keyboard_dismiss_on_tap.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  StreamSubscription<Uri>? _deepLinkSubscription;

  @override
  void initState() {
    super.initState();
    _deepLinkSubscription = AppLinks().uriLinkStream.listen(_onDeepLink);
  }

  void _onDeepLink(Uri uri) {
    if (uri.scheme == 'modingapp' &&
        uri.host == 'payment' &&
        uri.path == '/result') {
      ref.read(inicisCallbackResultProvider.notifier).set(uri);
      return;
    }

    if (uri.scheme != 'moding' || uri.host != 'auth' || uri.path != '/nice') {
      return;
    }

    final error = uri.queryParameters['error'];
    final resultCode = uri.queryParameters['result'];
    final NiceIdentityVerificationResult result;

    if (error != null && error.isNotEmpty) {
      result = NiceIdentityVerificationResult(success: false, error: error);
    } else if (resultCode != null && resultCode.isNotEmpty) {
      result = NiceIdentityVerificationResult(
        success: true,
        result: resultCode,
      );
    } else {
      result = NiceIdentityVerificationResult(
        success: true,
        key: uri.queryParameters['key'],
        name: uri.queryParameters['name'],
        phone: uri.queryParameters['phone'],
      );
    }

    ref.read(niceCallbackResultProvider.notifier).set(result);
  }

  @override
  void dispose() {
    _deepLinkSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
            ),
          ),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: AppColors.pointColor,
            selectionHandleColor: AppColors.pointColor,
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: AppColors.primary,
          ),
          splashColor: AppColors.primary.withValues(alpha: 0.2),
          highlightColor: AppColors.primary.withValues(alpha: 0.1),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        ),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('ko', 'KR'), Locale('en', 'US')],
        locale: const Locale('ko', 'KR'),
      ),
    );
  }
}
