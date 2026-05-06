import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_interceptor.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final localHost = AppHttpUrl.mainServerUrl;
  final tokenStorage = ref.read(tokenStorageProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: localHost,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 10),
    ),
  );

  // 인터셉터 추가
  dio.interceptors.addAll([
    LogInterceptor(requestBody: true, responseBody: true), // 디버깅용 로그
    AuthInterceptor(dio, tokenStorage), // 401/토큰 갱신 처리 인터셉터
  ]);

  return dio;
}
