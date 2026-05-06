// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_my_info_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(editMyInfoDataSource)
final editMyInfoDataSourceProvider = EditMyInfoDataSourceProvider._();

final class EditMyInfoDataSourceProvider
    extends
        $FunctionalProvider<
          EditMyInfoDataSource,
          EditMyInfoDataSource,
          EditMyInfoDataSource
        >
    with $Provider<EditMyInfoDataSource> {
  EditMyInfoDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editMyInfoDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editMyInfoDataSourceHash();

  @$internal
  @override
  $ProviderElement<EditMyInfoDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EditMyInfoDataSource create(Ref ref) {
    return editMyInfoDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditMyInfoDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditMyInfoDataSource>(value),
    );
  }
}

String _$editMyInfoDataSourceHash() =>
    r'a51dbcdbeb27456914888b2e5574449cf4f48ea5';
