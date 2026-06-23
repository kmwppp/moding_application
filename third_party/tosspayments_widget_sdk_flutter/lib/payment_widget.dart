import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/widget_container.dart';

/// 토스페이먼츠 결제위젯입니다.
/// [clientKey] : API 키 메뉴에서 확인할 수 있는 클라이언트 키 입니다.
/// [customerKey] : 고객 ID입니다. 충분히 무작위한 고유 값을 넣어야 합니다.
/// [paymentWidgetOptions] : 결제위젯 옵션입니다.
class PaymentWidget {
  final String clientKey;
  final String customerKey;
  final PaymentWidgetOptions? paymentWidgetOptions;

  PaymentWidget({
    required this.clientKey,
    required this.customerKey,
    this.paymentWidgetOptions,
  });

  /// 결제수단 위젯을 렌더링하는 메서드입니다.
  /// [selector] : 렌더링할 위젯의 식별자입니다. UI 트리에 추가한 [PaymentMethodWidget]의 생성자에 넣은 값을 입력합니다.
  /// [amount] : 결제 금액 정보입니다. (금액, 통화, 국가)
  /// [options] : 결제수단 위젯의 렌더링 옵션입니다.
  /// UI 트리에 [selector]을 갖는 [PaymentMethodWidget]이 없는 경우 [Exception]을 발생시킵니다.
  /// 정상적으로 렌더링되면 [PaymentMethodWidgetControl]의 Future를 반환합니다.
  Future<PaymentMethodWidgetControl> renderPaymentMethods({
    required String selector,
    required Amount amount,
    RenderPaymentMethodsOptions? options,
  }) {
    final completer = Completer<PaymentMethodWidgetControl>();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final paymentMethodKey = _widgetKeyMap[selector];
      if (paymentMethodKey is! GlobalKey<PaymentMethodWidgetState>) {
        throw Exception('PaymentMethodWidget with selector \'$selector\' does not exist.');
      }
      (paymentMethodKey.currentState?.renderPaymentMethods(
                amount: amount,
                options: options,
              ) ??
              (throw Exception('PaymentMethod is not rendered. Call \'renderPaymentMethods\' method first.')))
          .then((value) {
        completer.complete(value);
      }, onError: (e) {
        completer.completeError(e);
      });
    });
    return completer.future;
  }

  /// 결제 약관 UI를 렌더링하는 메서드입니다.
  /// [selector] : 렌더링할 위젯의 식별자입니다. UI 트리에 추가한 [AgreementWidget]의 생성자에 넣은 값을 입력합니다.
  /// [options] : 약관 위젯의 렌더링 옵션입니다.
  /// UI 트리에 [selector]을 갖는 [AgreementWidget]이 없는 경우 [Exception] 을 발생시킵니다.
  /// 정상적으로 렌더링되면 [AgreementWidgetControl]의 Future를 반환합니다.
  Future<AgreementWidgetControl> renderAgreement({
    required String selector,
    RenderAgreementOptions? options,
  }) {
    final completer = Completer<AgreementWidgetControl>();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final paymentAgreementKey = _widgetKeyMap[selector];
      if (paymentAgreementKey is! GlobalKey<PaymentAgreementWidgetState>) {
        throw Exception('AgreementWidget with selector \'$selector\' does not exist.');
      }
      (paymentAgreementKey.currentState?.renderAgreement(options: options) ??
              (throw Exception('Agreement is not rendered. Call \'renderAgreement\' method first.')))
          .then((value) {
        completer.complete(value);
      }, onError: (e) {
        completer.completeError(e);
      });
    });
    return completer.future;
  }

  /// 선택한 결제수단의 결제창을 띄우는 메서드입니다.
  /// [paymentInfo] : 결제 정보입니다.
  /// 정상적으로 [PaymentMethodWidget]이 렌더링되지 않았을 경우 [Exception]을 발생시킵니다.
  /// 결제 성공 여부에 따라 [Result]의 Future를 반환합니다.
  Future<Result> requestPayment({required PaymentInfo paymentInfo}) async {
    try {
      final paymentMethodKey =
          _widgetKeyMap.values.firstWhere((element) => element is GlobalKey<PaymentMethodWidgetState>)
              as GlobalKey<PaymentMethodWidgetState>;
      return await paymentMethodKey.currentState?.requestPayment(paymentInfo: paymentInfo) ??
          (throw Exception('PaymentMethod is not rendered. Call \'renderPaymentMethods\' method first.'));
    } catch (_) {
      throw Exception('PaymentMethod is not rendered. Call \'renderPaymentMethods\' method first.');
    }
  }

  final Map<String, GlobalKey<WidgetContainerState>> _widgetKeyMap = {};

  /// 엔텀(Ant/Alipay) 등 앱 연동 결제에서 외부 앱(예: 알리페이)으로부터
  /// 가맹점 앱스킴 형태(`{가맹점앱스킴}://?url={paymentRedirectUrl}`)로
  /// 복귀할 때, 가맹점이 추출한 `paymentRedirectUrl` 을 현재 열려 있는
  /// 결제창 웹뷰에 이어붙이기 위한 SDK 의 **유일한 공개 진입점**이다.
  ///
  /// 가맹점이 해야 할 일:
  ///   1) 자체 앱스킴 intent/Universal Link 핸들러에서 Uri 를 받고
  ///   2) `uri.queryParameters['url']` 로 리다이렉트 URL 을 추출한 뒤
  ///   3) 그 `https://...` 문자열만 이 메서드에 넘긴다.
  ///
  /// SDK 가 앱스킴을 **직접 가로채지 않는 이유**:
  ///   - 앱스킴은 가맹점 앱의 진입점이며 결제 외 다양한 용도(프로모션,
  ///     푸시 랜딩 등)로 가맹점이 이미 사용할 수 있다.
  ///   - SDK 가 임의로 구독하면 가맹점 기존 딥링크 처리와 충돌한다.
  ///
  /// 활성 결제창이 없으면 예외를 던지지 않고 debug 로그만 남기고 무시한다.
  /// 가맹점이 앱스킴 핸들러에서 결제 여부와 무관하게 항상 호출해도 안전하게
  /// 하기 위함.
  void handlePaymentRedirect(String paymentRedirectUrl) {
    // 결제창은 한 번에 하나만 뜨는 구조.
    // 등록된 PaymentMethodWidget 들 중 현재 결제창을 띄운 State 를 찾아
    // 그 State 가 소유한 웹뷰 key 로 loadUrl 을 넘긴다.
    for (final key in _widgetKeyMap.values) {
      if (key is! GlobalKey<PaymentMethodWidgetState>) continue;
      final webViewKey = key.currentState?.activeWebViewKey;
      if (webViewKey != null) {
        webViewKey.currentState?.loadUrl(paymentRedirectUrl);
        return;
      }
    }
    debugPrint(
      '[TossPayments] handlePaymentRedirect: 활성 결제창이 없어 무시됩니다.',
    );
  }

  GlobalKey<T> getGlobalKey<T extends WidgetContainerState>(String selector) {
    final areYouThere = _widgetKeyMap[selector];
    if (areYouThere == null || areYouThere is! GlobalKey<T>) {
      final newKey = GlobalKey<T>();
      _widgetKeyMap[selector] = newKey;
      return newKey;
    } else {
      return areYouThere;
    }
  }

  static const anonymous = '@@ANONYMOUS';
}
