// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_conversion_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SellerConversionViewModel)
final sellerConversionViewModelProvider = SellerConversionViewModelProvider._();

final class SellerConversionViewModelProvider
    extends
        $NotifierProvider<SellerConversionViewModel, SellerConversionState> {
  SellerConversionViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellerConversionViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellerConversionViewModelHash();

  @$internal
  @override
  SellerConversionViewModel create() => SellerConversionViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellerConversionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellerConversionState>(value),
    );
  }
}

String _$sellerConversionViewModelHash() =>
    r'cd188a394e5c5613337e1620f1317d764d2d1057';

abstract class _$SellerConversionViewModel
    extends $Notifier<SellerConversionState> {
  SellerConversionState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SellerConversionState, SellerConversionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SellerConversionState, SellerConversionState>,
              SellerConversionState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
