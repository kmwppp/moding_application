import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_interceptor.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final localHost = "http://192.168.219.53:8080";

  final dio = Dio(
    BaseOptions(
      baseUrl: localHost,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  // 인터셉터 추가
  dio.interceptors.addAll([
    LogInterceptor(requestBody: true, responseBody: true), // 디버깅용 로그
    AuthInterceptor(dio), // 위에서 만든 403 처리 인터셉터
  ]);

  return dio;
}
