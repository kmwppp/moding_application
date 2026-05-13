import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moding_application/core/constants/app_keys.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/order/domain/enums/nice_payments_method.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/presentation/dialog/common_dialog.dart';

class OrderPaymentWebviewPage extends StatefulWidget {
  const OrderPaymentWebviewPage({
    super.key,
    required this.amount,
    required this.goodsName,
    required this.method,
    this.vbankHolder,
    required this.paymentCode,
  });

  final int amount;
  final String goodsName;
  final NicePaymentsMethod method;
  final String? vbankHolder;
  final String paymentCode;

  @override
  State<OrderPaymentWebviewPage> createState() =>
      _OrderPaymentWebviewPageState();
}

class _OrderPaymentWebviewPageState extends State<OrderPaymentWebviewPage> {
  late final WebViewController controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    final uri = Uri.parse('http://moding.iiiii.info:8001/pg.html').replace(
      queryParameters: {
        'clientId': AppKeys.niceClientKey,
        'method': widget.method.name,
        'orderId': widget.paymentCode,
        'amount': '${widget.amount}',
        'goodsName': widget.goodsName,
        'vbankHolder': widget.vbankHolder,
      },
    );

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() => isLoading = true);
          },
          onPageFinished: (url) async {
            setState(() => isLoading = false);

            await Future.delayed(const Duration(milliseconds: 300));

            await controller.runJavaScript("""
              if (typeof serverAuth === 'function') {
                serverAuth();
              }
            """);
          },
          onNavigationRequest: (request) {
            // 👉 returnUrl 감지 (결제 완료)
            if (request.url.contains('serverAuth')) {
              Navigator.pop(context, request.url);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..addJavaScriptChannel(
        'PaymentBridge',
        onMessageReceived: (JavaScriptMessage message) {
          final paymentId = message.message;
          appLog("paymentId 수신: $paymentId");
          if (paymentId == "-1") {
            CommonDialog.show(
              context,
              title: "실패",
              isSuccess: false,
              message: "결제를 다시 요청해주세요.",
            );
          } else {
            // context.go('/payment_complete/$paymentId');
            Navigator.pop(context, paymentId);
          }
        },
      )
      ..loadRequest(uri);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            WebViewWidget(controller: controller),
            if (isLoading) const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
