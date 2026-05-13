// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_new_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(signupNewDataSource)
final signupNewDataSourceProvider = SignupNewDataSourceProvider._();

final class SignupNewDataSourceProvider
    extends
        $FunctionalProvider<
          SignupNewDataSource,
          SignupNewDataSource,
          SignupNewDataSource
        >
    with $Provider<SignupNewDataSource> {
  SignupNewDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupNewDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupNewDataSourceHash();

  @$internal
  @override
  $ProviderElement<SignupNewDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SignupNewDataSource create(Ref ref) {
    return signupNewDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupNewDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupNewDataSource>(value),
    );
  }
}

String _$signupNewDataSourceHash() =>
    r'7c6106797f6feb45ce7bd5183881921eb62cddd4';
