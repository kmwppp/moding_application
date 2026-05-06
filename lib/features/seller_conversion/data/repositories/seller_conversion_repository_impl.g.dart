// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_conversion_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellerConversionRepository)
final sellerConversionRepositoryProvider =
    SellerConversionRepositoryProvider._();

final class SellerConversionRepositoryProvider
    extends
        $FunctionalProvider<
          SellerConversionRepository,
          SellerConversionRepository,
          SellerConversionRepository
        >
    with $Provider<SellerConversionRepository> {
  SellerConversionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellerConversionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellerConversionRepositoryHash();

  @$internal
  @override
  $ProviderElement<SellerConversionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SellerConversionRepository create(Ref ref) {
    return sellerConversionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellerConversionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellerConversionRepository>(value),
    );
  }
}

String _$sellerConversionRepositoryHash() =>
    r'21c9cf6645e05b8e2762c2b1b78e771a0c737aaa';
