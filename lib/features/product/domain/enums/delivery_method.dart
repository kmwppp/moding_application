enum DeliveryMethod { COURIER, DIRECT }

extension DeliveryMethodsX on List<DeliveryMethod> {
  String get label {
    if (contains(DeliveryMethod.COURIER) && contains(DeliveryMethod.DIRECT)) {
      return "택배배송, 직접배송";
    }

    if (contains(DeliveryMethod.COURIER)) {
      return "택배배송";
    }

    if (contains(DeliveryMethod.DIRECT)) {
      return "직접배송";
    }

    return "";
  }
}
