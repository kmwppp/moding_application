// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productListRepository)
final productListRepositoryProvider = ProductListRepositoryProvider._();

final class ProductListRepositoryProvider
    extends
        $FunctionalProvider<
          ProductListRepository,
          ProductListRepository,
          ProductListRepository
        >
    with $Provider<ProductListRepository> {
  ProductListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productListRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProductListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductListRepository create(Ref ref) {
    return productListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductListRepository>(value),
    );
  }
}

String _$productListRepositoryHash() =>
    r'32eb4ebe8b6c769d317004c2f85bd026d235332c';
