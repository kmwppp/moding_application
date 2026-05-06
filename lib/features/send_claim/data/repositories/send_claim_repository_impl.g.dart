// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_claim_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(claimRepository)
final claimRepositoryProvider = ClaimRepositoryProvider._();

final class ClaimRepositoryProvider
    extends
        $FunctionalProvider<
          SendClaimRepository,
          SendClaimRepository,
          SendClaimRepository
        >
    with $Provider<SendClaimRepository> {
  ClaimRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claimRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claimRepositoryHash();

  @$internal
  @override
  $ProviderElement<SendClaimRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SendClaimRepository create(Ref ref) {
    return claimRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SendClaimRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SendClaimRepository>(value),
    );
  }
}

String _$claimRepositoryHash() => r'ed8323237559384a693ae9e39422ccb7f1c39787';
