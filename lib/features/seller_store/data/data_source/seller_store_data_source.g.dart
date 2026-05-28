// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_store_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellerStoreDataSource)
final sellerStoreDataSourceProvider = SellerStoreDataSourceProvider._();

final class SellerStoreDataSourceProvider
    extends
        $FunctionalProvider<
          SellerStoreDataSource,
          SellerStoreDataSource,
          SellerStoreDataSource
        >
    with $Provider<SellerStoreDataSource> {
  SellerStoreDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellerStoreDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellerStoreDataSourceHash();

  @$internal
  @override
  $ProviderElement<SellerStoreDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SellerStoreDataSource create(Ref ref) {
    return sellerStoreDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellerStoreDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellerStoreDataSource>(value),
    );
  }
}

String _$sellerStoreDataSourceHash() =>
    r'cb74bd0cc24519d05b30a7790a4a159921c6f538';
