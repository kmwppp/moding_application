enum ClaimType {
  quantity('QUANTITY', '수량문제'),
  condition('CONDITION', '제품불량');

  const ClaimType(this.code, this.label);

  final String code;
  final String label;

  static ClaimType fromJson(String value) {
    return ClaimType.values.firstWhere(
      (type) => type.code == value,
      orElse: () => ClaimType.quantity,
    );
  }

  static String toJson(ClaimType value) => value.code;
}
