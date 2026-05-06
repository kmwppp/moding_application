import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../order/domain/entities/create_order_request_dto.dart';
import '../../domain/entities/cart_create_order_request_dto.dart';

part 'cart_order_data_source.g.dart';

@riverpod
CartOrderDataSource cartOrderDataSource(Ref ref) {
  return CartOrderDataSource(ref.watch(dioProvider));
}

class CartOrderDataSource {
  final Dio _dio;

  CartOrderDataSource(this._dio);

  Future<Map<String, dynamic>> getCartOrderInfo(List<int> cartItemIds) async {
    final response = await _dio.post(
      AppHttpUrl.getCartOrderInfo(),
      data: {"cartItemIds": cartItemIds},
    );
    return response.data;
  }

  Future<Map<String, dynamic>> createPostCartOrder({
    required CartCreateOrderRequestDto cartCreateOrderRequestDto,
  }) async {
    final response = await _dio.post(
      AppHttpUrl.postCartCreateOrder,
      data: cartCreateOrderRequestDto.toJson(),
    );

    return response.data;
  }
}
