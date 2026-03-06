import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_step2_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class SignupStep2ViewModel extends _$SignupStep2ViewModel {
  @override
  SignupStep2State build() {
    return SignupStep2State.initial();
  }

  /// ------------------------------------------------
  /// 사업자 유형 선택시 로직
  /// ------------------------------------------------
  void changeBusinessType(int type) {
    int nowType = state.businessType;
    if (nowType == type) {
      state = state.copyWith(businessType: 0);
    } else {
      state = state.copyWith(businessType: type);
    }
  }

  /// ------------------------------------------------
  /// 전화번호 입력시 로직
  /// - 010-1234-5678 형식을 반드시 유지함
  /// ------------------------------------------------
  void changePhoneNum(String phoneNum) {
    final chk = RegExp(r'^010-\d{3,4}-\d{4}$').hasMatch(phoneNum);
    state = state.copyWith(phoneNum: phoneNum, phoneNumValid: chk);
  }

  void clickedSendSMS() {
    state = state.copyWith(phoneNumSuccess: true);
  }

  /// ------------------------------------------------
  /// 안증번호 입력시 로직
  /// - 인증번호 6자리일 때 활성화
  /// ------------------------------------------------
  void changeCertifiNum(String num) {
    bool valid = num.length == 6;
    state = state.copyWith(certifiNum: num, certifiNumValid: valid);
  }

  void clickedCertifiBtn() {
    state = state.copyWith(certifiSuccess: true);
  }

  void changeAgreement(int index, bool value) {
    // 기존 리스트를 복사하여 새로운 리스트 생성
    final newList = List<bool>.from(state.agreeList);
    newList[index] = value;

    state = state.copyWith(agreeList: newList);
  }
}
