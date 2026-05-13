import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';

class PaymentCustomerKeyNotifier extends Notifier<String> {
  @override
  String build() {
    return "vHc6HLTIznAATh4NCotGW";
  }

  void update(String customerKey) {
    state = customerKey;
  }
}

final paymentCustomerKeyProvider =
    NotifierProvider<PaymentCustomerKeyNotifier, String>(
      PaymentCustomerKeyNotifier.new,
    );

final paymentWidgetProvider = Provider<PaymentWidget>((ref) {
  final customerKey = ref.watch(paymentCustomerKeyProvider);

  return PaymentWidget(
    clientKey: "test_gck_PBal2vxj81N1PEdzaxX135RQgOAN",
    customerKey: customerKey,
  );
});
