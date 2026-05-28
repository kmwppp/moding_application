// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_store_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SellerStoreViewModel)
final sellerStoreViewModelProvider = SellerStoreViewModelFamily._();

final class SellerStoreViewModelProvider
    extends $NotifierProvider<SellerStoreViewModel, SellerStoreState> {
  SellerStoreViewModelProvider._({
    required SellerStoreViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'sellerStoreViewModelProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sellerStoreViewModelHash();

  @override
  String toString() {
    return r'sellerStoreViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SellerStoreViewModel create() => SellerStoreViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellerStoreState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellerStoreState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SellerStoreViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sellerStoreViewModelHash() =>
    r'd347df251a9c690ffdf442ef233d9ee0a4ce132f';

final class SellerStoreViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          SellerStoreViewModel,
          SellerStoreState,
          SellerStoreState,
          SellerStoreState,
          int
        > {
  SellerStoreViewModelFamily._()
    : super(
        retry: null,
        name: r'sellerStoreViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  SellerStoreViewModelProvider call({required int sellerProfileId}) =>
      SellerStoreViewModelProvider._(argument: sellerProfileId, from: this);

  @override
  String toString() => r'sellerStoreViewModelProvider';
}

abstract class _$SellerStoreViewModel extends $Notifier<SellerStoreState> {
  late final _$args = ref.$arg as int;
  int get sellerProfileId => _$args;

  SellerStoreState build({required int sellerProfileId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SellerStoreState, SellerStoreState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SellerStoreState, SellerStoreState>,
              SellerStoreState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(sellerProfileId: _$args));
  }
}
