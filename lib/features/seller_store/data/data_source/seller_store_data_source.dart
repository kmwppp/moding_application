import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_http_url.dart';
import '../../../../core/network/dio_client.dart';

part 'seller_store_data_source.g.dart';

@riverpod
SellerStoreDataSource sellerStoreDataSource(Ref ref) {
  return SellerStoreDataSource(ref.watch(dioProvider));
}

class SellerStoreDataSource {
  SellerStoreDataSource(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> getSellerProducts({
    required int sellerProfileId,
    required int page,
    required int size,
  }) async {
    final response = await _dio.get(
      AppHttpUrl.getSearchProductList,
      queryParameters: {
        'sellerProfileId': sellerProfileId,
        'page': page,
        'size': size,
      },
    );

    return response.data;
  }
}
