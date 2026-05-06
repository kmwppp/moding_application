import 'package:moding_application/core/network/entities/response_model.dart';

import '../../../order_check/domain/entities/order_detail_dto.dart';

abstract class SendClaimRepository {
  Future<ResponseModel> postClaim(int orderId, Map<String, dynamic> request);

  Future<OrderDetailWrapper> getMyOrderInfo(int orderId);
}
