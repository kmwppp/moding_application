import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/dio_client.dart';
import '../../domain/entities/seller_conversion_request.dart';

part 'seller_conversion_data_source.g.dart';

@riverpod
SellerConversionDataSource sellerConversionDataSource(Ref ref) {
  return SellerConversionDataSource(ref.watch(dioProvider));
}

class SellerConversionDataSource {
  final Dio _dio;

  SellerConversionDataSource(this._dio);

  Future<Map<String, dynamic>> postSellerConversion({
    required SellerConversionRequest request,
  }) async {
    final formData = await request.toFormData();

    final response = await _dio.post(
      AppHttpUrl.postSellerConversion,
      data: formData,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getMainPermits() async {
    final response = await _dio.get(AppHttpUrl.getMainPermits);
    return response.data;
  }

  Future<Map<String, dynamic>> getSubPermits(int parentId) async {
    final response = await _dio.get(AppHttpUrl.getSubPermits(parentId));
    return response.data;
  }
}
