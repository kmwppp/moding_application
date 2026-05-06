// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(signupRepository)
final signupRepositoryProvider = SignupRepositoryProvider._();

final class SignupRepositoryProvider
    extends
        $FunctionalProvider<
          SignupRepository,
          SignupRepository,
          SignupRepository
        >
    with $Provider<SignupRepository> {
  SignupRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupRepositoryHash();

  @$internal
  @override
  $ProviderElement<SignupRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignupRepository create(Ref ref) {
    return signupRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupRepository>(value),
    );
  }
}

String _$signupRepositoryHash() => r'712ccefaaff606a6976de1f5ed469f91edb91dfe';
