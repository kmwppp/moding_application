enum ReshipDeliveryMethod {
  courier('COURIER', '택배배송'),
  direct('DIRECT', '직접배송');

  const ReshipDeliveryMethod(this.code, this.label);

  final String code;
  final String label;

  static ReshipDeliveryMethod? fromJson(String? value) {
    if (value == null) return null;
    for (final method in ReshipDeliveryMethod.values) {
      if (method.code == value) return method;
    }
    return null;
  }

  static String? toJson(ReshipDeliveryMethod? value) => value?.code;
}
