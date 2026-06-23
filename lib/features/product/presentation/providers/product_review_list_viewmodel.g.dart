// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductReviewListViewModel)
final productReviewListViewModelProvider = ProductReviewListViewModelFamily._();

final class ProductReviewListViewModelProvider
    extends
        $NotifierProvider<ProductReviewListViewModel, ProductReviewListState> {
  ProductReviewListViewModelProvider._({
    required ProductReviewListViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productReviewListViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productReviewListViewModelHash();

  @override
  String toString() {
    return r'productReviewListViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductReviewListViewModel create() => ProductReviewListViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductReviewListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductReviewListState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProductReviewListViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productReviewListViewModelHash() =>
    r'46882952663a1af3f94520342b855d2bbd067246';

final class ProductReviewListViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductReviewListViewModel,
          ProductReviewListState,
          ProductReviewListState,
          ProductReviewListState,
          int
        > {
  ProductReviewListViewModelFamily._()
    : super(
        retry: null,
        name: r'productReviewListViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductReviewListViewModelProvider call(int productId) =>
      ProductReviewListViewModelProvider._(argument: productId, from: this);

  @override
  String toString() => r'productReviewListViewModelProvider';
}

abstract class _$ProductReviewListViewModel
    extends $Notifier<ProductReviewListState> {
  late final _$args = ref.$arg as int;
  int get productId => _$args;

  ProductReviewListState build(int productId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<ProductReviewListState, ProductReviewListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProductReviewListState, ProductReviewListState>,
              ProductReviewListState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
