import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_data_source.g.dart';

@riverpod
ChangePasswordDataSource changePasswordDataSource(Ref ref) {
  return ChangePasswordDataSource(ref.watch(dioProvider));
}

class ChangePasswordDataSource {
  final Dio _dio;

  ChangePasswordDataSource(this._dio);

  Future<Map<String, dynamic>> patchChangePassword({
    required String identityKey,
    required String newPassword,
  }) async {
    final response = await _dio.patch(
      AppHttpUrl.patchChangePassword,
      data: {'identityKey': identityKey, 'newPassword': newPassword},
    );
    return response.data;
  }

  Future<Map<String, dynamic>> verifyIdentityAndResetPassword({
    required String identityVerificationKey,
    required String newPassword,
  }) async {
    final response = await _dio.post(
      AppHttpUrl.postIdentityVerify,
      data: {
        'identityVerificationKey': identityVerificationKey,
        'newPassword': newPassword,
      },
    );
    return response.data;
  }
}
