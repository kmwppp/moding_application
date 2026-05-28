import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:moding_application/features/signup_new/domain/entities/signup_new_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_new_data_source.g.dart';

@riverpod
SignupNewDataSource signupNewDataSource(Ref ref) {
  return SignupNewDataSource(ref.watch(dioProvider));
}

class SignupNewDataSource {
  final Dio _dio;

  SignupNewDataSource(this._dio);

  Future<Map<String, dynamic>> signUp(SignupNewRequest request) async {
    try {
      final formData = await request.toFormData();

      final response = await _dio.post(
        AppHttpUrl.signUp,
        data: formData,
        options: Options(extra: {'skipAuth': true}),
      );

      return {
        ...(response.data as Map<String, dynamic>),
        'statusCode': response.statusCode,
      };
    } on DioException catch (e) {
      final responseData = e.response?.data;
      if (responseData is Map<String, dynamic>) {
        return {...responseData, 'statusCode': e.response?.statusCode};
      }

      return {
        'success': false,
        'message': '알 수 없는 오류가 발생했습니다.',
        'statusCode': e.response?.statusCode,
      };
    }
  }

  Future<Map<String, dynamic>> duplicateCheck(String loginId) async {
    final response = await _dio.get(
      "${AppHttpUrl.idDuplicateCheck}?loginId=$loginId",
      options: Options(extra: {"SkipAuth": true}),
    );

    return response.data;
  }

  Future<Map<String, dynamic>> getBusinessTypeList() async {
    final response = await _dio.get(
      AppHttpUrl.getBusinessTypeList,
      options: Options(extra: {"SkipAuth": true}),
    );

    return response.data;
  }

  Future<Map<String, dynamic>> getMainCategoryList() async {
    final response = await _dio.get(
      AppHttpUrl.industryMainCategory,
      options: Options(extra: {"SkipAuth": true}),
    );

    return response.data;
  }

  Future<Map<String, dynamic>> getSubCategoryList(int parentId) async {
    final response = await _dio.get(
      AppHttpUrl.industrySubCategory(parentId.toString()),
      options: Options(extra: {"SkipAuth": true}),
    );

    return response.data;
  }
}
