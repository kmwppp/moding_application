import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/reauth_required_handler.dart';
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
    final reauthKey = await _tokenStorage.getReauthKey();

    if (accessToken != null && accessToken.trim().isNotEmpty) {
      options.headers['Authorization'] = 'Bearer ${accessToken.trim()}';
    }

    if (_requiresReauthHeader(options.path) &&
        reauthKey != null &&
        reauthKey.trim().isNotEmpty) {
      options.headers['X-Reauth-Key'] = reauthKey.trim();
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (_shouldSkipAuth(err.requestOptions) ||
        _isReAuthEndpoint(err.requestOptions.path)) {
      return handler.next(err);
    }

    if (err.response?.statusCode == 401 &&
        err.requestOptions.extra['ignore401Logout'] == true) {
      return handler.next(err);
    }

    if (err.response?.statusCode == 403 &&
        _requiresReauthHeader(err.requestOptions.path)) {
      await ReauthRequiredHandler.showIdentityVerificationPage();
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
        _isLoginEndpoint(options.path) ||
        _isRefreshEndpoint(options.path);
  }

  bool _isAuthEndpoint(String path) {
    return _isLoginEndpoint(path) ||
        _isRefreshEndpoint(path) ||
        _isReAuthEndpoint(path);
  }

  bool _isLoginEndpoint(String path) {
    return path.contains(AppHttpUrl.login);
  }

  bool _isRefreshEndpoint(String path) {
    return path.contains(AppHttpUrl.refresh);
  }

  bool _isReAuthEndpoint(String path) {
    return path.contains(AppHttpUrl.reAuth);
  }

  bool _requiresReauthHeader(String path) {
    final normalizedPath = path.split('?').first;
    return normalizedPath == AppHttpUrl.getMyAccountInfo ||
        normalizedPath == AppHttpUrl.getMaskingMyInfo ||
        normalizedPath == AppHttpUrl.getRefundAccountInfo ||
        normalizedPath == AppHttpUrl.getMyBusinessProfileInfo ||
        normalizedPath == AppHttpUrl.patchChangePassword;
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
