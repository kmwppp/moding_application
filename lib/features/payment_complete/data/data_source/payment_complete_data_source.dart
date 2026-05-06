import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/change_delivery_info_request_dto.dart';

part 'payment_complete_data_source.g.dart';

@riverpod
PaymentCompleteDataSource paymentCompleteDataSource(Ref ref) {
  return PaymentCompleteDataSource(ref.watch(dioProvider));
}

class PaymentCompleteDataSource {
  final Dio _dio;

  PaymentCompleteDataSource(this._dio);

  Future<Map<String, dynamic>> getPaymentCompleteInfo(int paymentId) async {
    final response = await _dio.get(AppHttpUrl.getPaymentInfo(paymentId));
    return response.data;
  }

  Future<Map<String, dynamic>> changeDeliveryAddress(
    int orderId,
    ChangeDeliveryInfoRequestDto request,
  ) async {
    final response = await _dio.patch(
      AppHttpUrl.changeDeliveryAddress(orderId),
      data: request.toJson(),
    );
    return response.data;
  }
}
