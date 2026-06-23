import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_url.dart';
import 'package:tosspayments_widget_sdk_flutter/webview/payment_window_in_app_webview.dart';

import '../webview/javascript_channel.dart';

class RequestPaymentPage extends StatefulWidget {
  const RequestPaymentPage({super.key, required this.data});

  final PaymentWidgetRequestData data;

  @override
  State<RequestPaymentPage> createState() => _RequestPaymentPageState();
}

// 결제창 모달의 State.
//
// 웹뷰 GlobalKey 의 생명주기 관리는 이 페이지를 띄운 PaymentMethodWidgetState 가
// 소유한다. 여기는 주입받은 key 로 웹뷰를 꽂고 결과 URL 분기만 담당하는 얇은 view.
class _RequestPaymentPageState extends State<RequestPaymentPage> {
  bool _isErrorProcessing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: TosspaymentsInAppWebview(
      key: widget.data.webViewKey,
      initialHtml: widget.data.paymentHtml,
      handleOverrideUrl: (url) => handleOverrideUrl(context, url),
      domain: widget.data.domain,
      baseJavascriptChannel: brandPayWebPageJavascriptChannels(context),
      gestureEnabled: true,
    )));
  }

  Future<bool> handleOverrideUrl(BuildContext context, String? requestedUrl) async {
    if (requestedUrl == null) {
      return false;
    } else {
      Success? success = successFromUrl(requestedUrl);
      Fail? fail = failFromUrl(requestedUrl);
      Pending? pending = pendingFromUrl(requestedUrl);
      bool isCanceled;
      try {
        isCanceled = Uri.parse(requestedUrl).queryParameters['code']?.toUpperCase() == 'PAY_PROCESSED_CANCELED';
      } catch (_) {
        isCanceled = false;
      }

      if (success != null) {
        Navigator.pop(context, success);
        return true;
      } else if (pending != null) {
        Navigator.pop(context, pending);
        return true;
      } else if (fail != null || isCanceled) {
        Navigator.pop(context, fail);
        return true;
      }

      final convertUrl = ConvertUrl(requestedUrl);

      final isHtml = requestedUrl.startsWith('data:text/html');
      final isNetworkUrl = convertUrl.appScheme == 'http' || convertUrl.appScheme == 'https';
      final isJavascriptUrl = requestedUrl.startsWith('javascript:');
      bool isIntent;
      try {
        isIntent = Uri.parse(requestedUrl).scheme == 'intent';
      } catch (_) {
        isIntent = false;
      }
      final isMarket = convertUrl.appScheme == 'market' || convertUrl.appScheme == 'onestore';

      if (isHtml || isJavascriptUrl) {
        return false;
      } else if (isIntent || isMarket) {
        await convertUrl.launchApp();
        return true;
      } else if (isNetworkUrl) {
        final host = Uri.tryParse(requestedUrl)?.host.toLowerCase() ?? '';
        if (host == 'testflight.apple.com') {
          await convertUrl.launchApp();
          return true;
        }
        if (Platform.isAndroid) {
          if (requestedUrl.startsWith('https://onesto.re') || requestedUrl.startsWith('https://m.onestore')) {
            await convertUrl.launchApp();
            return true;
          }
        }
        return false;
      } else {
        await convertUrl.launchApp();
        return true;
      }
    }
  }

  Set<JavascriptChannel> brandPayWebPageJavascriptChannels(BuildContext context) =>
      {
        JavascriptChannel(
            name: "evaluateJavascriptOnPaymentMethodWidget",
            onReceived: (jsonObject) async {
              if (_isErrorProcessing) {
                return;
              }
              Navigator.pop(context, jsonObject['script']);
            }),
        JavascriptChannel(
            name: "error",
            onReceived: (jsonObject) async {
              _isErrorProcessing = true;
              var errorCode = jsonObject['errorCode'];
              var errorMessage = jsonObject['errorMessage'];
              var orderId = jsonObject['orderId'];
              var fail = Fail(errorCode, errorMessage, orderId);
              Navigator.pop(context, fail);
            })
      };
}

class PaymentWidgetRequestData {
  final String paymentHtml;
  final String orderId;
  final String? domain;

  // 결제창 웹뷰의 key. nullable 이다.
  //   - non-null: 이 결제창은 PaymentWidget.handlePaymentRedirect 타깃이다.
  //     key 의 생명주기는 결제창을 띄운 PaymentMethodWidgetState 가 소유하며,
  //     PaymentWidget.handlePaymentRedirect 가 활성 결제창을 찾아 loadUrl 할 때 이 key 를 거쳐간다.
  //   - null: 외부 앱에서의 리다이렉트 복귀 흐름이 없는 결제창(예: BrandPay HTML).
  //     웹뷰는 Flutter 기본 관례대로 key 없이 생성된다.
  final GlobalKey<TosspaymentsInAppWebviewState>? webViewKey;

  PaymentWidgetRequestData({
    required this.paymentHtml,
    required this.orderId,
    required this.domain,
    this.webViewKey,
  });
}
