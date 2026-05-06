// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_management_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(accountManagementRepository)
final accountManagementRepositoryProvider =
    AccountManagementRepositoryProvider._();

final class AccountManagementRepositoryProvider
    extends
        $FunctionalProvider<
          AccountManagementRepository,
          AccountManagementRepository,
          AccountManagementRepository
        >
    with $Provider<AccountManagementRepository> {
  AccountManagementRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountManagementRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountManagementRepositoryHash();

  @$internal
  @override
  $ProviderElement<AccountManagementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AccountManagementRepository create(Ref ref) {
    return accountManagementRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountManagementRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountManagementRepository>(value),
    );
  }
}

String _$accountManagementRepositoryHash() =>
    r'3475f4f9a2b275ed927d0384cd227e85b88e3adf';
