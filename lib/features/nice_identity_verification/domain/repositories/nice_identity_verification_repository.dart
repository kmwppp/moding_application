import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_response_dto.dart';

abstract class NiceIdentityVerificationRepository {
  Future<NiceIdentityVerificationResponseDto> postIdentityVerification({
    required String purpose,
  });
}
