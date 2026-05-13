// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_info_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellerInfoRepository)
final sellerInfoRepositoryProvider = SellerInfoRepositoryProvider._();

final class SellerInfoRepositoryProvider
    extends
        $FunctionalProvider<
          SellerInfoRepository,
          SellerInfoRepository,
          SellerInfoRepository
        >
    with $Provider<SellerInfoRepository> {
  SellerInfoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellerInfoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellerInfoRepositoryHash();

  @$internal
  @override
  $ProviderElement<SellerInfoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SellerInfoRepository create(Ref ref) {
    return sellerInfoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellerInfoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellerInfoRepository>(value),
    );
  }
}

String _$sellerInfoRepositoryHash() =>
    r'b62195c4295836750f1779aa88ee2ee321389e2a';
