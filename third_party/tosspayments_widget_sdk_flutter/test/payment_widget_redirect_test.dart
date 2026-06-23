import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';

void main() {
  group('PaymentWidget.handlePaymentRedirect', () {
    late PaymentWidget paymentWidget;
    late DebugPrintCallback originalDebugPrint;

    setUp(() {
      originalDebugPrint = debugPrint;
      paymentWidget = PaymentWidget(
        clientKey: 'test_ck_dummy',
        customerKey: 'customer_dummy',
      );
    });

    tearDown(() {
      debugPrint = originalDebugPrint;
    });

    // 활성 결제창 상태에서의 loadUrl 위임 경로는 PaymentMethodWidgetState /
    // TosspaymentsInAppWebview 의 실 생명주기에 묶여 있어 순수 단위 테스트로
    // 검증하기 어렵다. 위젯 테스트 레벨 커버리지는 후속 과제로 남긴다.

    test('핸들러가 없을 때 예외 없이 조용히 무시한다', () {
      expect(
        () => paymentWidget.handlePaymentRedirect('https://example.com/redirect'),
        returnsNormally,
      );
    });

    test('활성 결제창이 없을 때 raw redirect url을 로그에 남기지 않는다', () {
      final logs = <String?>[];
      debugPrint = (String? message, {int? wrapWidth}) {
        logs.add(message);
      };

      const redirectUrl = 'https://example.com/redirect?token=secret';
      paymentWidget.handlePaymentRedirect(redirectUrl);

      expect(logs, hasLength(1));
      expect(logs.single, contains('활성 결제창이 없어 무시됩니다'));
      expect(logs.single, isNot(contains(redirectUrl)));
      expect(logs.single, isNot(contains('token=secret')));
    });
  });
}
