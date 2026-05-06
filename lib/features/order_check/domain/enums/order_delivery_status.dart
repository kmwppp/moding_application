enum OrderDeliveryStatus {
  pending('PENDING'),
  shipped('SHIPPED'),
  delivered('DELIVERED');

  const OrderDeliveryStatus(this.code);

  final String code;

  static OrderDeliveryStatus fromJson(String value) {
    return OrderDeliveryStatus.values.firstWhere(
      (status) => status.code == value,
      orElse: () => OrderDeliveryStatus.pending,
    );
  }

  static String toJson(OrderDeliveryStatus value) => value.code;
}
