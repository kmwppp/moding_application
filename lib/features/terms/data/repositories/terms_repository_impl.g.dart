// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(termsRepository)
final termsRepositoryProvider = TermsRepositoryProvider._();

final class TermsRepositoryProvider
    extends
        $FunctionalProvider<TermsRepository, TermsRepository, TermsRepository>
    with $Provider<TermsRepository> {
  TermsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'termsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$termsRepositoryHash();

  @$internal
  @override
  $ProviderElement<TermsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TermsRepository create(Ref ref) {
    return termsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TermsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TermsRepository>(value),
    );
  }
}

String _$termsRepositoryHash() => r'9bbe9065967d355901c3da844bc548ba45e421cd';
