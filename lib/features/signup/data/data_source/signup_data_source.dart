import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:moding_application/features/signup/domain/entities/signup_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_data_source.g.dart';

@riverpod
SignupDataSource signupDataSource(Ref ref) {
  return SignupDataSource(ref.watch(dioProvider));
}

class SignupDataSource {
  final Dio _dio;

  SignupDataSource(this._dio);

  Future<Map<String, dynamic>> executeSignUp(SignupInfo request) async {
    final formData = await request.getFormData(request);

    final response = await _dio.post(
      AppHttpUrl.signUp,
      data: formData,
      options: Options(extra: {"skipAuth": true}),
    );

    return response.data;
  }

  Future<Map<String, dynamic>> duplicateCheck(String userId) async {
    final response = await _dio.get(
      "${AppHttpUrl.idDuplicateCheck}?loginId=$userId",
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

  Future<Map<String, dynamic>> getBusinessTypeList() async {
    final response = await _dio.get(
      AppHttpUrl.getBusinessTypeList,
      options: Options(extra: {"SkipAuth": true}),
    );

    return response.data;
  }
}
