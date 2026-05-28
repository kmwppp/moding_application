class FindIdResponseDto {
  const FindIdResponseDto({
    required this.success,
    required this.message,
    this.loginId,
  });

  final bool success;
  final String message;
  final String? loginId;

  factory FindIdResponseDto.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    final dataMap = data is Map<String, dynamic> ? data : null;

    return FindIdResponseDto(
      success: (json['success'] as bool?) ?? false,
      message: (json['message'] as String?) ?? '',
      loginId: dataMap?['loginId'] as String?,
    );
  }
}
