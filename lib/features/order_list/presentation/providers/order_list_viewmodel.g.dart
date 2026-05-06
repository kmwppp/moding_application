// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderListViewModel)
final orderListViewModelProvider = OrderListViewModelProvider._();

final class OrderListViewModelProvider
    extends $NotifierProvider<OrderListViewModel, OrderListState> {
  OrderListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderListViewModelHash();

  @$internal
  @override
  OrderListViewModel create() => OrderListViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderListState>(value),
    );
  }
}

String _$orderListViewModelHash() =>
    r'fa052d261a05a6927730985420822570a393b1b8';

abstract class _$OrderListViewModel extends $Notifier<OrderListState> {
  OrderListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<OrderListState, OrderListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrderListState, OrderListState>,
              OrderListState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
