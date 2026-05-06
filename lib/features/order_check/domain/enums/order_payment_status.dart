enum OrderPaymentStatus {
  pending('PENDING', '결제대기'),
  paid('PAID', '결제완료'),
  partiallyCancelled('PARTIALLY_CANCELLED', '부분취소'),
  cancelled('CANCELLED', '결제취소'),
  refunded('REFUNDED', '환불완료');

  const OrderPaymentStatus(this.code, this.label);

  final String code;
  final String label;

  static OrderPaymentStatus fromJson(String value) {
    return OrderPaymentStatus.values.firstWhere(
      (status) => status.code == value,
      orElse: () => OrderPaymentStatus.paid,
    );
  }

  static String toJson(OrderPaymentStatus value) => value.code;
}
