import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_http_url.dart';
import '../../../../core/network/dio_client.dart';
import '../../../product/domain/enums/product_recommand_type.dart';

part 'search_data_source.g.dart';

@riverpod
SearchDataSource searchDataSource(Ref ref) {
  return SearchDataSource(ref.watch(dioProvider));
}

class SearchDataSource {
  final Dio _dio;

  SearchDataSource(this._dio);

  Future<Map<String, dynamic>> getProductRecommend({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  }) async {
    // SIMILAR 방어 로직 (추천)
    if (type == ProductRecommendType.similar && productId == null) {
      throw Exception("SIMILAR 타입은 productId가 필요합니다.");
    }

    final response = await _dio.get(
      AppHttpUrl.getProductRecommendList,
      queryParameters: {
        "type": type.value,
        "page": page,
        "size": size,
        if (productId != null) "productId": productId,
      },
    );

    return response.data;
  }

  Future<Map<String, dynamic>> getSearchProductList({
    required String keyword,
    required int page,
    required int size,
  }) async {
    // 방어 로직
    if (keyword.isEmpty) {
      throw Exception("검색 단어는 항상 있어야합니다.");
    }

    final response = await _dio.get(
      AppHttpUrl.getSearchProductList,
      queryParameters: {"keyword": keyword, "page": page, "size": size},
    );

    return response.data;
  }
}
