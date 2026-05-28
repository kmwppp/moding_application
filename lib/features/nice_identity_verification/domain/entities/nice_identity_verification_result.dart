class NiceIdentityVerificationResult {
  const NiceIdentityVerificationResult({
    required this.success,
    this.key,
    this.name,
    this.phone,
    this.error,
  });

  final bool success;
  final String? key;
  final String? name;
  final String? phone;
  final String? error;
}
