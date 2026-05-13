// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_info_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellerInfoDataSource)
final sellerInfoDataSourceProvider = SellerInfoDataSourceProvider._();

final class SellerInfoDataSourceProvider
    extends
        $FunctionalProvider<
          SellerInfoDataSource,
          SellerInfoDataSource,
          SellerInfoDataSource
        >
    with $Provider<SellerInfoDataSource> {
  SellerInfoDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellerInfoDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellerInfoDataSourceHash();

  @$internal
  @override
  $ProviderElement<SellerInfoDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SellerInfoDataSource create(Ref ref) {
    return sellerInfoDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellerInfoDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellerInfoDataSource>(value),
    );
  }
}

String _$sellerInfoDataSourceHash() =>
    r'77f21ac227dc42e6336b869dcd3eac7fced2851c';
