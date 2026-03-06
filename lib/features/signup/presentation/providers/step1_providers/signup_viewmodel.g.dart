// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignupViewModel)
final signupViewModelProvider = SignupViewModelProvider._();

final class SignupViewModelProvider
    extends $NotifierProvider<SignupViewModel, SignupState> {
  SignupViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupViewModelHash();

  @$internal
  @override
  SignupViewModel create() => SignupViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupState>(value),
    );
  }
}

String _$signupViewModelHash() => r'1c3747b6e55437c4714517817150f6747489252e';

abstract class _$SignupViewModel extends $Notifier<SignupState> {
  SignupState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SignupState, SignupState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SignupState, SignupState>,
              SignupState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
