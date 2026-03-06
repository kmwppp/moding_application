import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_storage.g.dart';

@riverpod
TokenStorage tokenStorage(Ref ref) {
  return TokenStorage();
}

class TokenStorage {
  final _storage = const FlutterSecureStorage();

  // 토큰들 저장
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _storage.write(key: 'access_token', value: accessToken);
    await _storage.write(key: 'refresh_token', value: refreshToken);
  }

  // 개별 토큰 읽기
  Future<String?> getAccessToken() => _storage.read(key: 'access_token');

  Future<String?> getRefreshToken() => _storage.read(key: 'refresh_token');

  // 로그아웃 시 토큰 삭제
  Future<void> deleteAll() => _storage.deleteAll();
}
