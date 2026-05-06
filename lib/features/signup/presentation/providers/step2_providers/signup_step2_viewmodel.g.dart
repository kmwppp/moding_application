// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_step2_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignupStep2ViewModel)
final signupStep2ViewModelProvider = SignupStep2ViewModelProvider._();

final class SignupStep2ViewModelProvider
    extends $NotifierProvider<SignupStep2ViewModel, SignupStep2State> {
  SignupStep2ViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupStep2ViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupStep2ViewModelHash();

  @$internal
  @override
  SignupStep2ViewModel create() => SignupStep2ViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupStep2State value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupStep2State>(value),
    );
  }
}

String _$signupStep2ViewModelHash() =>
    r'8966717318a92914636620c7a97e7205cfa22262';

abstract class _$SignupStep2ViewModel extends $Notifier<SignupStep2State> {
  SignupStep2State build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SignupStep2State, SignupStep2State>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SignupStep2State, SignupStep2State>,
              SignupStep2State,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
