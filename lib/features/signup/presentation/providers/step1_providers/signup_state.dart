import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/signup/domain/entities/business_type_model.dart';

part 'signup_state.freezed.dart';

@freezed
abstract class SignupState with _$SignupState {
  const factory SignupState({
    required String id,
    required String password,
    required String confirmPassword,

    required bool visibleSuccessCaptionId,
    required bool visibleSuccessCaptionPw,
    required bool visibleSuccessCaptionConfirmPw,

    required bool visibleWarningCaptionId,
    required bool visibleWarningCaptionPw,
    required bool visibleWarningCaptionConfirmPw,
  }) = _SignupState;

  factory SignupState.initial() => const SignupState(
    id: "",
    password: "",
    confirmPassword: "",

    visibleSuccessCaptionId: false,
    visibleSuccessCaptionPw: false,
    visibleSuccessCaptionConfirmPw: false,

    visibleWarningCaptionId: false,
    visibleWarningCaptionPw: false,
    visibleWarningCaptionConfirmPw: false,
  );
}
