// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_check_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderCheckViewModel)
final orderCheckViewModelProvider = OrderCheckViewModelProvider._();

final class OrderCheckViewModelProvider
    extends $NotifierProvider<OrderCheckViewModel, OrderCheckState> {
  OrderCheckViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderCheckViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderCheckViewModelHash();

  @$internal
  @override
  OrderCheckViewModel create() => OrderCheckViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderCheckState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderCheckState>(value),
    );
  }
}

String _$orderCheckViewModelHash() =>
    r'388e9ee45413f9d0d527ef6d5905a86594b13549';

abstract class _$OrderCheckViewModel extends $Notifier<OrderCheckState> {
  OrderCheckState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<OrderCheckState, OrderCheckState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrderCheckState, OrderCheckState>,
              OrderCheckState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
