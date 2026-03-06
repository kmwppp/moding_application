// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_remote_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loginRemoteDataSource)
final loginRemoteDataSourceProvider = LoginRemoteDataSourceProvider._();

final class LoginRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          LoginRemoteDataSource,
          LoginRemoteDataSource,
          LoginRemoteDataSource
        >
    with $Provider<LoginRemoteDataSource> {
  LoginRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<LoginRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LoginRemoteDataSource create(Ref ref) {
    return loginRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginRemoteDataSource>(value),
    );
  }
}

String _$loginRemoteDataSourceHash() =>
    r'015d5d75d29cb9f3ba887ff237789f9ae01f0ae5';
