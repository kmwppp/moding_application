class FindPwResponseDto {
  const FindPwResponseDto({
    required this.success,
    required this.message,
    this.statusCode,
  });

  final bool success;
  final String message;
  final int? statusCode;

  factory FindPwResponseDto.fromJson(Map<String, dynamic> json) {
    return FindPwResponseDto(
      success: (json['success'] as bool?) ?? false,
      message: (json['message'] as String?) ?? '',
      statusCode: json['statusCode'] as int?,
    );
  }
}
