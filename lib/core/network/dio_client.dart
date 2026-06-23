import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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

  if (kDebugMode) {
    dio.interceptors.add(
      LogInterceptor(requestBody: true, responseBody: true), // 디버깅용 로그
    );
  }

  // 401/토큰 갱신 처리 인터셉터
  dio.interceptors.add(AuthInterceptor(dio, tokenStorage));

  return dio;
}
