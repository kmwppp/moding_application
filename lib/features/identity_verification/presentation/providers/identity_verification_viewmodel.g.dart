// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_verification_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IdentityVerificationViewModel)
final identityVerificationViewModelProvider =
    IdentityVerificationViewModelProvider._();

final class IdentityVerificationViewModelProvider
    extends
        $NotifierProvider<
          IdentityVerificationViewModel,
          IdentityVerificationState
        > {
  IdentityVerificationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'identityVerificationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$identityVerificationViewModelHash();

  @$internal
  @override
  IdentityVerificationViewModel create() => IdentityVerificationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IdentityVerificationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IdentityVerificationState>(value),
    );
  }
}

String _$identityVerificationViewModelHash() =>
    r'32cb3ee25d01f4c44fc8f81acce4559fddb87741';

abstract class _$IdentityVerificationViewModel
    extends $Notifier<IdentityVerificationState> {
  IdentityVerificationState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<IdentityVerificationState, IdentityVerificationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<IdentityVerificationState, IdentityVerificationState>,
              IdentityVerificationState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
