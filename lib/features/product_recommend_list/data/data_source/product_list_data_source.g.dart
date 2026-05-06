// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productListDataSource)
final productListDataSourceProvider = ProductListDataSourceProvider._();

final class ProductListDataSourceProvider
    extends
        $FunctionalProvider<
          ProductListDataSource,
          ProductListDataSource,
          ProductListDataSource
        >
    with $Provider<ProductListDataSource> {
  ProductListDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productListDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productListDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProductListDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductListDataSource create(Ref ref) {
    return productListDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductListDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductListDataSource>(value),
    );
  }
}

String _$productListDataSourceHash() =>
    r'2636b704323be0955fe147dafd6489e5e60d818a';
