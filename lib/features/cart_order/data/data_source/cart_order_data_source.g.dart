// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_order_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartOrderDataSource)
final cartOrderDataSourceProvider = CartOrderDataSourceProvider._();

final class CartOrderDataSourceProvider
    extends
        $FunctionalProvider<
          CartOrderDataSource,
          CartOrderDataSource,
          CartOrderDataSource
        >
    with $Provider<CartOrderDataSource> {
  CartOrderDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartOrderDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartOrderDataSourceHash();

  @$internal
  @override
  $ProviderElement<CartOrderDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CartOrderDataSource create(Ref ref) {
    return cartOrderDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartOrderDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartOrderDataSource>(value),
    );
  }
}

String _$cartOrderDataSourceHash() =>
    r'5012933fe2a9c867a81d89681a3ba23597afc434';
