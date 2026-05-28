import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nice_callback_result_provider.g.dart';

@Riverpod(keepAlive: true)
class NiceCallbackResult extends _$NiceCallbackResult {
  @override
  NiceIdentityVerificationResult? build() => null;

  void set(NiceIdentityVerificationResult result) => state = result;
  void clear() => state = null;
}
