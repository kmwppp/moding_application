import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:moding_application/core/config/app_config.dart';
import 'package:moding_application/core/constants/app_keys.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/order/presentation/providers/inicis_callback_result_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InicisPaymentWebviewPage extends ConsumerStatefulWidget {
  const InicisPaymentWebviewPage({
    super.key,
    required this.paymentMethod,
    required this.paymentCode,
    required this.amount,
    required this.goodsName,
    required this.buyerName,
    required this.signature,
    required this.timestamp,
  });

  final String paymentMethod;
  final String paymentCode;
  final int amount;
  final String goodsName;
  final String buyerName;
  final String signature;
  final String timestamp;

  @override
  ConsumerState<InicisPaymentWebviewPage> createState() =>
      _InicisPaymentWebviewPageState();
}

class _InicisPaymentWebviewPageState
    extends ConsumerState<InicisPaymentWebviewPage> {
  static const String _inicisCallbackPath = '/api/v1/payments/inicis/callback';
  static const String _inicisWebhookPath = '/api/v1/payments/inicis/webhook';

  late final WebViewController _controller;
  ProviderSubscription<Uri?>? _inicisResultSubscription;
  bool _isLoading = true;

  String get _inicisNextUrl => '${AppConfig.apiBaseUrl}$_inicisCallbackPath';

  String get _inicisNotiUrl => '${AppConfig.apiBaseUrl}$_inicisWebhookPath';

  @override
  void initState() {
    super.initState();
    _inicisResultSubscription = ref.listenManual<Uri?>(
      inicisCallbackResultProvider,
      (previous, next) {
        if (next == null || !mounted) return;
        ref.read(inicisCallbackResultProvider.notifier).clear();
        Navigator.of(context).pop(next.toString());
      },
    );
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) {
            if (!mounted) return;
            setState(() => _isLoading = true);
          },
          onPageFinished: (_) {
            if (!mounted) return;
            setState(() => _isLoading = false);
          },
          onNavigationRequest: (request) {
            final url = request.url;
            appLog('[Inicis] navigation -> $url');

            if (_shouldLaunchExternally(url)) {
              _launchExternal(url);
              return NavigationDecision.prevent;
            }

            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadHtmlString(_buildHtml());
  }

  @override
  void dispose() {
    _inicisResultSubscription?.close();
    super.dispose();
  }

  bool _shouldLaunchExternally(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null) return false;
    final scheme = uri.scheme.toLowerCase();
    if (scheme == 'http' ||
        scheme == 'https' ||
        scheme == 'about' ||
        scheme == 'data') {
      return false;
    }
    return true;
  }

  Future<void> _launchExternal(String url) async {
    if (url.startsWith('intent://')) {
      try {
        final intentSchemeLaunched = await launchUrlString(
          url,
          mode: LaunchMode.externalApplication,
        );
        if (intentSchemeLaunched) {
          return;
        }
      } on PlatformException {
        final appSchemeUrl = _extractIntentAppSchemeUrl(url);
        if (appSchemeUrl != null) {
          try {
            final launched = await launchUrlString(
              appSchemeUrl,
              mode: LaunchMode.externalApplication,
            );
            if (launched) {
              return;
            }
          } on PlatformException {
            appLog('[Inicis] app scheme launch failed -> $appSchemeUrl');
          }
        }
      }

      final packageName = _extractIntentPackageName(url);
      if (packageName != null && packageName.isNotEmpty) {
        try {
          await launchUrlString(
            'market://details?id=$packageName',
            mode: LaunchMode.externalApplication,
          );
        } on PlatformException {
          appLog('[Inicis] market launch failed -> $packageName');
        }
      }
      return;
    }

    final uri = Uri.tryParse(url);
    if (uri == null) return;
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  String? _extractIntentPackageName(String url) {
    final match = RegExp(r';package=([^;]+);').firstMatch(url);
    return match?.group(1);
  }

  String? _extractIntentAppSchemeUrl(String url) {
    final schemeMatch = RegExp(r'scheme=([^;#]+)').firstMatch(url);
    final scheme = schemeMatch?.group(1);
    if (scheme == null || scheme.isEmpty) {
      return null;
    }

    final dataPart = url.substring('intent://'.length).split('#Intent').first;
    return '$scheme://$dataPart';
  }

  String _buildHtml() {
    final fields = <String, String>{
      'P_INI_PAYMENT': widget.paymentMethod,
      'P_MID': AppKeys.inicisMid,
      'P_OID': widget.paymentCode,
      'P_NOTI': widget.paymentCode,
      'P_AMT': widget.amount.toString(),
      'P_GOODS': widget.goodsName,
      'P_UNAME': widget.buyerName,
      'P_NEXT_URL': _inicisNextUrl,
      'P_TIMESTAMP': widget.timestamp,
      'P_CHKFAKE': widget.signature,
      'P_RESERVED': 'centerCd=Y&amt_hash=Y&iosapp=Y&app_scheme=modingapp://',
    };

    if (widget.paymentMethod == 'VBANK') {
      fields['P_NOTI_URL'] = _inicisNotiUrl;
    }

    final escaped = const HtmlEscape(HtmlEscapeMode.element);
    final inputs = fields.entries
        .map(
          (entry) =>
              '<input type="hidden" name="${escaped.convert(entry.key)}" value="${escaped.convert(entry.value)}" />',
        )
        .join('\n');

    return '''
<!DOCTYPE html>
<html>
  <head>
    <meta charset="euc-kr" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>Inicis Payment</title>
    <style>
      body {
        margin: 0;
        font-family: -apple-system, BlinkMacSystemFont, sans-serif;
        background: #ffffff;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        color: #111111;
      }
    </style>
  </head>
  <body onload="document.getElementById('inicisForm').submit();">
    <div>결제 페이지로 이동중입니다...</div>
    <form
      id="inicisForm"
      method="POST"
      action="https://mobile.inicis.com/smart/payment/"
      accept-charset="EUC-KR">
      $inputs
    </form>
  </body>
</html>
''';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('결제 진행')),
      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(controller: _controller),
            if (_isLoading) const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
