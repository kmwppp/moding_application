import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'find_pw_data_source.g.dart';

@riverpod
FindPwDataSource findPwDataSource(Ref ref) {
  return FindPwDataSource(ref.watch(dioProvider));
}

class FindPwDataSource {
  final Dio _dio;

  FindPwDataSource(this._dio);

  Future<Map<String, dynamic>> patchFindPassword({
    required String loginId,
    required String identityVerificationKey,
    required String newPassword,
  }) async {
    try {
      final response = await _dio.patch(
        AppHttpUrl.patchFindPassword,
        data: {
          'loginId': loginId,
          'identityVerificationKey': identityVerificationKey,
          'newPassword': newPassword,
        },
        options: Options(extra: {'skipAuth': true}),
      );

      return {
        ...(response.data as Map<String, dynamic>),
        'statusCode': response.statusCode,
      };
    } on DioException catch (e) {
      final responseData = e.response?.data;
      if (responseData is Map<String, dynamic>) {
        return {
          ...responseData,
          'statusCode': e.response?.statusCode,
        };
      }

      return {
        'success': false,
        'message': '알 수 없는 오류가 발생했습니다.',
        'statusCode': e.response?.statusCode,
      };
    }
  }
}
