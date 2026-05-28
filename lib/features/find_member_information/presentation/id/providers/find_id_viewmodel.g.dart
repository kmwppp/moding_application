// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_id_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FindIdViewModel)
final findIdViewModelProvider = FindIdViewModelProvider._();

final class FindIdViewModelProvider
    extends $NotifierProvider<FindIdViewModel, FindIdState> {
  FindIdViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'findIdViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$findIdViewModelHash();

  @$internal
  @override
  FindIdViewModel create() => FindIdViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FindIdState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FindIdState>(value),
    );
  }
}

String _$findIdViewModelHash() => r'3b0d765c1c415ca0aaa8843789e2763e3c71bdf0';

abstract class _$FindIdViewModel extends $Notifier<FindIdState> {
  FindIdState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FindIdState, FindIdState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FindIdState, FindIdState>,
              FindIdState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
