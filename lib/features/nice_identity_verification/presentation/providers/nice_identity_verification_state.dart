import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';

part 'nice_identity_verification_state.freezed.dart';

@freezed
abstract class NiceIdentityVerificationState
    with _$NiceIdentityVerificationState {
  const factory NiceIdentityVerificationState({
    NiceIdentityVerificationType? type,
    @Default(true) bool isInitializing,
    @Default(false) bool isWebViewLoading,
    String? authUrl,
    String? errorMessage,
    String? resultText,
  }) = _NiceIdentityVerificationState;

  factory NiceIdentityVerificationState.initial() =>
      const NiceIdentityVerificationState();
}
