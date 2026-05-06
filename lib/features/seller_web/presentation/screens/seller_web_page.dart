import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class SellerWebPage extends StatefulWidget {
  const SellerWebPage({super.key});

  @override
  State<SellerWebPage> createState() => _SellerWebPageState();
}

class _SellerWebPageState extends State<SellerWebPage> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    late final PlatformWebViewControllerCreationParams params;

    if (Platform.isIOS) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    _controller = WebViewController.fromPlatformCreationParams(params)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..addJavaScriptChannel(
        'AppBridge',
        onMessageReceived: (JavaScriptMessage message) {
          // message 자체는 객체이므로 .message를 찍어야 실제 텍스트가 보입니다.
          debugPrint('App에서 수신한 메시지: ${message.message}');

          if (message.message == 'goMain') {
            if (mounted) {
              context.go('/main');
            }
          }
        },
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            if (mounted) {
              setState(() => _isLoading = false);
            }
          },
        ),
      );

    if (_controller.platform is AndroidWebViewController) {
      final androidController =
          _controller.platform as AndroidWebViewController;

      androidController
        ..setUseWideViewPort(true)
        ..setTextZoom(100)
        ..setUserAgent(
          'Mozilla/5.0 (Linux; Android 14; Mobile) AppleWebKit/537.36 '
          '(KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36',
        );
    }

    if (_controller.platform is WebKitWebViewController) {
      final iosController = _controller.platform as WebKitWebViewController;

      iosController.setUserAgent(
        'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) '
        'AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 '
        'Mobile/15E148 Safari/604.1',
      );
    }

    _controller.loadRequest(Uri.parse(AppHttpUrl.sellerPageUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(child: WebViewWidget(controller: _controller)),
            if (_isLoading) const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
