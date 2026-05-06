// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_check_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClaimCheckViewModel)
final claimCheckViewModelProvider = ClaimCheckViewModelProvider._();

final class ClaimCheckViewModelProvider
    extends $NotifierProvider<ClaimCheckViewModel, ClaimCheckState> {
  ClaimCheckViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claimCheckViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claimCheckViewModelHash();

  @$internal
  @override
  ClaimCheckViewModel create() => ClaimCheckViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClaimCheckState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClaimCheckState>(value),
    );
  }
}

String _$claimCheckViewModelHash() =>
    r'954f404215c79f6b3ff4ab461c5c807cca5e9a92';

abstract class _$ClaimCheckViewModel extends $Notifier<ClaimCheckState> {
  ClaimCheckState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ClaimCheckState, ClaimCheckState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ClaimCheckState, ClaimCheckState>,
              ClaimCheckState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
