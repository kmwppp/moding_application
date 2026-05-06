// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(reviewListRepository)
final reviewListRepositoryProvider = ReviewListRepositoryProvider._();

final class ReviewListRepositoryProvider
    extends
        $FunctionalProvider<
          ReviewListRepository,
          ReviewListRepository,
          ReviewListRepository
        >
    with $Provider<ReviewListRepository> {
  ReviewListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewListRepositoryHash();

  @$internal
  @override
  $ProviderElement<ReviewListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ReviewListRepository create(Ref ref) {
    return reviewListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewListRepository>(value),
    );
  }
}

String _$reviewListRepositoryHash() =>
    r'4f16c49fe5d68306cccf82e358e8d58199611962';
