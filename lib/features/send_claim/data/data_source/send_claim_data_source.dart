import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_http_url.dart';
import '../../../../core/network/dio_client.dart';

part 'send_claim_data_source.g.dart';

@riverpod
SendClaimDataSource sendClaimDataSource(Ref ref) {
  return SendClaimDataSource(ref.watch(dioProvider));
}

class SendClaimDataSource {
  final Dio _dio;

  SendClaimDataSource(this._dio);

  Future<Map<String, dynamic>> postClaim(
    int orderId,
    Map<String, dynamic> request,
  ) async {
    final formData = FormData.fromMap(request);
    final response = await _dio.post(
      AppHttpUrl.postClaim(orderId),
      data: formData,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getMyOrderInfo(int orderId) async {
    final response = await _dio.get(AppHttpUrl.getMyOrderInfo(orderId));
    return response.data;
  }
}
