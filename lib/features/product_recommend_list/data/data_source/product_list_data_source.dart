import 'package:dio/dio.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_http_url.dart';
import '../../../product/domain/entities/product_dto.dart';
import '../../../product/domain/enums/product_recommand_type.dart';

part 'product_list_data_source.g.dart';

@riverpod
ProductListDataSource productListDataSource(Ref ref) {
  return ProductListDataSource(ref.watch(dioProvider));
}

class ProductListDataSource {
  final Dio _dio;

  ProductListDataSource(this._dio);

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
}
