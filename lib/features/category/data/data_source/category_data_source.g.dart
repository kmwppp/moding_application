// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categoryDataSource)
final categoryDataSourceProvider = CategoryDataSourceProvider._();

final class CategoryDataSourceProvider
    extends
        $FunctionalProvider<
          CategoryDataSource,
          CategoryDataSource,
          CategoryDataSource
        >
    with $Provider<CategoryDataSource> {
  CategoryDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryDataSourceHash();

  @$internal
  @override
  $ProviderElement<CategoryDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CategoryDataSource create(Ref ref) {
    return categoryDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryDataSource>(value),
    );
  }
}

String _$categoryDataSourceHash() =>
    r'7d1bc4d3fdece79ab34c9218dee94d7f8904ed15';
