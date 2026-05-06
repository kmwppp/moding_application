// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoryViewModel)
final categoryViewModelProvider = CategoryViewModelProvider._();

final class CategoryViewModelProvider
    extends $NotifierProvider<CategoryViewModel, CategoryState> {
  CategoryViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryViewModelHash();

  @$internal
  @override
  CategoryViewModel create() => CategoryViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryState>(value),
    );
  }
}

String _$categoryViewModelHash() => r'165a2dc6f6005cb203b50430299a221afb87e33d';

abstract class _$CategoryViewModel extends $Notifier<CategoryState> {
  CategoryState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CategoryState, CategoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CategoryState, CategoryState>,
              CategoryState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
