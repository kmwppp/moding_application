import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_check_data_source.g.dart';

@riverpod
OrderCheckDataSource orderCheckDataSource(Ref ref) {
  return OrderCheckDataSource(ref.watch(dioProvider));
}

class OrderCheckDataSource {
  final Dio _dio;

  OrderCheckDataSource(this._dio);

  Future<Map<String, dynamic>> getOrderDetail(int orderId) async {
    final response = await _dio.get(AppHttpUrl.getOrderDetail(orderId));
    return response.data;
  }
}
