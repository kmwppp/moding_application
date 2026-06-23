import 'package:flutter_test/flutter_test.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_url.dart';

void main() {
  group('pendingFromUrl', () {
    test('pending url에서 paymentKey, orderId, amount를 파싱한다', () {
      final Pending? result = pendingFromUrl(
        'tosspayments://payment/flutter/pending?paymentKey=pk_test&orderId=order_123&amount=15000',
      );

      expect(result, isNotNull);
      expect(result!.paymentKey, 'pk_test');
      expect(result.orderId, 'order_123');
      expect(result.amount, 15000);
    });

    test('pending scheme이 아니면 null을 반환한다', () {
      final result = pendingFromUrl(
        'tosspayments://payment/flutter/success?paymentKey=pk_test&orderId=order_123&amount=15000',
      );

      expect(result, isNull);
    });
  });
}
