import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/identity_verification/domain/entities/identity_verification_page_params.dart';
import 'package:moding_application/features/seller_web/presentation/seller_web_bridge_service.dart';
import 'package:moding_application/features/seller_web/presentation/seller_web_page_params.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class SellerWebPage extends StatefulWidget {
  const SellerWebPage({super.key, required this.params});

  final SellerWebPageParams params;

  @override
  State<SellerWebPage> createState() => _SellerWebPageState();
}

class _SellerWebPageState extends State<SellerWebPage> {
  late final WebViewController _controller;
  bool _isLoading = true;
  DateTime? _lastBackPressed;
  String _currentWebMenu = 'dashboard';
  bool _didDispatchPendingCommand = false;

  void _handleBridgeMessage(String rawMessage) {
    debugPrint('App에서 수신한 메시지: $rawMessage');

    String messageType = rawMessage;
    Map<String, dynamic>? payload;

    try {
      final decoded = jsonDecode(rawMessage);
      if (decoded is Map<String, dynamic>) {
        messageType = decoded['type']?.toString() ?? rawMessage;
        final rawPayload = decoded['payload'];
        if (rawPayload is Map) {
          payload = Map<String, dynamic>.from(rawPayload);
        }
      }
    } catch (_) {
      // 기존 문자열 메시지와의 하위 호환을 유지합니다.
    }

    if (!mounted) {
      return;
    }

    final bool isFailurePayload = payload?['success'] == false;
    final String payloadMessage = payload?['message']?.toString().trim() ?? '';

    switch (messageType) {
      case 'menuChanged':
        final menu = payload?['menu']?.toString();
        if (menu != null && menu.isNotEmpty) {
          _currentWebMenu = menu;
        }
        return;
      case 'webMainReady':
        _dispatchPendingCommandWithDelay();
        return;
      case 'loginSuccess':
      case 'goMain':
        final route = payload?['route']?.toString() ?? '/main';
        context.go(route);
        return;
      case 'openIdentityVerification':
        final successRoute =
            payload?['successRoute']?.toString() ?? '/edit_my_info';
        context.push(
          '/identity_verification',
          extra: IdentityVerificationPageParams(successRoute: successRoute),
        );
        return;
      case 'error':
      case 'apiError':
      case 'showError':
      case 'showErrorDialog':
      case 'showDialog':
        _showBridgeErrorDialog(payloadMessage);
        return;
    }

    if (isFailurePayload && payloadMessage.isNotEmpty) {
      _showBridgeErrorDialog(payloadMessage);
    }
  }

  Future<void> _showBridgeErrorDialog(String message) async {
    if (!mounted || message.isEmpty) {
      return;
    }

    await CommonDialog.show(
      context,
      title: '확인',
      isSuccess: false,
      message: message,
    );
  }

  @override
  void initState() {
    super.initState();
    SellerWebBridgeService.instance.registerDispatcher(_dispatchCommand);

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
          _handleBridgeMessage(message.message);
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

    final sellerUri = Uri.parse(AppHttpUrl.sellerPageUrl).replace(
      queryParameters: {
        if (widget.params.webViewToken.trim().isNotEmpty)
          'webViewToken': widget.params.webViewToken.trim(),
        if (widget.params.targetPath?.trim().isNotEmpty ?? false)
          'sellerPath': widget.params.targetPath!.trim(),
        if (widget.params.mainMenu?.trim().isNotEmpty ?? false)
          'sellerMenu': widget.params.mainMenu!.trim(),
      },
    );

    _currentWebMenu = widget.params.mainMenu?.trim().isNotEmpty == true
        ? widget.params.mainMenu!.trim()
        : (widget.params.targetPath?.trim().isNotEmpty ?? false)
        ? 'target'
        : 'dashboard';

    _controller.loadRequest(sellerUri);
  }

  @override
  void dispose() {
    SellerWebBridgeService.instance.unregisterDispatcher(_dispatchCommand);
    super.dispose();
  }

  Future<void> _dispatchPendingCommandWithDelay() async {
    if (_didDispatchPendingCommand) {
      return;
    }

    final targetPath = widget.params.targetPath?.trim();
    final mainMenu = widget.params.mainMenu?.trim();
    final hasTargetPath = targetPath != null && targetPath.isNotEmpty;
    final hasMainMenu = mainMenu != null && mainMenu.isNotEmpty;

    if (!hasTargetPath && !hasMainMenu) {
      return;
    }

    _didDispatchPendingCommand = true;
    await Future.delayed(const Duration(milliseconds: 900));

    if (!mounted) {
      return;
    }

    final command = jsonEncode({
      'type': hasTargetPath ? 'navigateToPath' : 'selectMainMenu',
      'payload': hasTargetPath ? {'path': targetPath} : {'menu': mainMenu},
    });

    await _controller.runJavaScript(
      "window.postMessage(${jsonEncode(command)}, '*');",
    );
  }

  Future<void> _dispatchCommand(SellerWebPageParams params) async {
    final targetPath = params.targetPath?.trim();
    final mainMenu = params.mainMenu?.trim();
    final hasTargetPath = targetPath != null && targetPath.isNotEmpty;
    final hasMainMenu = mainMenu != null && mainMenu.isNotEmpty;

    if (!hasTargetPath && !hasMainMenu) {
      await _controller.runJavaScript(
        "window.postMessage(${jsonEncode(jsonEncode({
          'type': 'selectMainMenu',
          'payload': {'menu': 'dashboard'},
        }))}, '*');",
      );
      return;
    }

    final command = jsonEncode({
      'type': hasTargetPath ? 'navigateToPath' : 'selectMainMenu',
      'payload': hasTargetPath ? {'path': targetPath} : {'menu': mainMenu},
    });

    _currentWebMenu = hasMainMenu ? mainMenu : 'target';

    await _controller.runJavaScript(
      "window.postMessage(${jsonEncode(command)}, '*');",
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        _handleBackPressed();
      },
      child: Scaffold(
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
      ),
    );
  }

  Future<void> _handleBackPressed() async {
    final canGoBack = await _controller.canGoBack();
    if (canGoBack) {
      await _controller.goBack();
      return;
    }

    if (_currentWebMenu != 'dashboard') {
      _currentWebMenu = 'dashboard';
      await _controller.loadRequest(Uri.parse(AppHttpUrl.sellerPageUrl));
      return;
    }

    if (!mounted) return;

    final now = DateTime.now();
    if (_lastBackPressed == null ||
        now.difference(_lastBackPressed!) > const Duration(seconds: 2)) {
      _lastBackPressed = now;
      _showIosToast('한번더 뒤로가기하면 구매자로 전환됩니다.');
      return;
    }

    if (!mounted) return;
    context.go('/main');
  }

  void _showIosToast(String message) {
    final overlay = Overlay.of(context);

    final entry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 150,
        left: 40,
        right: 40,
        child: Material(
          color: Colors.transparent,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                message,
                style: context.bodySmall.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(entry);

    Future.delayed(const Duration(seconds: 2), () {
      entry.remove();
    });
  }
}
