enum OrderStatus {
  paymentPending('PAYMENT_PENDING'),
  ordered('ORDERED'),
  confirmed('CONFIRMED'),
  shipped('SHIPPED'),
  delivered('DELIVERED'),
  purchaseConfirmed('PURCHASE_CONFIRMED'),
  claimInProgress('CLAIM_IN_PROGRESS'),
  settlementCompleted('SETTLEMENT_COMPLETED'),
  cancelled('CANCELLED'),
  rejected('REJECTED');

  const OrderStatus(this.code);

  final String code;

  static OrderStatus fromJson(String value) {
    return OrderStatus.values.firstWhere(
      (status) => status.code == value,
      orElse: () => OrderStatus.ordered,
    );
  }

  static String toJson(OrderStatus value) => value.code;
}
