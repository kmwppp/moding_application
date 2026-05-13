// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductListViewModel)
final productListViewModelProvider = ProductListViewModelFamily._();

final class ProductListViewModelProvider
    extends $NotifierProvider<ProductListViewModel, ProductListState> {
  ProductListViewModelProvider._({
    required ProductListViewModelFamily super.from,
    required ({ProductRecommendType type, int? productId}) super.argument,
  }) : super(
         retry: null,
         name: r'productListViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productListViewModelHash();

  @override
  String toString() {
    return r'productListViewModelProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ProductListViewModel create() => ProductListViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductListState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProductListViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productListViewModelHash() =>
    r'48105b347cb8879635c1b9f72be821b83748fe69';

final class ProductListViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductListViewModel,
          ProductListState,
          ProductListState,
          ProductListState,
          ({ProductRecommendType type, int? productId})
        > {
  ProductListViewModelFamily._()
    : super(
        retry: null,
        name: r'productListViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductListViewModelProvider call({
    required ProductRecommendType type,
    int? productId,
  }) => ProductListViewModelProvider._(
    argument: (type: type, productId: productId),
    from: this,
  );

  @override
  String toString() => r'productListViewModelProvider';
}

abstract class _$ProductListViewModel extends $Notifier<ProductListState> {
  late final _$args = ref.$arg as ({ProductRecommendType type, int? productId});
  ProductRecommendType get type => _$args.type;
  int? get productId => _$args.productId;

  ProductListState build({required ProductRecommendType type, int? productId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ProductListState, ProductListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProductListState, ProductListState>,
              ProductListState,
              Object?,
              Object?
            >;
    element.handleCreate(
      ref,
      () => build(type: _$args.type, productId: _$args.productId),
    );
  }
}
