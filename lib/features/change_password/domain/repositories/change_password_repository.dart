import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/change_password/domain/entities/identity_verify_password_reset_result.dart';

abstract class ChangePasswordRepository {
  Future<ResponseModel> patchChangePassword({
    required String identityKey,
    required String newPassword,
  });

  Future<IdentityVerifyPasswordResetResult> verifyIdentityAndResetPassword({
    required String identityVerificationKey,
    required String newPassword,
  });
}
