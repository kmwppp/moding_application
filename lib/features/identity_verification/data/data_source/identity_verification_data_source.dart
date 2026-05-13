import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'identity_verification_data_source.g.dart';

@riverpod
IdentityVerificationDataSource identityVerificationDataSource(Ref ref) {
  return IdentityVerificationDataSource(ref.watch(dioProvider));
}

class IdentityVerificationDataSource {
  final Dio _dio;

  IdentityVerificationDataSource(this._dio);

  Future<Map<String, dynamic>> postReAuth(String password) async {
    final response = await _dio.post(
      AppHttpUrl.reAuth,
      data: {"password": password},
    );
    return response.data;
  }
}
