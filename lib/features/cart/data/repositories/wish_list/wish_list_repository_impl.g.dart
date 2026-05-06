// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(wishListRepository)
final wishListRepositoryProvider = WishListRepositoryProvider._();

final class WishListRepositoryProvider
    extends
        $FunctionalProvider<
          WishListRepository,
          WishListRepository,
          WishListRepository
        >
    with $Provider<WishListRepository> {
  WishListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishListRepositoryHash();

  @$internal
  @override
  $ProviderElement<WishListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WishListRepository create(Ref ref) {
    return wishListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WishListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WishListRepository>(value),
    );
  }
}

String _$wishListRepositoryHash() =>
    r'5f9a78451f5bd62da547c49f786d1bd328405003';
