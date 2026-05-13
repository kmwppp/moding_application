// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_account_information_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(changeAccountInformationRepository)
final changeAccountInformationRepositoryProvider =
    ChangeAccountInformationRepositoryProvider._();

final class ChangeAccountInformationRepositoryProvider
    extends
        $FunctionalProvider<
          ChangeAccountInformationRepository,
          ChangeAccountInformationRepository,
          ChangeAccountInformationRepository
        >
    with $Provider<ChangeAccountInformationRepository> {
  ChangeAccountInformationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changeAccountInformationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$changeAccountInformationRepositoryHash();

  @$internal
  @override
  $ProviderElement<ChangeAccountInformationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ChangeAccountInformationRepository create(Ref ref) {
    return changeAccountInformationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChangeAccountInformationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChangeAccountInformationRepository>(
        value,
      ),
    );
  }
}

String _$changeAccountInformationRepositoryHash() =>
    r'1f17c7a385a226e3a6ba42c4fdf51e72eca98ad5';
