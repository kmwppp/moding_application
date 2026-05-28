import 'package:moding_application/core/network/entities/response_model.dart';

abstract class ChangePasswordRepository {
  Future<ResponseModel> patchChangePassword({
    required String identityKey,
    required String newPassword,
  });
}
