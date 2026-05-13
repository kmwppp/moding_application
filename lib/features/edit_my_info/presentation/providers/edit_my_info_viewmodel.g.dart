// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_my_info_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditMyInfoViewModel)
final editMyInfoViewModelProvider = EditMyInfoViewModelProvider._();

final class EditMyInfoViewModelProvider
    extends $NotifierProvider<EditMyInfoViewModel, EditMyInfoState> {
  EditMyInfoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editMyInfoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editMyInfoViewModelHash();

  @$internal
  @override
  EditMyInfoViewModel create() => EditMyInfoViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditMyInfoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditMyInfoState>(value),
    );
  }
}

String _$editMyInfoViewModelHash() =>
    r'3ecdbce86d791235312ba99551309ad0b7008292';

abstract class _$EditMyInfoViewModel extends $Notifier<EditMyInfoState> {
  EditMyInfoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditMyInfoState, EditMyInfoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditMyInfoState, EditMyInfoState>,
              EditMyInfoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
