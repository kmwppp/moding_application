import 'package:freezed_annotation/freezed_annotation.dart';

part 'identity_verification_state.freezed.dart';

@freezed
abstract class IdentityVerificationState with _$IdentityVerificationState {
  const IdentityVerificationState._();

  const factory IdentityVerificationState({
    required String password,
    required bool isSubmitting,
  }) = _IdentityVerificationState;

  factory IdentityVerificationState.initial() =>
      const IdentityVerificationState(password: '', isSubmitting: false);
}
