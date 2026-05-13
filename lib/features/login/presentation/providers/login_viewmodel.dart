import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/login/data/repositories/login_repository_impl.dart';
import 'package:moding_application/features/login/domain/repositories/login_repository.dart';
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
    state = state.copyWith(isSubmitting: true);
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

      await _sendFcmToken(repository);

      return true;
    } catch (e) {
      appLog("❌ 에러: $e");
      return false;
    } finally {
      state = state.copyWith(isSubmitting: false);
    }
  }

  Future<void> _sendFcmToken(LoginRepository repository) async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null || fcmToken.isEmpty) return;

    for (int attempt = 0; attempt < 2; attempt++) {
      try {
        final response = await repository.patchFcmToken(fcmToken);
        if (response.success) {
          appLog("FCM 토큰 서버 전송 완료");
          return;
        }

        appLog("FCM 토큰 서버 전송 실패 응답: ${response.message}");
      } catch (e) {
        appLog("FCM 토큰 서버 전송 실패: $e");
      }

      if (attempt == 0) {
        appLog("FCM 토큰 서버 전송 재시도");
      }
    }
  }
}
