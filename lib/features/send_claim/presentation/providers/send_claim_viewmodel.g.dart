// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_claim_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SendClaimViewModel)
final sendClaimViewModelProvider = SendClaimViewModelProvider._();

final class SendClaimViewModelProvider
    extends $NotifierProvider<SendClaimViewModel, SendClaimState> {
  SendClaimViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sendClaimViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sendClaimViewModelHash();

  @$internal
  @override
  SendClaimViewModel create() => SendClaimViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SendClaimState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SendClaimState>(value),
    );
  }
}

String _$sendClaimViewModelHash() =>
    r'a26a43e49cfea2767f858eff5720d125d8194ad0';

abstract class _$SendClaimViewModel extends $Notifier<SendClaimState> {
  SendClaimState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SendClaimState, SendClaimState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SendClaimState, SendClaimState>,
              SendClaimState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
