// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_my_info_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(editMyInfoRepository)
final editMyInfoRepositoryProvider = EditMyInfoRepositoryProvider._();

final class EditMyInfoRepositoryProvider
    extends
        $FunctionalProvider<
          EditMyInfoRepository,
          EditMyInfoRepository,
          EditMyInfoRepository
        >
    with $Provider<EditMyInfoRepository> {
  EditMyInfoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editMyInfoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editMyInfoRepositoryHash();

  @$internal
  @override
  $ProviderElement<EditMyInfoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EditMyInfoRepository create(Ref ref) {
    return editMyInfoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditMyInfoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditMyInfoRepository>(value),
    );
  }
}

String _$editMyInfoRepositoryHash() =>
    r'2af7fb84d12ad6147920c7992692767b7c97d7b7';
