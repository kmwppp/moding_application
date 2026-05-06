enum ClaimResolution {
  refund('REFUND', '환불'),
  reship('RESHIP', '재배송');

  const ClaimResolution(this.code, this.label);

  final String code;
  final String label;

  static ClaimResolution? fromJson(String? value) {
    if (value == null) return null;
    for (final resolution in ClaimResolution.values) {
      if (resolution.code == value) return resolution;
    }
    return null;
  }

  static String? toJson(ClaimResolution? value) => value?.code;
}
