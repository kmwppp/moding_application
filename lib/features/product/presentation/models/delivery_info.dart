class DeliveryInfo {
  final String title; // 15시 이전 주문시 다음날 도착
  final String subText; // 오늘 출발 / 내일 출발
  final String remain; // 02:18:00
  final DateTime? deliveryDate;

  DeliveryInfo({
    required this.title,
    required this.subText,
    required this.remain,
    this.deliveryDate,
  });
}
