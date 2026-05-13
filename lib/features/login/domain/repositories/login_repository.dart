import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/login/domain/entities/login_token.dart';

abstract class LoginRepository {
  Future<LoginToken> executeLogin(String userId, String userPassword);

  Future<ResponseModel> patchFcmToken(String token);
}
