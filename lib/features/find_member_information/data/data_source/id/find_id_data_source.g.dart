// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_id_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(findIdDataSource)
final findIdDataSourceProvider = FindIdDataSourceProvider._();

final class FindIdDataSourceProvider
    extends
        $FunctionalProvider<
          FindIdDataSource,
          FindIdDataSource,
          FindIdDataSource
        >
    with $Provider<FindIdDataSource> {
  FindIdDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'findIdDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$findIdDataSourceHash();

  @$internal
  @override
  $ProviderElement<FindIdDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FindIdDataSource create(Ref ref) {
    return findIdDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FindIdDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FindIdDataSource>(value),
    );
  }
}

String _$findIdDataSourceHash() => r'6ae9b653d92931902ae227cdbb629f46509609a4';
