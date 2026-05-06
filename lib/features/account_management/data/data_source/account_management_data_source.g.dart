// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_management_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(accountManagementDataSource)
final accountManagementDataSourceProvider =
    AccountManagementDataSourceProvider._();

final class AccountManagementDataSourceProvider
    extends
        $FunctionalProvider<
          AccountManagementDataSource,
          AccountManagementDataSource,
          AccountManagementDataSource
        >
    with $Provider<AccountManagementDataSource> {
  AccountManagementDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountManagementDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountManagementDataSourceHash();

  @$internal
  @override
  $ProviderElement<AccountManagementDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AccountManagementDataSource create(Ref ref) {
    return accountManagementDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountManagementDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountManagementDataSource>(value),
    );
  }
}

String _$accountManagementDataSourceHash() =>
    r'51edc7111392d48140406d429f70bf340ff79a96';
