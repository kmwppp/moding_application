import 'dart:async';

import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/signup/data/repositories/signup_repository_impl.dart';
import 'package:moding_application/features/signup/presentation/providers/step1_providers/signup_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class SignupViewModel extends _$SignupViewModel {
  Timer? _debounce;

  @override
  SignupState build() {
    return SignupState.initial();
  }

  /// 1. 4글자 이상이여야 함
  /// 2. 4글자 미만 일때 (visibleSuccessCaption: false / visibleWarningCaption: true)
  /// 3. 50글자 초과했을때 (visibleSuccessCaption: false / visibleWarningCaption: true)
  /// 4. 중복된 아이디 일때 (visibleSuccessCaption: false / visibleWarningCaption: true)
  /// 5. 4글자 이상이면서 50글자 이하고, 중복된 아이디가 아닐때 (visibleSuccessCaption: true / visibleWarningCaption: false)
  Future<void> changeId(String id) async {
    // 먼저 id 상태 업데이트
    state = state.copyWith(id: id);

    // 4글자 미만
    if (id.length < 4) {
      state = state.copyWith(
        visibleSuccessCaptionId: false,
        visibleWarningCaptionId: false,
      );
      return;
    }

    // 50글자 초과
    if (id.length > 50) {
      state = state.copyWith(
        visibleSuccessCaptionId: false,
        visibleWarningCaptionId: true,
      );
      return;
    }

    final available = await checkAvailable(id);

    if (!available) {
      state = state.copyWith(
        visibleSuccessCaptionId: false,
        visibleWarningCaptionId: true,
      );
      return;
    }

    // 정상
    state = state.copyWith(
      visibleSuccessCaptionId: true,
      visibleWarningCaptionId: false,
    );
  }

  Future<bool> checkAvailable(String userId) async {
    try {
      final repository = ref.read(signupRepositoryProvider);
      return await repository.executeDuplicate(userId);
    } catch (e) {
      appLog("❌ 에러: $e");
      return false;
    }
  }

  void changePw(String pw) {
    state = state.copyWith(password: pw);

    // 비밀번호를 입력하지 않았으면 무조건 캡션 삭제
    if (pw.isEmpty) {
      state = state.copyWith(
        visibleSuccessCaptionPw: false,
        visibleWarningCaptionPw: false,
      );
      return;
    }

    //정규식을 통한 영문 + 숫자 + 특수문자 + 8자 이상 체크
    final regex = RegExp(
      r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$',
    );
    bool match = regex.hasMatch(pw);
    state = state.copyWith(
      visibleSuccessCaptionPw: match,
      visibleWarningCaptionPw: !match,
    );

    changeConfirmPw(state.confirmPassword);
  }

  void changeConfirmPw(String confirmPw) {
    state = state.copyWith(confirmPassword: confirmPw);

    // 비밀번호를 입력하지 않았으면 무조건 캡션 삭제
    if (confirmPw.isEmpty) {
      state = state.copyWith(visibleWarningCaptionConfirmPw: false);
      return;
    }

    String pw = state.password;
    // 비밀번호와 비밀번호 확인이 일치하지 않으면 캡션 노출
    if (pw != confirmPw) {
      state = state.copyWith(
        visibleSuccessCaptionConfirmPw: false,
        visibleWarningCaptionConfirmPw: true,
      );
    } else {
      state = state.copyWith(
        visibleSuccessCaptionConfirmPw: true,
        visibleWarningCaptionConfirmPw: false,
      );
    }
  }

  /// 1. 현재 입력한 아이디가 중복된 아이디 인지 검사
  /// 2. 현재 입력한 비밀번호가 영문 + 숫자 조합인지 검사
  /// 3. 현재 입력한 비밀번호와 비밀번호 확인이 일치하는지 검사
  bool validationChk() {
    // 아이디가 중복된 아이디면 false
    if (!state.visibleSuccessCaptionId) {
      return false;
    }

    // 비밀번호가 영문 + 숫자 조합이 아니면 false
    if (!state.visibleSuccessCaptionPw) {
      return false;
    }

    if (!state.visibleSuccessCaptionConfirmPw) {
      return false;
    }

    return true;
  }
}
