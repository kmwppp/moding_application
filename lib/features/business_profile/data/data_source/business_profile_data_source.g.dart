// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profile_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(businessProfileDataSource)
final businessProfileDataSourceProvider = BusinessProfileDataSourceProvider._();

final class BusinessProfileDataSourceProvider
    extends
        $FunctionalProvider<
          BusinessProfileDataSource,
          BusinessProfileDataSource,
          BusinessProfileDataSource
        >
    with $Provider<BusinessProfileDataSource> {
  BusinessProfileDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'businessProfileDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$businessProfileDataSourceHash();

  @$internal
  @override
  $ProviderElement<BusinessProfileDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BusinessProfileDataSource create(Ref ref) {
    return businessProfileDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BusinessProfileDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BusinessProfileDataSource>(value),
    );
  }
}

String _$businessProfileDataSourceHash() =>
    r'45b3442b476512d7de4531bfe9d18515415cdcc3';
