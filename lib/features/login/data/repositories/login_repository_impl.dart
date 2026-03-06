import 'package:moding_application/features/login/data/data_source/login_remote_data_source.dart';
import 'package:moding_application/features/login/domain/repositories/login_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/login_token.dart';

part 'login_repository_impl.g.dart';

@riverpod
LoginRepository loginRepository(Ref ref) {
  // DataSource를 주입받아 Repository 구현체를 반환
  final dataSource = ref.watch(loginRemoteDataSourceProvider);
  return LoginRepositoryImpl(dataSource);
}

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource _dataSource;

  LoginRepositoryImpl(this._dataSource);

  @override
  Future<LoginToken> executeLogin(String userId, String userPassword) async {
    final response = await _dataSource.login(userId, userPassword);
    final data = response['data'];

    return LoginToken(
      accessToken: data['accessToken'],
      refreshToken: data['refreshToken'],
      role: data['role'],
    );
  }
}
