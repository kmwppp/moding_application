// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_remote_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(termsRemoteDataSource)
final termsRemoteDataSourceProvider = TermsRemoteDataSourceProvider._();

final class TermsRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          TermsRemoteDataSource,
          TermsRemoteDataSource,
          TermsRemoteDataSource
        >
    with $Provider<TermsRemoteDataSource> {
  TermsRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'termsRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$termsRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<TermsRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TermsRemoteDataSource create(Ref ref) {
    return termsRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TermsRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TermsRemoteDataSource>(value),
    );
  }
}

String _$termsRemoteDataSourceHash() =>
    r'f37f7642051b439c02bbb6d6af05420f7da702e1';
