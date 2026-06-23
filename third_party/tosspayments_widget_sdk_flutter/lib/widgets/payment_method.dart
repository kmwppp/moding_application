import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/utils/navigate.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/widget_container.dart';

import '../model/payment_widget_options.dart';
import '../model/selected_payment_method.dart';
import '../model/tosspayments_result.dart';
import '../pages/payment_request_page.dart';
import '../webview/javascript_channel.dart';
import '../webview/payment_window_in_app_webview.dart';

class PaymentMethodWidget extends WidgetContainer {
  final void Function(String)? onCustomRequested;
  final void Function(String)? onCustomPaymentMethodSelected;
  final void Function(String)? onCustomPaymentMethodUnselected;

  PaymentMethodWidget(
      {required PaymentWidget paymentWidget,
      required String selector,
      this.onCustomRequested,
      this.onCustomPaymentMethodSelected,
      this.onCustomPaymentMethodUnselected})
      : super(key: paymentWidget.getGlobalKey<PaymentMethodWidgetState>(selector), paymentWidget: paymentWidget);

  @override
  WidgetContainerState createState() => PaymentMethodWidgetState();
}

class PaymentMethodWidgetState extends WidgetContainerState {
  Amount? amount;
  var requestPaymentInProgress = false;

  /// SDK 내부 전용 — 외부(가맹점)에서 접근/수정하지 말 것.
  ///
  /// 현재 이 PaymentMethodWidget 이 띄워놓은 결제창 웹뷰의 key 를 보관한다.
  /// 결제창 push 직전에 세팅되고, pop 이후 finally 에서 null 로 해제된다.
  /// PaymentWidget.handlePaymentRedirect 가 "활성 결제창" 을 찾을 때 이 필드를 읽는다.
  /// 결제창은 동시에 하나만 뜨는 구조이므로 단일 슬롯으로 충분하다.
  GlobalKey<TosspaymentsInAppWebviewState>? activeWebViewKey;

  Future<PaymentMethodWidgetControl> renderPaymentMethods(
      {required Amount amount, RenderPaymentMethodsOptions? options}) async {
    addJavascriptChannels(_methodWidgetJavascriptChannels);
    this.amount = amount;

    final amountJson = jsonEncode(amount.toJson());
    final optionsJson = jsonEncode(options?.toJson() ?? '');

    String renderScript =
        'const paymentMethodWidget = paymentWidget.renderPaymentMethods(\'#payment-method\', $amountJson, $optionsJson);';
    try {
      await renderWidget(renderScript: renderScript);
      return PaymentMethodWidgetControl._(
        updateAmount: _updateAmount,
        getSelectedPaymentMethod: _getSelectedPaymentMethod,
      );
    } catch (fail) {
      return Future.error(fail);
    }
  }

  Future<dynamic> requestPayment({required PaymentInfo paymentInfo}) async {
    orderId = paymentInfo.orderId;

    Map<String, dynamic> payload = paymentInfo.toJson();
    payload['amount'] = amount;
    payload['successUrl'] = 'tosspayments://payment/flutter/success';
    payload['failUrl'] = 'tosspayments://payment/flutter/fail';
    payload['pendingUrl'] = 'tosspayments://payment/flutter/pending';
    return evaluateJavascriptFuture("paymentWidget.requestPaymentForNativeSDK(${jsonEncode(payload)})", 'payment');
  }

  Future<void> _updateAmount({required num amount}) async {
    await evaluateJavascriptWithResolve('paymentMethodWidget.updateAmount($amount)');
  }

  Future<SelectedPaymentMethod> _getSelectedPaymentMethod() async {
    return SelectedPaymentMethod.fromJson(
        await evaluateJavascriptWithResolve('paymentMethodWidget.getSelectedPaymentMethod()'));
  }

  Set<JavascriptChannel> get _methodWidgetJavascriptChannels => {
        JavascriptChannel(
            name: "requestPayments",
            onReceived: (jsonObject) async {
              var paymentHtml = jsonObject['html'];

              if (requestPaymentInProgress) return;
              requestPaymentInProgress = true;
              // 결제창 웹뷰의 key 를 이 State 가 소유한다.
              // PaymentWidget.handlePaymentRedirect 가 이 필드를 통해 웹뷰에 도달한다.
              final webViewKey = GlobalKey<TosspaymentsInAppWebviewState>();
              activeWebViewKey = webViewKey;
              try {
                var result = await navigateToWebviewByPlatform(
                    context,
                    RequestPaymentPage(
                        data: PaymentWidgetRequestData(
                      paymentHtml: paymentHtml,
                      orderId: orderId,
                      domain: domain,
                      webViewKey: webViewKey,
                    )));
                if (result != null) {
                  if (result.runtimeType == Success) {
                    eventManager.triggerEvent('payment', Result(success: result));
                  } else if (result.runtimeType == Pending) {
                    eventManager.triggerEvent('payment', Result(pending: result));
                  } else if (result.runtimeType == Fail) {
                    eventManager.triggerEvent('payment', Result(fail: result));
                  }
                } else {
                  // 하드웨어 백버튼 or 모달 드래그해서 닫은 경우
                  eventManager.triggerEvent(
                      'payment', Result(fail: Fail("PAY_PROCESS_CANCELED", "사용자가 결제를 취소하였습니다", orderId)));
                }
              } finally {
                // 결제창이 중첩으로 다른 인스턴스를 열어 덮어쓴 경우를 대비해
                // "자기가 세팅한 key" 만 비운다.
                if (identical(activeWebViewKey, webViewKey)) {
                  activeWebViewKey = null;
                }
                requestPaymentInProgress = false;
              }
            }),
        JavascriptChannel(
            name: "error",
            onReceived: (jsonObject) {
              String errorCode = jsonObject['errorCode'] ?? '';
              String errorMessage = jsonObject['errorMessage'] ?? '';
              String orderId = jsonObject['orderId'] ?? '';
              eventManager.triggerError('widgetStatus', Fail(errorCode, errorMessage, orderId));
              eventManager.triggerEvent('payment', Result(fail: Fail(errorCode, errorMessage, orderId)));
            }),
        JavascriptChannel(
            name: "customRequest",
            onReceived: (jsonObject) {
              var paymentMethodKey = jsonObject['paymentMethodKey'];
              (widget as PaymentMethodWidget).onCustomRequested?.call(paymentMethodKey);
            }),
        JavascriptChannel(
            name: "customPaymentMethodSelect",
            onReceived: (jsonObject) {
              var paymentMethodKey = jsonObject['paymentMethodKey'];
              (widget as PaymentMethodWidget).onCustomPaymentMethodSelected?.call(paymentMethodKey);
            }),
        JavascriptChannel(
            name: "customPaymentMethodUnselect",
            onReceived: (jsonObject) {
              var paymentMethodKey = jsonObject['paymentMethodKey'];
              (widget as PaymentMethodWidget).onCustomPaymentMethodUnselected?.call(paymentMethodKey);
            }),
        JavascriptChannel(
            name: "changePaymentMethod",
            onReceived: (jsonObject) {
              // var params = json.decode(message.message)['params'];
              // eventManager.triggerEvent('changePaymentMethod', event)
              // selectedPaymentMethod = SelectedPaymentMethod.fromJson(params);
            }),
        JavascriptChannel(
            name: "requestHTML",
            onReceived: (jsonObject) async {
              var brandPayHTML = jsonObject['html'];

              if (requestPaymentInProgress) return;
              requestPaymentInProgress = true;
              // BrandPay 경로는 handlePaymentRedirect 대상이 아니므로
              // webViewKey 를 생성/등록하지 않는다 (PaymentWidgetRequestData.webViewKey 는 nullable).
              var result = await navigateToWebviewByPlatform(
                  context,
                  RequestPaymentPage(
                      data: PaymentWidgetRequestData(
                    paymentHtml: brandPayHTML,
                    orderId: orderId,
                    domain: domain,
                  )));
              if (result != null) {
                if (result.runtimeType == String) {
                  evaluateJavascript(result);
                }
              }
              requestPaymentInProgress = false;
            }),
      };

  @override
  void initState() {
    super.initState();
    eventManager.addEvent('payment');
  }
}

/// [renderPaymentMethod]로 얻을 수 있는 클래스입니다.
/// [updateAmount] : 결제 금액을 변경합니다. 변경된 금액에 따라 UI도 업데이트 됩니다(할부 적용, 즉시할인 적용).
/// [getSelectedPaymentMethod] : 고객이 선택한 결제수단을 반환합니다.
class PaymentMethodWidgetControl {
  final Future<void> Function({required num amount}) updateAmount;
  final Future<SelectedPaymentMethod> Function() getSelectedPaymentMethod;

  PaymentMethodWidgetControl._({
    required this.updateAmount,
    required this.getSelectedPaymentMethod,
  });
}
