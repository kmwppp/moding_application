// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_store_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellerStoreRepository)
final sellerStoreRepositoryProvider = SellerStoreRepositoryProvider._();

final class SellerStoreRepositoryProvider
    extends
        $FunctionalProvider<
          SellerStoreRepository,
          SellerStoreRepository,
          SellerStoreRepository
        >
    with $Provider<SellerStoreRepository> {
  SellerStoreRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellerStoreRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellerStoreRepositoryHash();

  @$internal
  @override
  $ProviderElement<SellerStoreRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SellerStoreRepository create(Ref ref) {
    return sellerStoreRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellerStoreRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellerStoreRepository>(value),
    );
  }
}

String _$sellerStoreRepositoryHash() =>
    r'739fdb222b18da27cc6beeee6a1791de9e9e9a2b';
