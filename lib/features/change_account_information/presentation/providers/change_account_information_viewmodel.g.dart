// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_account_information_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChangeAccountInformationViewModel)
final changeAccountInformationViewModelProvider =
    ChangeAccountInformationViewModelProvider._();

final class ChangeAccountInformationViewModelProvider
    extends
        $NotifierProvider<
          ChangeAccountInformationViewModel,
          ChangeAccountInformationState
        > {
  ChangeAccountInformationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changeAccountInformationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$changeAccountInformationViewModelHash();

  @$internal
  @override
  ChangeAccountInformationViewModel create() =>
      ChangeAccountInformationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChangeAccountInformationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChangeAccountInformationState>(
        value,
      ),
    );
  }
}

String _$changeAccountInformationViewModelHash() =>
    r'ab4a4e9be31a98f0950eeb34cf222e54a6703bac';

abstract class _$ChangeAccountInformationViewModel
    extends $Notifier<ChangeAccountInformationState> {
  ChangeAccountInformationState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ChangeAccountInformationState,
              ChangeAccountInformationState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ChangeAccountInformationState,
                ChangeAccountInformationState
              >,
              ChangeAccountInformationState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
