import 'package:moding_application/features/login/domain/entities/login_token.dart';

abstract class LoginRepository {
  Future<LoginToken> executeLogin(String userId, String userPassword);
}
