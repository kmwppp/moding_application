import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/put_in_shopping_cart_request_dto.dart';
import '../../domain/enums/product_recommand_type.dart';

part 'product_data_source.g.dart';

@riverpod
ProductDataSource productDataSource(Ref ref) {
  return ProductDataSource(ref.watch(dioProvider));
}

class ProductDataSource {
  final Dio _dio;

  ProductDataSource(this._dio);

  Future<Map<String, dynamic>> getProductInfo(int productId) async {
    final response = await _dio.get(AppHttpUrl.getProductDetailInfo(productId));
    return response.data;
  }

  Future<Map<String, dynamic>> getProductSimilar(int productId) async {
    final response = await _dio.get(AppHttpUrl.getProductSimilar(productId));
    return response.data;
  }

  Future<Map<String, dynamic>> productWishListState(
    int productId,
    bool isWishList,
  ) async {
    final Response<dynamic> response;

    if (isWishList) {
      // 위시리스트에 추가되어있을때는 삭제
      response = await _dio.post(AppHttpUrl.postWishlist(productId));
    } else {
      // 위시리스트에 추가되어있지 않을때는 추가
      response = await _dio.delete(AppHttpUrl.postWishlist(productId));
    }

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

  Future<Map<String, dynamic>> getProductReview(
    int productId,
    int pageNum,
    int size,
  ) async {
    final response = await _dio.get(
      AppHttpUrl.getReviewList(productId, pageNum, size),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getProductRecently() async {
    final response = await _dio.get(AppHttpUrl.getProductRecently());
    return response.data;
  }

  Future<Map<String, dynamic>> getProductBusinessPicks() async {
    final response = await _dio.get(AppHttpUrl.getProductBusinessPicks());
    return response.data;
  }

  Future<Map<String, dynamic>> getSellerProfile(int sellerProfileId) async {
    final response = await _dio.get(
      AppHttpUrl.getSellerProfile(sellerProfileId),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> postPutInShoppingCart({
    required int productId,
    required int productOptionId,
    required int quantity,
  }) async {
    final dto = PutInShoppingCartRequestDto(
      productId: productId,
      productOptionId: productOptionId,
      quantity: quantity,
    );

    final response = await _dio.post(
      AppHttpUrl.shoppingCartControl,
      data: dto.toJson(),
    );

    return response.data;
  }
}
