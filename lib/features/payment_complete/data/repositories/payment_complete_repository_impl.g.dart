// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_complete_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(paymentCompleteRepository)
final paymentCompleteRepositoryProvider = PaymentCompleteRepositoryProvider._();

final class PaymentCompleteRepositoryProvider
    extends
        $FunctionalProvider<
          PaymentCompleteRepository,
          PaymentCompleteRepository,
          PaymentCompleteRepository
        >
    with $Provider<PaymentCompleteRepository> {
  PaymentCompleteRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentCompleteRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentCompleteRepositoryHash();

  @$internal
  @override
  $ProviderElement<PaymentCompleteRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentCompleteRepository create(Ref ref) {
    return paymentCompleteRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentCompleteRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentCompleteRepository>(value),
    );
  }
}

String _$paymentCompleteRepositoryHash() =>
    r'72f0b45d011e15658a85af81388785f322871937';
