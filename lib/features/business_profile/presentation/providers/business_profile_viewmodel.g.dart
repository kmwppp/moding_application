// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profile_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BusinessProfileViewModel)
final businessProfileViewModelProvider = BusinessProfileViewModelProvider._();

final class BusinessProfileViewModelProvider
    extends $NotifierProvider<BusinessProfileViewModel, BusinessProfileState> {
  BusinessProfileViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'businessProfileViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$businessProfileViewModelHash();

  @$internal
  @override
  BusinessProfileViewModel create() => BusinessProfileViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BusinessProfileState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BusinessProfileState>(value),
    );
  }
}

String _$businessProfileViewModelHash() =>
    r'c2442f2d0b30c07d8aac289a983fb8034d75bec8';

abstract class _$BusinessProfileViewModel
    extends $Notifier<BusinessProfileState> {
  BusinessProfileState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BusinessProfileState, BusinessProfileState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BusinessProfileState, BusinessProfileState>,
              BusinessProfileState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
