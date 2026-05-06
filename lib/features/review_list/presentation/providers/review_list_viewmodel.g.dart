// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReviewListViewModel)
final reviewListViewModelProvider = ReviewListViewModelProvider._();

final class ReviewListViewModelProvider
    extends $NotifierProvider<ReviewListViewModel, ReviewListState> {
  ReviewListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewListViewModelHash();

  @$internal
  @override
  ReviewListViewModel create() => ReviewListViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewListState>(value),
    );
  }
}

String _$reviewListViewModelHash() =>
    r'b422bab63dcec82aea27927b54bfced2053fc8f7';

abstract class _$ReviewListViewModel extends $Notifier<ReviewListState> {
  ReviewListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ReviewListState, ReviewListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ReviewListState, ReviewListState>,
              ReviewListState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
