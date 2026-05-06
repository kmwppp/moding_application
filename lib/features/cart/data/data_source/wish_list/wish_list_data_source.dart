import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/network/dio_client.dart';

part 'wish_list_data_source.g.dart';

@riverpod
WishListDataSource wishListDataSource(Ref ref) {
  return WishListDataSource(ref.watch(dioProvider));
}

class WishListDataSource {
  final Dio _dio;

  WishListDataSource(this._dio);

  Future<Map<String, dynamic>> getWishList(int page) async {
    final response = await _dio.get(AppHttpUrl.getWishList(page));
    return response.data;
  }
}
