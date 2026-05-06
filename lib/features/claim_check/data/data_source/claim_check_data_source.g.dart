// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_check_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(claimCheckDataSource)
final claimCheckDataSourceProvider = ClaimCheckDataSourceProvider._();

final class ClaimCheckDataSourceProvider
    extends
        $FunctionalProvider<
          ClaimCheckDataSource,
          ClaimCheckDataSource,
          ClaimCheckDataSource
        >
    with $Provider<ClaimCheckDataSource> {
  ClaimCheckDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claimCheckDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claimCheckDataSourceHash();

  @$internal
  @override
  $ProviderElement<ClaimCheckDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClaimCheckDataSource create(Ref ref) {
    return claimCheckDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClaimCheckDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClaimCheckDataSource>(value),
    );
  }
}

String _$claimCheckDataSourceHash() =>
    r'a2c2ece55a756509971601c6df42d3220ba79eea';
