// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_id_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(findIdRepository)
final findIdRepositoryProvider = FindIdRepositoryProvider._();

final class FindIdRepositoryProvider
    extends
        $FunctionalProvider<
          FindIdRepository,
          FindIdRepository,
          FindIdRepository
        >
    with $Provider<FindIdRepository> {
  FindIdRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'findIdRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$findIdRepositoryHash();

  @$internal
  @override
  $ProviderElement<FindIdRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FindIdRepository create(Ref ref) {
    return findIdRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FindIdRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FindIdRepository>(value),
    );
  }
}

String _$findIdRepositoryHash() => r'3d2e5c0facf6a3d67c3ee373af3b6f061d18b76e';
