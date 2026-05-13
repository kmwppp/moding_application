// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_verification_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(identityVerificationRepository)
final identityVerificationRepositoryProvider =
    IdentityVerificationRepositoryProvider._();

final class IdentityVerificationRepositoryProvider
    extends
        $FunctionalProvider<
          IdentityVerificationRepository,
          IdentityVerificationRepository,
          IdentityVerificationRepository
        >
    with $Provider<IdentityVerificationRepository> {
  IdentityVerificationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'identityVerificationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$identityVerificationRepositoryHash();

  @$internal
  @override
  $ProviderElement<IdentityVerificationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IdentityVerificationRepository create(Ref ref) {
    return identityVerificationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IdentityVerificationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IdentityVerificationRepository>(
        value,
      ),
    );
  }
}

String _$identityVerificationRepositoryHash() =>
    r'34b6667f7f5e4ad425f437e873e61113319ef81c';
