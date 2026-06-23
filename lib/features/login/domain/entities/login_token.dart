class LoginToken {
  final String accessToken;
  final String refreshToken;
  final String role;
  final bool identityVerificationRequired;

  LoginToken({
    required this.accessToken,
    required this.refreshToken,
    required this.role,
    required this.identityVerificationRequired,
  });
}
