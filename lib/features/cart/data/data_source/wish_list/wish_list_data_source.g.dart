// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(wishListDataSource)
final wishListDataSourceProvider = WishListDataSourceProvider._();

final class WishListDataSourceProvider
    extends
        $FunctionalProvider<
          WishListDataSource,
          WishListDataSource,
          WishListDataSource
        >
    with $Provider<WishListDataSource> {
  WishListDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishListDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishListDataSourceHash();

  @$internal
  @override
  $ProviderElement<WishListDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WishListDataSource create(Ref ref) {
    return wishListDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WishListDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WishListDataSource>(value),
    );
  }
}

String _$wishListDataSourceHash() =>
    r'bf6d92a5f20b2b74ae1a7219c68697b75ab9eed0';
