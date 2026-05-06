enum OrderPaymentMethod {
  card('CARD', '카드결제'),
  virtualAccount('VIRTUAL_ACCOUNT', '무통장입금');

  const OrderPaymentMethod(this.code, this.label);

  final String code;
  final String label;

  static OrderPaymentMethod fromJson(String value) {
    return OrderPaymentMethod.values.firstWhere(
      (method) => method.code == value,
      orElse: () => OrderPaymentMethod.card,
    );
  }

  static String toJson(OrderPaymentMethod value) => value.code;
}
