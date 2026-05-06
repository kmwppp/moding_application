// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_check_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderCheckDataSource)
final orderCheckDataSourceProvider = OrderCheckDataSourceProvider._();

final class OrderCheckDataSourceProvider
    extends
        $FunctionalProvider<
          OrderCheckDataSource,
          OrderCheckDataSource,
          OrderCheckDataSource
        >
    with $Provider<OrderCheckDataSource> {
  OrderCheckDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderCheckDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderCheckDataSourceHash();

  @$internal
  @override
  $ProviderElement<OrderCheckDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OrderCheckDataSource create(Ref ref) {
    return orderCheckDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderCheckDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderCheckDataSource>(value),
    );
  }
}

String _$orderCheckDataSourceHash() =>
    r'8f7472b7eae562f611a9fbf09130223357a1a333';
