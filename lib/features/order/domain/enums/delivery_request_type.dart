enum DeliveryRequestType {
  direct, // 직접 받을게요
  front, // 가게 앞에 두세요
  callBefore, // 배송 전 연락
  etc, // 기타
}

extension DeliveryRequestTypeX on DeliveryRequestType {
  String get label {
    switch (this) {
      case DeliveryRequestType.direct:
        return "직접 받을게요.";
      case DeliveryRequestType.front:
        return "가게 앞에 두세요.";
      case DeliveryRequestType.callBefore:
        return "배송 전 연락부탁드립니다.";
      case DeliveryRequestType.etc:
        return "기타";
    }
  }
}
