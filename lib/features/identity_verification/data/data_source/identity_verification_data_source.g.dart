// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_verification_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(identityVerificationDataSource)
final identityVerificationDataSourceProvider =
    IdentityVerificationDataSourceProvider._();

final class IdentityVerificationDataSourceProvider
    extends
        $FunctionalProvider<
          IdentityVerificationDataSource,
          IdentityVerificationDataSource,
          IdentityVerificationDataSource
        >
    with $Provider<IdentityVerificationDataSource> {
  IdentityVerificationDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'identityVerificationDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$identityVerificationDataSourceHash();

  @$internal
  @override
  $ProviderElement<IdentityVerificationDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IdentityVerificationDataSource create(Ref ref) {
    return identityVerificationDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IdentityVerificationDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IdentityVerificationDataSource>(
        value,
      ),
    );
  }
}

String _$identityVerificationDataSourceHash() =>
    r'8c42b27c9ea9529c861797b68ff7af18f34a3862';
