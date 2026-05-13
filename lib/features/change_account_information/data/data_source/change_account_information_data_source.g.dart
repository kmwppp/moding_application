// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_account_information_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(changeAccountInformationDataSource)
final changeAccountInformationDataSourceProvider =
    ChangeAccountInformationDataSourceProvider._();

final class ChangeAccountInformationDataSourceProvider
    extends
        $FunctionalProvider<
          ChangeAccountInformationDataSource,
          ChangeAccountInformationDataSource,
          ChangeAccountInformationDataSource
        >
    with $Provider<ChangeAccountInformationDataSource> {
  ChangeAccountInformationDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changeAccountInformationDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$changeAccountInformationDataSourceHash();

  @$internal
  @override
  $ProviderElement<ChangeAccountInformationDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ChangeAccountInformationDataSource create(Ref ref) {
    return changeAccountInformationDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChangeAccountInformationDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChangeAccountInformationDataSource>(
        value,
      ),
    );
  }
}

String _$changeAccountInformationDataSourceHash() =>
    r'c0eb75b517f0d3b21378adf844723bbc87b7a93b';
