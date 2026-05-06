import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_data_source.g.dart';

@riverpod
CategoryDataSource categoryDataSource(Ref ref) {
  return CategoryDataSource(ref.watch(dioProvider));
}

class CategoryDataSource {
  final Dio _dio;

  CategoryDataSource(this._dio);

  Future<Map<String, dynamic>> getMainCategoryList() async {
    final response = await _dio.get(AppHttpUrl.getMainCategoryList);
    return response.data;
  }

  Future<Map<String, dynamic>> getSubCategoryList(int parentId) async {
    final response = await _dio.get(AppHttpUrl.getSubCategoryList(parentId));
    return response.data;
  }

  Future<Map<String, dynamic>> getProductList({
    required int page,
    required List<int> categoryIds,
  }) async {
    final response = await _dio.get(
      AppHttpUrl.getSearchProductList,
      queryParameters: {"page": page, "categoryIds": categoryIds},
    );
    return response.data;
  }
}
