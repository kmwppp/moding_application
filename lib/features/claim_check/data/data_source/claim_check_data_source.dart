import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'claim_check_data_source.g.dart';

@riverpod
ClaimCheckDataSource claimCheckDataSource(Ref ref) {
  return ClaimCheckDataSource(ref.watch(dioProvider));
}

class ClaimCheckDataSource {
  final Dio _dio;

  ClaimCheckDataSource(this._dio);

  Future<Map<String, dynamic>> getClaimCheckDetail(int claimId) async {
    final response = await _dio.get(AppHttpUrl.getClaimCheckDetail(claimId));
    return response.data;
  }

  Future<Map<String, dynamic>> patchClaimAppeal({
    required int claimId,
    required String appealReason,
  }) async {
    final response = await _dio.patch(
      AppHttpUrl.postClaimAppeal(claimId),
      data: {'appealReason': appealReason},
    );
    return response.data;
  }
}
