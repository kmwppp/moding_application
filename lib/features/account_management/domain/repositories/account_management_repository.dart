import 'package:moding_application/features/account_management/domain/entities/refund_account_response_dto.dart';
import 'package:moding_application/features/account_management/domain/entities/refund_account_request_dto.dart';
import 'package:moding_application/core/network/entities/response_model.dart';

abstract class AccountManagementRepository {
  Future<RefundAccountResponseWrapper> getRefundAccount();

  Future<ResponseModel> putRefundAccountInfo(RefundAccountRequestDto request);
}
