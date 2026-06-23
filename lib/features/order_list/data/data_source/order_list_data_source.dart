import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_list_data_source.g.dart';

@riverpod
OrderListDataSource orderListDataSource(Ref ref) {
  return OrderListDataSource(ref.watch(dioProvider));
}

class OrderListDataSource {
  final Dio _dio;

  OrderListDataSource(this._dio);

  Future<Map<String, dynamic>> getOrderDateList({
    required List<String> statuses,
  }) async {
    final response = await _dio.get(
      AppHttpUrl.getOrderDateList,
      queryParameters: {if (statuses.isNotEmpty) 'statuses': statuses},
    );
    return response.data;
  }

  Future<Map<String, dynamic>> patchPurchaseConfirm(int orderId) async {
    final response = await _dio.patch(AppHttpUrl.patchPurchaseConfirm(orderId));
    return response.data;
  }

  Future<Map<String, dynamic>> getOrderList({
    required List<String> statuses,
    required DateTime fromDate,
    required DateTime toDate,
    required int page,
    required int size,
  }) async {
    final response = await _dio.get(
      AppHttpUrl.getOrderList,
      queryParameters: {
        'fromDate': _toServerDateTime(fromDate),
        'toDate': _toServerDateTime(toDate),
        'page': page,
        'size': size,
        if (statuses.isNotEmpty) 'statuses': statuses,
      },
    );
    return response.data;
  }

  String _toServerDateTime(DateTime dateTime) {
    return dateTime.toUtc().toIso8601String().replaceFirst(
      RegExp(r'\.\d{3}Z$'),
      'Z',
    );
  }

  Future<Map<String, dynamic>> getPaymentInfo(int paymentId) async {
    final response = await _dio.get(AppHttpUrl.getPaymentInfo(paymentId));
    return response.data;
  }

  Future<Response<dynamic>> deletePaymentInfo(int paymentId) async {
    return _dio.patch(AppHttpUrl.deletePayment(paymentId));
  }

  Future<Response<dynamic>> deleteOrderInfo(int orderId) async {
    return _dio.patch(AppHttpUrl.deleteOrder(orderId));
  }

  Future<Map<String, dynamic>> getOrderTaxInvoiceUrl(int orderId) async {
    final response = await _dio.get(AppHttpUrl.getOrderTaxInvoiceUrl(orderId));
    return response.data;
  }
}
