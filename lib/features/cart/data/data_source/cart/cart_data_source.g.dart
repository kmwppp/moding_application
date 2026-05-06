// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartDataSource)
final cartDataSourceProvider = CartDataSourceProvider._();

final class CartDataSourceProvider
    extends $FunctionalProvider<CartDataSource, CartDataSource, CartDataSource>
    with $Provider<CartDataSource> {
  CartDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartDataSourceHash();

  @$internal
  @override
  $ProviderElement<CartDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartDataSource create(Ref ref) {
    return cartDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartDataSource>(value),
    );
  }
}

String _$cartDataSourceHash() => r'cac4b83cbae6595d2545c874885de913d87af26e';
