// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(metaRepository)
final metaRepositoryProvider = MetaRepositoryProvider._();

final class MetaRepositoryProvider
    extends $FunctionalProvider<MetaRepository, MetaRepository, MetaRepository>
    with $Provider<MetaRepository> {
  MetaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'metaRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$metaRepositoryHash();

  @$internal
  @override
  $ProviderElement<MetaRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MetaRepository create(Ref ref) {
    return metaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MetaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MetaRepository>(value),
    );
  }
}

String _$metaRepositoryHash() => r'0d23fa4065e493eb455d2f169a2f27dcda2f40c1';
