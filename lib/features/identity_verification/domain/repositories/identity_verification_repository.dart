import 'package:moding_application/features/identity_verification/domain/entities/reauth_response_dto.dart';

abstract class IdentityVerificationRepository {
  Future<ReauthResponseWrapper> postReAuth(String password);
}
