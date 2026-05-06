// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(reviewListDataSource)
final reviewListDataSourceProvider = ReviewListDataSourceProvider._();

final class ReviewListDataSourceProvider
    extends
        $FunctionalProvider<
          ReviewListDataSource,
          ReviewListDataSource,
          ReviewListDataSource
        >
    with $Provider<ReviewListDataSource> {
  ReviewListDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewListDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewListDataSourceHash();

  @$internal
  @override
  $ProviderElement<ReviewListDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ReviewListDataSource create(Ref ref) {
    return reviewListDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewListDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewListDataSource>(value),
    );
  }
}

String _$reviewListDataSourceHash() =>
    r'315eb30fc44e2fffac49aa2dd1fa73d782fefdbe';
