// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderViewModel)
final orderViewModelProvider = OrderViewModelProvider._();

final class OrderViewModelProvider
    extends $NotifierProvider<OrderViewModel, OrderState> {
  OrderViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderViewModelHash();

  @$internal
  @override
  OrderViewModel create() => OrderViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderState>(value),
    );
  }
}

String _$orderViewModelHash() => r'0a5221ecdad2a01f410ae4250c2ed6a93c7fd799';

abstract class _$OrderViewModel extends $Notifier<OrderState> {
  OrderState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<OrderState, OrderState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrderState, OrderState>,
              OrderState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
