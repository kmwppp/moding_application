// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_check_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(claimCheckRepository)
final claimCheckRepositoryProvider = ClaimCheckRepositoryProvider._();

final class ClaimCheckRepositoryProvider
    extends
        $FunctionalProvider<
          ClaimCheckRepository,
          ClaimCheckRepository,
          ClaimCheckRepository
        >
    with $Provider<ClaimCheckRepository> {
  ClaimCheckRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claimCheckRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claimCheckRepositoryHash();

  @$internal
  @override
  $ProviderElement<ClaimCheckRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClaimCheckRepository create(Ref ref) {
    return claimCheckRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClaimCheckRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClaimCheckRepository>(value),
    );
  }
}

String _$claimCheckRepositoryHash() =>
    r'49bf273acd0fd8afada1d227e5d7185aedfa77c8';
