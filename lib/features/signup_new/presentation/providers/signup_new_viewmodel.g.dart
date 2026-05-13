// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_new_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignupNewViewModel)
final signupNewViewModelProvider = SignupNewViewModelProvider._();

final class SignupNewViewModelProvider
    extends $NotifierProvider<SignupNewViewModel, SignupNewState> {
  SignupNewViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupNewViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupNewViewModelHash();

  @$internal
  @override
  SignupNewViewModel create() => SignupNewViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupNewState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupNewState>(value),
    );
  }
}

String _$signupNewViewModelHash() =>
    r'66dda4ef6fce09638faddb781a08ba41cbbc4493';

abstract class _$SignupNewViewModel extends $Notifier<SignupNewState> {
  SignupNewState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SignupNewState, SignupNewState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SignupNewState, SignupNewState>,
              SignupNewState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
