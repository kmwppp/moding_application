import 'package:dio/dio.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_http_url.dart';

part 'home_data_source.g.dart';

@riverpod
HomeDataSource homeDataSource(Ref ref) {
  return HomeDataSource(ref.watch(dioProvider));
}

class HomeDataSource {
  final Dio _dio;

  HomeDataSource(this._dio);

  Future<Map<String, dynamic>> getHomeSectionList() async {
    final response = await _dio.get(
      AppHttpUrl.getHomeSectionList,
      options: Options(extra: {"SkipAuth": true}),
    );

    return response.data;
  }

  Future<Map<String, dynamic>> getHomeProductList(int sectionId) async {
    final response = await _dio.get(AppHttpUrl.getHomeProductList(sectionId));

    return response.data;
  }

  Future<Map<String, dynamic>> getTerms() async {
    final response = await _dio.get(AppHttpUrl.getTerms);
    return response.data;
  }
}
