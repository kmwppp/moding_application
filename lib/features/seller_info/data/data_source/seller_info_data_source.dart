import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'seller_info_data_source.g.dart';

@riverpod
SellerInfoDataSource sellerInfoDataSource(Ref ref) {
  return SellerInfoDataSource(ref.watch(dioProvider));
}

class SellerInfoDataSource {
  final Dio _dio;

  SellerInfoDataSource(this._dio);

  Future<Map<String, dynamic>> getSellerProfile(int sellerProfileId) async {
    final response = await _dio.get(
      AppHttpUrl.getSellerProfile(sellerProfileId),
    );
    return response.data;
  }
}
