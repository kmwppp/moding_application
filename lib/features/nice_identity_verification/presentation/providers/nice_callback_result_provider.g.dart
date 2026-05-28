// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nice_callback_result_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NiceCallbackResult)
final niceCallbackResultProvider = NiceCallbackResultProvider._();

final class NiceCallbackResultProvider
    extends
        $NotifierProvider<NiceCallbackResult, NiceIdentityVerificationResult?> {
  NiceCallbackResultProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'niceCallbackResultProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$niceCallbackResultHash();

  @$internal
  @override
  NiceCallbackResult create() => NiceCallbackResult();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NiceIdentityVerificationResult? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NiceIdentityVerificationResult?>(
        value,
      ),
    );
  }
}

String _$niceCallbackResultHash() =>
    r'6f47d33bdbfbca8e1dba4846142d32e48f04b76d';

abstract class _$NiceCallbackResult
    extends $Notifier<NiceIdentityVerificationResult?> {
  NiceIdentityVerificationResult? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              NiceIdentityVerificationResult?,
              NiceIdentityVerificationResult?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                NiceIdentityVerificationResult?,
                NiceIdentityVerificationResult?
              >,
              NiceIdentityVerificationResult?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
