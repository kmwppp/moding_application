import 'package:moding_application/features/login/domain/entities/login_token.dart';

class IdentityVerifyPasswordResetResult {
  const IdentityVerifyPasswordResetResult({
    required this.success,
    required this.message,
    this.code,
    this.token,
  });

  final bool success;
  final String message;
  final String? code;
  final LoginToken? token;

  factory IdentityVerifyPasswordResetResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final data = json['data'];

    LoginToken? token;
    if (data is Map<String, dynamic>) {
      final accessToken = data['accessToken']?.toString();
      final refreshToken = data['refreshToken']?.toString();
      final role = data['role']?.toString();

      if (accessToken != null && refreshToken != null && role != null) {
        token = LoginToken(
          accessToken: accessToken,
          refreshToken: refreshToken,
          role: role,
          identityVerificationRequired:
              data['identityVerificationRequired'] as bool? ?? false,
        );
      }
    }

    return IdentityVerifyPasswordResetResult(
      success: json['success'] as bool? ?? false,
      message: json['message']?.toString() ?? '',
      code: json['code']?.toString(),
      token: token,
    );
  }
}
