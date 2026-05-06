// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TermsNotifier)
final termsProvider = TermsNotifierProvider._();

final class TermsNotifierProvider
    extends $AsyncNotifierProvider<TermsNotifier, TermsDto> {
  TermsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'termsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$termsNotifierHash();

  @$internal
  @override
  TermsNotifier create() => TermsNotifier();
}

String _$termsNotifierHash() => r'ea18fdc0defc24ee1c40808f9a94f250c855813d';

abstract class _$TermsNotifier extends $AsyncNotifier<TermsDto> {
  FutureOr<TermsDto> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<TermsDto>, TermsDto>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TermsDto>, TermsDto>,
              AsyncValue<TermsDto>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
