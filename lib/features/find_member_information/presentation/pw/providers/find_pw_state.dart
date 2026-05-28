import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_pw_state.freezed.dart';

@freezed
abstract class FindPwState with _$FindPwState {
  const FindPwState._();

  const factory FindPwState({
    required bool isLoading,
    @Default('') String loginId,
    @Default('') String newPassword,
    @Default('') String newPasswordConfirm,
    @Default('') String identityVerificationKey,
  }) = _FindPwState;

  factory FindPwState.initial() => const FindPwState(isLoading: false);
}
