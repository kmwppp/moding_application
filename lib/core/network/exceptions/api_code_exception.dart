import 'package:dio/dio.dart';

class ApiCodeException implements Exception {
  const ApiCodeException({
    required this.statusCode,
    required this.code,
    required this.message,
  });

  final int statusCode;
  final String code;
  final String message;

  static ApiCodeException? fromDio(
    DioException error, {
    Set<String>? allowedCodes,
  }) {
    final response = error.response;
    final data = response?.data;

    if (response?.statusCode != 400 || data is! Map<String, dynamic>) {
      return null;
    }

    final code = data['code']?.toString() ?? '';
    if (allowedCodes != null && !allowedCodes.contains(code)) {
      return null;
    }

    return ApiCodeException(
      statusCode: response?.statusCode ?? 400,
      code: code,
      message: data['message']?.toString() ?? '알 수 없는 오류가 발생했습니다.',
    );
  }

  @override
  String toString() => 'ApiCodeException($statusCode, $code, $message)';
}
