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
    required String currentPassword,
    required String newPassword,
  }) async {
    final response = await _dio.patch(
      AppHttpUrl.patchChangePassword,
      data: {'currentPassword': currentPassword, 'newPassword': newPassword},
      options: Options(extra: {'ignore401Logout': true}),
    );
    return response.data;
  }
}
