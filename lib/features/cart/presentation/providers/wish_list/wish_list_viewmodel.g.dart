// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WishListModel)
final wishListModelProvider = WishListModelProvider._();

final class WishListModelProvider
    extends $NotifierProvider<WishListModel, WishListState> {
  WishListModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishListModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishListModelHash();

  @$internal
  @override
  WishListModel create() => WishListModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WishListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WishListState>(value),
    );
  }
}

String _$wishListModelHash() => r'2340e6f05afb8bbd4c62e92cbfe8888be7c07a7c';

abstract class _$WishListModel extends $Notifier<WishListState> {
  WishListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<WishListState, WishListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<WishListState, WishListState>,
              WishListState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
