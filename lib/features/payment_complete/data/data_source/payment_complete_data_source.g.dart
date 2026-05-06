// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_complete_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(paymentCompleteDataSource)
final paymentCompleteDataSourceProvider = PaymentCompleteDataSourceProvider._();

final class PaymentCompleteDataSourceProvider
    extends
        $FunctionalProvider<
          PaymentCompleteDataSource,
          PaymentCompleteDataSource,
          PaymentCompleteDataSource
        >
    with $Provider<PaymentCompleteDataSource> {
  PaymentCompleteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentCompleteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentCompleteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PaymentCompleteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentCompleteDataSource create(Ref ref) {
    return paymentCompleteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentCompleteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentCompleteDataSource>(value),
    );
  }
}

String _$paymentCompleteDataSourceHash() =>
    r'3df66607789bd14db32c931703ff3c3656729e8e';
