import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../product/domain/enums/product_recommand_type.dart';

part 'cart_data_source.g.dart';

@riverpod
CartDataSource cartDataSource(Ref ref) {
  return CartDataSource(ref.watch(dioProvider));
}

class CartDataSource {
  final Dio _dio;

  CartDataSource(this._dio);

  Future<Map<String, dynamic>> getCartList() async {
    final response = await _dio.get(AppHttpUrl.getCartList);
    return response.data;
  }

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

  Future<Map<String, dynamic>> patchCartOptionCount(
    int optionId,
    int quantity,
  ) async {
    final response = await _dio.patch(
      AppHttpUrl.cartOptionControl(optionId),
      data: {"quantity": quantity},
    );
    return response.data;
  }

  Future<Map<String, dynamic>> deleteProductOption(int optionId) async {
    final response = await _dio.delete(AppHttpUrl.cartOptionControl(optionId));
    return response.data;
  }

  Future<Map<String, dynamic>> deleteProducts(List<int> cartItemIds) async {
    final cartItemIdsQuery = cartItemIds.join(',');
    final response = await _dio.delete(
      AppHttpUrl.shoppingCartControl,
      queryParameters: {"cartItemIds": cartItemIdsQuery},
    );
    return response.data;
  }
}
