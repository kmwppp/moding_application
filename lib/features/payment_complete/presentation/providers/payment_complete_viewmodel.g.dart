// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_complete_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaymentCompleteViewModel)
final paymentCompleteViewModelProvider = PaymentCompleteViewModelFamily._();

final class PaymentCompleteViewModelProvider
    extends $NotifierProvider<PaymentCompleteViewModel, PaymentCompleteState> {
  PaymentCompleteViewModelProvider._({
    required PaymentCompleteViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'paymentCompleteViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$paymentCompleteViewModelHash();

  @override
  String toString() {
    return r'paymentCompleteViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PaymentCompleteViewModel create() => PaymentCompleteViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentCompleteState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentCompleteState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentCompleteViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$paymentCompleteViewModelHash() =>
    r'18c2ce174059c8c8441074b81124c4bf4b18f576';

final class PaymentCompleteViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          PaymentCompleteViewModel,
          PaymentCompleteState,
          PaymentCompleteState,
          PaymentCompleteState,
          int
        > {
  PaymentCompleteViewModelFamily._()
    : super(
        retry: null,
        name: r'paymentCompleteViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PaymentCompleteViewModelProvider call(int paymentId) =>
      PaymentCompleteViewModelProvider._(argument: paymentId, from: this);

  @override
  String toString() => r'paymentCompleteViewModelProvider';
}

abstract class _$PaymentCompleteViewModel
    extends $Notifier<PaymentCompleteState> {
  late final _$args = ref.$arg as int;
  int get paymentId => _$args;

  PaymentCompleteState build(int paymentId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PaymentCompleteState, PaymentCompleteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PaymentCompleteState, PaymentCompleteState>,
              PaymentCompleteState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
