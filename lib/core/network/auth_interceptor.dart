import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/session_expired_handler.dart';

import '../services/token_storage.dart';

class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final TokenStorage _tokenStorage;
  Future<String?>? _refreshFuture;

  AuthInterceptor(this._dio, this._tokenStorage);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (_shouldSkipAuth(options)) {
      return handler.next(options);
    }

    final accessToken = await _tokenStorage.getAccessToken();

    if (accessToken != null && accessToken.trim().isNotEmpty) {
      options.headers['Authorization'] = 'Bearer ${accessToken.trim()}';
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (_shouldSkipAuth(err.requestOptions)) {
      return handler.next(err);
    }

    if (err.response?.statusCode != 401) {
      return handler.next(err);
    }

    if (_isAuthEndpoint(err.requestOptions.path) ||
        err.requestOptions.extra['_retriedAfterRefresh'] == true) {
      await _moveToLogin();
      return handler.next(err);
    }

    final accessToken = await _tokenStorage.getAccessToken();
    if (accessToken == null || accessToken.trim().isEmpty) {
      await _moveToLogin();
      return handler.next(err);
    }

    try {
      final newAccessToken = await _refreshAccessToken();
      if (newAccessToken == null || newAccessToken.trim().isEmpty) {
        await _moveToLogin();
        return handler.next(err);
      }

      final options = err.requestOptions;
      options.extra['_retriedAfterRefresh'] = true;
      options.headers['Authorization'] = 'Bearer ${newAccessToken.trim()}';

      final retryResponse = await _dio.fetch(options);
      return handler.resolve(retryResponse);
    } on DioException catch (retryError) {
      if (retryError.response?.statusCode == 401) {
        await _moveToLogin();
      }
      return handler.next(retryError);
    } catch (error) {
      debugPrint('토큰 재발급 실패: $error');
      await _moveToLogin();
      return handler.next(err);
    }
  }

  bool _shouldSkipAuth(RequestOptions options) {
    return options.extra['skipAuth'] == true ||
        options.extra['SkipAuth'] == true ||
        _isAuthEndpoint(options.path);
  }

  bool _isAuthEndpoint(String path) {
    return path.contains(AppHttpUrl.login) || path.contains(AppHttpUrl.refresh);
  }

  Future<String?> _refreshAccessToken() {
    final refreshFuture = _refreshFuture;
    if (refreshFuture != null) return refreshFuture;

    _refreshFuture = _requestRefreshToken().whenComplete(() {
      _refreshFuture = null;
    });

    return _refreshFuture!;
  }

  Future<String?> _requestRefreshToken() async {
    final refreshToken = await _tokenStorage.getRefreshToken();
    if (refreshToken == null || refreshToken.trim().isEmpty) {
      return null;
    }

    final response = await _dio.post(
      AppHttpUrl.refresh,
      options: Options(
        headers: {'Refresh-Token': refreshToken.trim()},
        extra: {'skipAuth': true},
      ),
    );

    final tokenData = _extractTokenData(response.data);
    final newAccessToken = tokenData['accessToken']?.toString();
    final newRefreshToken =
        tokenData['refreshToken']?.toString() ?? refreshToken.trim();

    if (newAccessToken == null || newAccessToken.trim().isEmpty) {
      return null;
    }

    await _tokenStorage.saveTokens(
      accessToken: newAccessToken.trim(),
      refreshToken: newRefreshToken.trim(),
    );

    return newAccessToken;
  }

  Map<String, dynamic> _extractTokenData(dynamic responseData) {
    if (responseData is! Map) return {};

    final data = responseData['data'];
    if (data is Map) {
      return Map<String, dynamic>.from(data);
    }

    return Map<String, dynamic>.from(responseData);
  }

  Future<void> _moveToLogin() {
    return SessionExpiredHandler.showLoginRequiredDialog(
      tokenStorage: _tokenStorage,
    );
  }
}
