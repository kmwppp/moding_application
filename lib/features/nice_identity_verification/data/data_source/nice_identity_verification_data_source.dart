import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nice_identity_verification_data_source.g.dart';

@riverpod
NiceIdentityVerificationDataSource niceIdentityVerificationDataSource(Ref ref) {
  return NiceIdentityVerificationDataSource(ref.watch(dioProvider));
}

class NiceIdentityVerificationDataSource {
  NiceIdentityVerificationDataSource(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> postIdentityVerification({
    required String purpose,
  }) async {
    final response = await _dio.post(
      AppHttpUrl.postIdentityVerification,
      data: {'purpose': purpose},
    );
    return response.data;
  }
}
