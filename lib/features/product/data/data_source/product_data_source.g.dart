// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productDataSource)
final productDataSourceProvider = ProductDataSourceProvider._();

final class ProductDataSourceProvider
    extends
        $FunctionalProvider<
          ProductDataSource,
          ProductDataSource,
          ProductDataSource
        >
    with $Provider<ProductDataSource> {
  ProductDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProductDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductDataSource create(Ref ref) {
    return productDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductDataSource>(value),
    );
  }
}

String _$productDataSourceHash() => r'a091728db3ab69c09e724d08cf5685c5029dd25c';
