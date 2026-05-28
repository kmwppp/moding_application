// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nice_identity_verification_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(niceIdentityVerificationDataSource)
final niceIdentityVerificationDataSourceProvider =
    NiceIdentityVerificationDataSourceProvider._();

final class NiceIdentityVerificationDataSourceProvider
    extends
        $FunctionalProvider<
          NiceIdentityVerificationDataSource,
          NiceIdentityVerificationDataSource,
          NiceIdentityVerificationDataSource
        >
    with $Provider<NiceIdentityVerificationDataSource> {
  NiceIdentityVerificationDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'niceIdentityVerificationDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$niceIdentityVerificationDataSourceHash();

  @$internal
  @override
  $ProviderElement<NiceIdentityVerificationDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NiceIdentityVerificationDataSource create(Ref ref) {
    return niceIdentityVerificationDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NiceIdentityVerificationDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NiceIdentityVerificationDataSource>(
        value,
      ),
    );
  }
}

String _$niceIdentityVerificationDataSourceHash() =>
    r'547bccf85703e1f553475fe2ae93329f2325158d';
