import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_step2_state.freezed.dart';

@freezed
abstract class SignupStep2State with _$SignupStep2State {
  // 1. 이 private 생성자가 반드시 있어야 합니다. (생성된 파일의 178행에서 super._()를 호출하고 있음)
  const SignupStep2State._();

  const factory SignupStep2State({
    required int businessType,
    required String phoneNum,
    required bool phoneNumValid,
    required bool phoneNumSuccess,

    required String certifiNum,
    required bool certifiNumValid,
    required bool certifiSuccess,

    required List<bool> agreeList,
  }) = _SignupStep2State;

  factory SignupStep2State.initial() => const SignupStep2State(
    businessType: 0,
    phoneNum: "",
    phoneNumValid: false,
    phoneNumSuccess: false,

    certifiNum: '',
    certifiNumValid: false,
    certifiSuccess: false,

    agreeList: [false, false, false, false],
  );
}
