// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nice_identity_verification_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NiceIdentityVerificationViewModel)
final niceIdentityVerificationViewModelProvider =
    NiceIdentityVerificationViewModelProvider._();

final class NiceIdentityVerificationViewModelProvider
    extends
        $NotifierProvider<
          NiceIdentityVerificationViewModel,
          NiceIdentityVerificationState
        > {
  NiceIdentityVerificationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'niceIdentityVerificationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$niceIdentityVerificationViewModelHash();

  @$internal
  @override
  NiceIdentityVerificationViewModel create() =>
      NiceIdentityVerificationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NiceIdentityVerificationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NiceIdentityVerificationState>(
        value,
      ),
    );
  }
}

String _$niceIdentityVerificationViewModelHash() =>
    r'ffc37c058b872d453f31417313318317acc5da89';

abstract class _$NiceIdentityVerificationViewModel
    extends $Notifier<NiceIdentityVerificationState> {
  NiceIdentityVerificationState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              NiceIdentityVerificationState,
              NiceIdentityVerificationState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                NiceIdentityVerificationState,
                NiceIdentityVerificationState
              >,
              NiceIdentityVerificationState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
