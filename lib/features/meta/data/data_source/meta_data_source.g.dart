// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(metaDataSource)
final metaDataSourceProvider = MetaDataSourceProvider._();

final class MetaDataSourceProvider
    extends $FunctionalProvider<MetaDataSource, MetaDataSource, MetaDataSource>
    with $Provider<MetaDataSource> {
  MetaDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'metaDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$metaDataSourceHash();

  @$internal
  @override
  $ProviderElement<MetaDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MetaDataSource create(Ref ref) {
    return metaDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MetaDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MetaDataSource>(value),
    );
  }
}

String _$metaDataSourceHash() => r'96c74c9115be32712cce8aff8003cde8e76cd91f';
