import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/send_claim/data/data_source/send_claim_data_source.dart';
import 'package:moding_application/features/send_claim/domain/repositories/send_claim_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../order_check/domain/entities/order_detail_dto.dart';

part 'send_claim_repository_impl.g.dart';

@riverpod
SendClaimRepository claimRepository(Ref ref) {
  final dataSource = ref.watch(sendClaimDataSourceProvider);
  return SendClaimRepositoryImpl(dataSource);
}

class SendClaimRepositoryImpl implements SendClaimRepository {
  final SendClaimDataSource _dataSource;

  SendClaimRepositoryImpl(this._dataSource);

  @override
  Future<ResponseModel> postClaim(
    int orderId,
    Map<String, dynamic> request,
  ) async {
    final response = await _dataSource.postClaim(orderId, request);
    return ResponseModel.fromJson(response);
  }

  @override
  Future<OrderDetailWrapper> getMyOrderInfo(int orderId) async {
    final response = await _dataSource.getMyOrderInfo(orderId);
    return OrderDetailWrapper.fromJson(response);
  }
}
