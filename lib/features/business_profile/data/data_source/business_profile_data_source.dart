import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_http_url.dart';
import '../../../../core/network/dio_client.dart';

part 'business_profile_data_source.g.dart';

@riverpod
BusinessProfileDataSource businessProfileDataSource(Ref ref) {
  return BusinessProfileDataSource(ref.watch(dioProvider));
}

class BusinessProfileDataSource {
  final Dio _dio;

  BusinessProfileDataSource(this._dio);

  Future<Map<String, dynamic>> getMyBusinessProfileInfo() async {
    final response = await _dio.get(AppHttpUrl.getMyBusinessProfileInfo);
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

  Future<Map<String, dynamic>> putMyBusinessProfileInfo(
    FormData formData,
  ) async {
    final response = await _dio.put(
      AppHttpUrl.putMyBusinessProfileInfo,
      data: formData,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getChangeRequestBusinessProfile() async {
    final response = await _dio.get(AppHttpUrl.getChangeRequestBusinessProfile);
    return response.data;
  }
}
