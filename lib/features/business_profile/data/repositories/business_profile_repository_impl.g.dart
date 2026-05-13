// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profile_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(businessProfileRepository)
final businessProfileRepositoryProvider = BusinessProfileRepositoryProvider._();

final class BusinessProfileRepositoryProvider
    extends
        $FunctionalProvider<
          BusinessProfileRepository,
          BusinessProfileRepository,
          BusinessProfileRepository
        >
    with $Provider<BusinessProfileRepository> {
  BusinessProfileRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'businessProfileRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$businessProfileRepositoryHash();

  @$internal
  @override
  $ProviderElement<BusinessProfileRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BusinessProfileRepository create(Ref ref) {
    return businessProfileRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BusinessProfileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BusinessProfileRepository>(value),
    );
  }
}

String _$businessProfileRepositoryHash() =>
    r'17aae198d69334781d679e382204eacb1d30af79';
