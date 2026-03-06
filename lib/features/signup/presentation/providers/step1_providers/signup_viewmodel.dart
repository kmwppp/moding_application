import 'package:moding_application/features/signup/presentation/providers/step1_providers/signup_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class SignupViewModel extends _$SignupViewModel {
  @override
  SignupState build() {
    return SignupState.initial();
  }

  /// 1. 4글자 이상이여야 함
  /// 2. 4글자 미만 일때 (visibleSuccessCaption: false / visibleWarningCaption: true)
  /// 3. 50글자 초과했을때 (visibleSuccessCaption: false / visibleWarningCaption: true)
  /// 4. 중복된 아이디 일때 (visibleSuccessCaption: false / visibleWarningCaption: true)
  /// 5. 4글자 이상이면서 50글자 이하고, 중복된 아이디가 아닐때 (visibleSuccessCaption: true / visibleWarningCaption: false)
  void changeId(String id) {
    bool visibleSuccess = false;
    bool visibleWarning = false;

    // 1. 4글자 미만
    if (id.length < 4) {
      visibleSuccess = false;
      visibleWarning = false;
    }
    // 3. 50글자 초과
    else if (id.length > 50) {
      visibleSuccess = false;
      visibleWarning = true;
    }
    // 4. 중복된 아이디 (예시 함수)
    // else if (isDuplicatedId(id)) {
    //   visibleSuccess = false;
    //   visibleWarning = true;
    // }
    // 5. 정상
    else {
      visibleSuccess = true;
      visibleWarning = false;
    }

    state = state.copyWith(
      id: id,
      visibleSuccessCaptionId: visibleSuccess,
      visibleWarningCaptionId: visibleWarning,
    );
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

    //정규식을 통한 영문 + 숫자 + 8자 이상 체크
    final regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
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
