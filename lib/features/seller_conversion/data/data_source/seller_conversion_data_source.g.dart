// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_conversion_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellerConversionDataSource)
final sellerConversionDataSourceProvider =
    SellerConversionDataSourceProvider._();

final class SellerConversionDataSourceProvider
    extends
        $FunctionalProvider<
          SellerConversionDataSource,
          SellerConversionDataSource,
          SellerConversionDataSource
        >
    with $Provider<SellerConversionDataSource> {
  SellerConversionDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellerConversionDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellerConversionDataSourceHash();

  @$internal
  @override
  $ProviderElement<SellerConversionDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SellerConversionDataSource create(Ref ref) {
    return sellerConversionDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellerConversionDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellerConversionDataSource>(value),
    );
  }
}

String _$sellerConversionDataSourceHash() =>
    r'dca43d2ef36f1ddae38abbb7989c1564316a1fe8';
