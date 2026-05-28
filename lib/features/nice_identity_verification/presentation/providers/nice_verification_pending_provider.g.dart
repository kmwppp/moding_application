// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nice_verification_pending_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NiceVerificationPending)
final niceVerificationPendingProvider = NiceVerificationPendingProvider._();

final class NiceVerificationPendingProvider
    extends
        $NotifierProvider<NiceVerificationPending, NiceVerificationSource?> {
  NiceVerificationPendingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'niceVerificationPendingProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$niceVerificationPendingHash();

  @$internal
  @override
  NiceVerificationPending create() => NiceVerificationPending();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NiceVerificationSource? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NiceVerificationSource?>(value),
    );
  }
}

String _$niceVerificationPendingHash() =>
    r'2aad091cfa38666448800267339c1b2ca19a3276';

abstract class _$NiceVerificationPending
    extends $Notifier<NiceVerificationSource?> {
  NiceVerificationSource? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<NiceVerificationSource?, NiceVerificationSource?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NiceVerificationSource?, NiceVerificationSource?>,
              NiceVerificationSource?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
