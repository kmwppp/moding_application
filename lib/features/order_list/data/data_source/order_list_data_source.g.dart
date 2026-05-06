// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderListDataSource)
final orderListDataSourceProvider = OrderListDataSourceProvider._();

final class OrderListDataSourceProvider
    extends
        $FunctionalProvider<
          OrderListDataSource,
          OrderListDataSource,
          OrderListDataSource
        >
    with $Provider<OrderListDataSource> {
  OrderListDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderListDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderListDataSourceHash();

  @$internal
  @override
  $ProviderElement<OrderListDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OrderListDataSource create(Ref ref) {
    return orderListDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderListDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderListDataSource>(value),
    );
  }
}

String _$orderListDataSourceHash() =>
    r'0987f765561318a09c95cf92e5604470acf1dafe';
