// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_order_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartOrderRepository)
final cartOrderRepositoryProvider = CartOrderRepositoryProvider._();

final class CartOrderRepositoryProvider
    extends
        $FunctionalProvider<
          CartOrderRepository,
          CartOrderRepository,
          CartOrderRepository
        >
    with $Provider<CartOrderRepository> {
  CartOrderRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartOrderRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartOrderRepositoryHash();

  @$internal
  @override
  $ProviderElement<CartOrderRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CartOrderRepository create(Ref ref) {
    return cartOrderRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartOrderRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartOrderRepository>(value),
    );
  }
}

String _$cartOrderRepositoryHash() =>
    r'e0bf762329146e1cb552a1ba60e8c895fb41ecc9';
