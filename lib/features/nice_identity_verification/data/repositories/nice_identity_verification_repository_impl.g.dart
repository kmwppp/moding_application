// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nice_identity_verification_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(niceIdentityVerificationRepository)
final niceIdentityVerificationRepositoryProvider =
    NiceIdentityVerificationRepositoryProvider._();

final class NiceIdentityVerificationRepositoryProvider
    extends
        $FunctionalProvider<
          NiceIdentityVerificationRepository,
          NiceIdentityVerificationRepository,
          NiceIdentityVerificationRepository
        >
    with $Provider<NiceIdentityVerificationRepository> {
  NiceIdentityVerificationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'niceIdentityVerificationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$niceIdentityVerificationRepositoryHash();

  @$internal
  @override
  $ProviderElement<NiceIdentityVerificationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NiceIdentityVerificationRepository create(Ref ref) {
    return niceIdentityVerificationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NiceIdentityVerificationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NiceIdentityVerificationRepository>(
        value,
      ),
    );
  }
}

String _$niceIdentityVerificationRepositoryHash() =>
    r'5f4c8f2ebea1e720eba898c98ac0391c2ae89107';
