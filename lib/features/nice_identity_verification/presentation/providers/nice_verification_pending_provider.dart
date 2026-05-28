import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nice_verification_pending_provider.g.dart';

@Riverpod(keepAlive: true)
class NiceVerificationPending extends _$NiceVerificationPending {
  @override
  NiceVerificationSource? build() => null;

  void set(NiceVerificationSource source) => state = source;
  void clear() => state = null;
}
