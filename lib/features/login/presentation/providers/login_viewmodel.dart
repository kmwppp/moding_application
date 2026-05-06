import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/features/login/data/repositories/login_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'login_state.dart';

part 'login_viewmodel.g.dart'; // 필수!

@Riverpod(keepAlive: true)
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginState build() {
    return LoginState.initial();
  }

  void changeUserId({required String userId}) {
    state = state.copyWith(userId: userId);
  }

  void changeUserPassword({required String userPassword}) {
    state = state.copyWith(userPassword: userPassword);
  }

  //실제 로그인 함수
  Future<bool> login() async {
    try {
      final repository = ref.read(loginRepositoryProvider);
      final token = await repository.executeLogin(
        state.userId,
        state.userPassword,
      );

      await ref
          .read(tokenStorageProvider)
          .saveTokens(
            accessToken: token.accessToken,
            refreshToken: token.refreshToken,
          );

      return true;
    } catch (e) {
      print("❌ 에러: $e");
      return false;
    }
  }
}
