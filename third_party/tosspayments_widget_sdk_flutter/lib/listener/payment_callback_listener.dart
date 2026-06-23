import '../model/tosspayments_result.dart';

class PaymentCallback {
  final void Function(Success) onPaymentSuccess;
  final void Function(Fail) onPaymentFailed;
  final void Function(Pending)? onPaymentPending;

  const PaymentCallback({
    required this.onPaymentSuccess,
    required this.onPaymentFailed,
    this.onPaymentPending,
  });
}
