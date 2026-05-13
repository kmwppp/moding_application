// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(changePasswordRepository)
final changePasswordRepositoryProvider = ChangePasswordRepositoryProvider._();

final class ChangePasswordRepositoryProvider
    extends
        $FunctionalProvider<
          ChangePasswordRepository,
          ChangePasswordRepository,
          ChangePasswordRepository
        >
    with $Provider<ChangePasswordRepository> {
  ChangePasswordRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changePasswordRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$changePasswordRepositoryHash();

  @$internal
  @override
  $ProviderElement<ChangePasswordRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ChangePasswordRepository create(Ref ref) {
    return changePasswordRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChangePasswordRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChangePasswordRepository>(value),
    );
  }
}

String _$changePasswordRepositoryHash() =>
    r'95cc7b08ca77e35c5302e9a8587545a8d365afac';
