// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(signupDataSource)
final signupDataSourceProvider = SignupDataSourceProvider._();

final class SignupDataSourceProvider
    extends
        $FunctionalProvider<
          SignupDataSource,
          SignupDataSource,
          SignupDataSource
        >
    with $Provider<SignupDataSource> {
  SignupDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupDataSourceHash();

  @$internal
  @override
  $ProviderElement<SignupDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignupDataSource create(Ref ref) {
    return signupDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupDataSource>(value),
    );
  }
}

String _$signupDataSourceHash() => r'db76397322893e6fc73408491e51943403ddb951';
