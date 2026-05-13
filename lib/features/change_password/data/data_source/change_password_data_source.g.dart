// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(changePasswordDataSource)
final changePasswordDataSourceProvider = ChangePasswordDataSourceProvider._();

final class ChangePasswordDataSourceProvider
    extends
        $FunctionalProvider<
          ChangePasswordDataSource,
          ChangePasswordDataSource,
          ChangePasswordDataSource
        >
    with $Provider<ChangePasswordDataSource> {
  ChangePasswordDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changePasswordDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$changePasswordDataSourceHash();

  @$internal
  @override
  $ProviderElement<ChangePasswordDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ChangePasswordDataSource create(Ref ref) {
    return changePasswordDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChangePasswordDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChangePasswordDataSource>(value),
    );
  }
}

String _$changePasswordDataSourceHash() =>
    r'9ea10ed8724ef06b2b7a060f80a5f7e842cc9605';
