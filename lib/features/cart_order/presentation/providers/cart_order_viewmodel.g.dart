// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_order_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartOrderViewModel)
final cartOrderViewModelProvider = CartOrderViewModelProvider._();

final class CartOrderViewModelProvider
    extends $NotifierProvider<CartOrderViewModel, CartOrderState> {
  CartOrderViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartOrderViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartOrderViewModelHash();

  @$internal
  @override
  CartOrderViewModel create() => CartOrderViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartOrderState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartOrderState>(value),
    );
  }
}

String _$cartOrderViewModelHash() =>
    r'9f791f134b731235c0fdd74cf7a8085b609158bb';

abstract class _$CartOrderViewModel extends $Notifier<CartOrderState> {
  CartOrderState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CartOrderState, CartOrderState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CartOrderState, CartOrderState>,
              CartOrderState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
