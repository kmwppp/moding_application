import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/claim_check/domain/entities/claim_check_response_dto.dart';

abstract class ClaimCheckRepository {
  Future<ClaimCheckResponseWrapper> getClaimDetail(int claimId);

  Future<ResponseModel> patchClaimAppeal({
    required int claimId,
    required String appealReason,
  });
}
