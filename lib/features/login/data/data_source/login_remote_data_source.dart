import 'package:dio/dio.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_remote_data_source.g.dart'; // 필수!

@riverpod
LoginRemoteDataSource loginRemoteDataSource(Ref ref) {
  return LoginRemoteDataSource(ref.watch(dioProvider));
}

class LoginRemoteDataSource {
  final Dio _dio;

  LoginRemoteDataSource(this._dio);

  // 로그인 Remote Data Source
  Future<Map<String, dynamic>> login(String userId, String userPassword) async {
    final response = await _dio.post(
      '/api/v1/auth/login',
      data: {"loginId": userId, "password": userPassword},
    );

    return response.data;
  }
}
