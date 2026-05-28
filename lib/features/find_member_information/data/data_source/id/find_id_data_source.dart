import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'find_id_data_source.g.dart';

@riverpod
FindIdDataSource findIdDataSource(Ref ref) {
  return FindIdDataSource(ref.watch(dioProvider));
}

class FindIdDataSource {
  final Dio _dio;

  FindIdDataSource(this._dio);

  Future<Map<String, dynamic>> postFindId(String identityVerificationKey) async {
    try {
      final response = await _dio.post(
        AppHttpUrl.postFindId,
        data: {'identityVerificationKey': identityVerificationKey},
        options: Options(extra: {'skipAuth': true}),
      );
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      final responseData = e.response?.data;
      if (responseData is Map<String, dynamic>) {
        return responseData;
      }

      return {
        'success': false,
        'message': '알 수 없는 오류가 발생했습니다.',
      };
    }
  }
}
