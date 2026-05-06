// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_check_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderCheckRepository)
final orderCheckRepositoryProvider = OrderCheckRepositoryProvider._();

final class OrderCheckRepositoryProvider
    extends
        $FunctionalProvider<
          OrderCheckRepository,
          OrderCheckRepository,
          OrderCheckRepository
        >
    with $Provider<OrderCheckRepository> {
  OrderCheckRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderCheckRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderCheckRepositoryHash();

  @$internal
  @override
  $ProviderElement<OrderCheckRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OrderCheckRepository create(Ref ref) {
    return orderCheckRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderCheckRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderCheckRepository>(value),
    );
  }
}

String _$orderCheckRepositoryHash() =>
    r'ed26e6668b095691bbaafe1319f5fd001790f253';
