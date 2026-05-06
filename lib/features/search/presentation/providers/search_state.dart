import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../product/domain/entities/product_recommand_dto.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState({
    required bool isLoading,
    required bool searchIsLoading,
    required String searchWord,
    required List<String> recentWordList,

    required List<RecommandDto>? productList,

    @Default(0) int page,
    @Default(true) bool hasNext,
    @Default(false) bool isFetchingMore,

    required bool isList,
    required List<RecommandDto>? searchList,

    @Default(0) int searchPage,
    @Default(true) bool searchHasNext,
    @Default(false) bool searchIsFetchingMore,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
    isLoading: true,
    searchIsLoading: true,
    searchWord: '',
    recentWordList: [],
    productList: [],
    isList: false,
    searchList: [],
  );
}
