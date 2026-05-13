// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appVersionDataSource)
final appVersionDataSourceProvider = AppVersionDataSourceProvider._();

final class AppVersionDataSourceProvider
    extends
        $FunctionalProvider<
          AppVersionDataSource,
          AppVersionDataSource,
          AppVersionDataSource
        >
    with $Provider<AppVersionDataSource> {
  AppVersionDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appVersionDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appVersionDataSourceHash();

  @$internal
  @override
  $ProviderElement<AppVersionDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppVersionDataSource create(Ref ref) {
    return appVersionDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppVersionDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppVersionDataSource>(value),
    );
  }
}

String _$appVersionDataSourceHash() =>
    r'160287ba64f80124f2611c80c7f44990f0e1caf6';
