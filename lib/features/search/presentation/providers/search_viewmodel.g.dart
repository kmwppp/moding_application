// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchViewModel)
final searchViewModelProvider = SearchViewModelFamily._();

final class SearchViewModelProvider
    extends $NotifierProvider<SearchViewModel, SearchState> {
  SearchViewModelProvider._({
    required SearchViewModelFamily super.from,
    required ({ProductRecommendType type, int? productId}) super.argument,
  }) : super(
         retry: null,
         name: r'searchViewModelProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchViewModelHash();

  @override
  String toString() {
    return r'searchViewModelProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SearchViewModel create() => SearchViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SearchViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchViewModelHash() => r'942b2a5798a0e9d08446671f96a4f9d5dacc5683';

final class SearchViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchViewModel,
          SearchState,
          SearchState,
          SearchState,
          ({ProductRecommendType type, int? productId})
        > {
  SearchViewModelFamily._()
    : super(
        retry: null,
        name: r'searchViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  SearchViewModelProvider call({
    required ProductRecommendType type,
    int? productId,
  }) => SearchViewModelProvider._(
    argument: (type: type, productId: productId),
    from: this,
  );

  @override
  String toString() => r'searchViewModelProvider';
}

abstract class _$SearchViewModel extends $Notifier<SearchState> {
  late final _$args = ref.$arg as ({ProductRecommendType type, int? productId});
  ProductRecommendType get type => _$args.type;
  int? get productId => _$args.productId;

  SearchState build({required ProductRecommendType type, int? productId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SearchState, SearchState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SearchState, SearchState>,
              SearchState,
              Object?,
              Object?
            >;
    element.handleCreate(
      ref,
      () => build(type: _$args.type, productId: _$args.productId),
    );
  }
}
