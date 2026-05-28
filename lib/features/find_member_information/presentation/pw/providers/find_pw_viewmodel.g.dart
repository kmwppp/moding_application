// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_pw_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FindPwViewModel)
final findPwViewModelProvider = FindPwViewModelProvider._();

final class FindPwViewModelProvider
    extends $NotifierProvider<FindPwViewModel, FindPwState> {
  FindPwViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'findPwViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$findPwViewModelHash();

  @$internal
  @override
  FindPwViewModel create() => FindPwViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FindPwState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FindPwState>(value),
    );
  }
}

String _$findPwViewModelHash() => r'a54b3475bd1483f3bcd6ed7f5ef9e70736929384';

abstract class _$FindPwViewModel extends $Notifier<FindPwState> {
  FindPwState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FindPwState, FindPwState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FindPwState, FindPwState>,
              FindPwState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
