class LoginToken {
  final String accessToken;
  final String refreshToken;
  final String role;

  LoginToken({
    required this.accessToken,
    required this.refreshToken,
    required this.role,
  });
}
