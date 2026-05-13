// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_complete_delivery_info_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaymentCompleteDeliveryInfoViewModel)
final paymentCompleteDeliveryInfoViewModelProvider =
    PaymentCompleteDeliveryInfoViewModelProvider._();

final class PaymentCompleteDeliveryInfoViewModelProvider
    extends
        $NotifierProvider<
          PaymentCompleteDeliveryInfoViewModel,
          PaymentCompleteDeliveryInfoState
        > {
  PaymentCompleteDeliveryInfoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentCompleteDeliveryInfoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$paymentCompleteDeliveryInfoViewModelHash();

  @$internal
  @override
  PaymentCompleteDeliveryInfoViewModel create() =>
      PaymentCompleteDeliveryInfoViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentCompleteDeliveryInfoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentCompleteDeliveryInfoState>(
        value,
      ),
    );
  }
}

String _$paymentCompleteDeliveryInfoViewModelHash() =>
    r'e4828ef31b0fdbb340f47725e4f07a3bcbcb3b3a';

abstract class _$PaymentCompleteDeliveryInfoViewModel
    extends $Notifier<PaymentCompleteDeliveryInfoState> {
  PaymentCompleteDeliveryInfoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              PaymentCompleteDeliveryInfoState,
              PaymentCompleteDeliveryInfoState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                PaymentCompleteDeliveryInfoState,
                PaymentCompleteDeliveryInfoState
              >,
              PaymentCompleteDeliveryInfoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
