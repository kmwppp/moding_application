// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_new_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(signupNewRepository)
final signupNewRepositoryProvider = SignupNewRepositoryProvider._();

final class SignupNewRepositoryProvider
    extends
        $FunctionalProvider<
          SignupNewRepository,
          SignupNewRepository,
          SignupNewRepository
        >
    with $Provider<SignupNewRepository> {
  SignupNewRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupNewRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupNewRepositoryHash();

  @$internal
  @override
  $ProviderElement<SignupNewRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SignupNewRepository create(Ref ref) {
    return signupNewRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupNewRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupNewRepository>(value),
    );
  }
}

String _$signupNewRepositoryHash() =>
    r'de64dc0923e20aa83c8c098293b658cf83fc56ad';
