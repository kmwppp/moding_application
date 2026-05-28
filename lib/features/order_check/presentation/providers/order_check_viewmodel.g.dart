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
    r'c89dceab26ca0b88ea58879d49641ff8a5ff522a';

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
