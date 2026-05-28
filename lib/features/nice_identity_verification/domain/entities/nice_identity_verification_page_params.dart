import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';

class NiceIdentityVerificationPageParams {
  const NiceIdentityVerificationPageParams({
    required this.type,
    required this.source,
  });

  final NiceIdentityVerificationType type;
  final NiceVerificationSource source;
}
