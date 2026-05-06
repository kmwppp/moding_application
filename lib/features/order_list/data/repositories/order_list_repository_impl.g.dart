// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderListRepository)
final orderListRepositoryProvider = OrderListRepositoryProvider._();

final class OrderListRepositoryProvider
    extends
        $FunctionalProvider<
          OrderListRepository,
          OrderListRepository,
          OrderListRepository
        >
    with $Provider<OrderListRepository> {
  OrderListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderListRepositoryHash();

  @$internal
  @override
  $ProviderElement<OrderListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OrderListRepository create(Ref ref) {
    return orderListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderListRepository>(value),
    );
  }
}

String _$orderListRepositoryHash() =>
    r'caa21e8cfc2c6c27840a068aed07dee1c94f7121';
