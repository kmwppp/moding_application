// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_pw_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(findPwRepository)
final findPwRepositoryProvider = FindPwRepositoryProvider._();

final class FindPwRepositoryProvider
    extends
        $FunctionalProvider<
          FindPwRepository,
          FindPwRepository,
          FindPwRepository
        >
    with $Provider<FindPwRepository> {
  FindPwRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'findPwRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$findPwRepositoryHash();

  @$internal
  @override
  $ProviderElement<FindPwRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FindPwRepository create(Ref ref) {
    return findPwRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FindPwRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FindPwRepository>(value),
    );
  }
}

String _$findPwRepositoryHash() => r'fb7d50def4b4f6006dd785ae489da97b22fc5ddd';
