import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:moding_application/features/refund_account_management/domain/entities/refund_account_request_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_management_data_source.g.dart';

@riverpod
AccountManagementDataSource accountManagementDataSource(Ref ref) {
  return AccountManagementDataSource(ref.watch(dioProvider));
}

class AccountManagementDataSource {
  final Dio _dio;

  AccountManagementDataSource(this._dio);

  Future<Map<String, dynamic>> getRefundAccountInfo() async {
    final response = await _dio.get(AppHttpUrl.getRefundAccountInfo);
    return response.data;
  }

  Future<Map<String, dynamic>> putRefundAccountInfo(
    RefundAccountRequestDto request,
  ) async {
    final response = await _dio.put(
      AppHttpUrl.getRefundAccountInfo,
      data: request.toJson(),
    );
    return response.data;
  }
}
