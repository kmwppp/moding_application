// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_pw_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(findPwDataSource)
final findPwDataSourceProvider = FindPwDataSourceProvider._();

final class FindPwDataSourceProvider
    extends
        $FunctionalProvider<
          FindPwDataSource,
          FindPwDataSource,
          FindPwDataSource
        >
    with $Provider<FindPwDataSource> {
  FindPwDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'findPwDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$findPwDataSourceHash();

  @$internal
  @override
  $ProviderElement<FindPwDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FindPwDataSource create(Ref ref) {
    return findPwDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FindPwDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FindPwDataSource>(value),
    );
  }
}

String _$findPwDataSourceHash() => r'd411b463848cbd6df65b4223905da10e6f163362';
