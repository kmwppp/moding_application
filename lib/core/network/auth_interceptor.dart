import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final Dio _dio;

  AuthInterceptor(this._dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // 403 Forbidden 에러 감지
    // 1. 401 에러(인증 만료)인지 확인
    if (err.response?.statusCode == 401) {
      print("🚨 401 감지: 토큰 재발급 요청을 시작합니다.");

      // 무한 루프 방지: 재발급 요청 자체가 401이 나면 중단
      if (err.requestOptions.path.contains('/api/v1/auth/refresh')) {
        return handler.next(err);
      }

      try {
        // 2. [가정] 저장소에서 꺼내온 리프레시 토큰 (실제 로직으로 대체 필요)
        String? storedRefreshToken = "YOUR_SAVED_REFRESH_TOKEN";

        // 3. 재발급 API 호출
        final refreshResponse = await _dio.post(
          '/api/v1/auth/refresh',
          options: Options(
            headers: {
              'Refresh-Token': storedRefreshToken, // 요구하신 헤더 키값
            },
          ),
        );

        if (refreshResponse.statusCode == 200) {
          // 4. 서버 응답에서 새 Access Token 추출 (서버 응답 규격에 맞게 수정하세요)
          final newAccessToken = refreshResponse.data['accessToken'];

          // 5. 실패했던 원래 요청의 정보(requestOptions)를 가져와서 헤더만 교체
          final options = err.requestOptions;
          options.headers['Authorization'] = 'Bearer $newAccessToken';

          // 6. 원래 요청 다시 보내기 (Retry)
          final retryResponse = await _dio.fetch(options);

          // 7. 성공한 데이터를 DataSource로 돌려줌
          return handler.resolve(retryResponse);
        }
      } catch (e) {
        print("❌ 토큰 재발급 실패: $e");
        // 재발급도 실패하면 로그아웃 처리 등을 진행합니다.
        return handler.next(err);
      }
    }

    return handler.next(err);
  }
}
