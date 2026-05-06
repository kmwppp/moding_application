import 'package:flutter/foundation.dart';
import 'package:moding_application/features/search/data/repositories/search_repository_impl.dart';
import 'package:moding_application/features/search/presentation/providers/search_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/storage_service.dart';
import '../../../product/domain/enums/product_recommand_type.dart';

part 'search_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class SearchViewModel extends _$SearchViewModel {
  @override
  SearchState build({required ProductRecommendType type, int? productId}) {
    final initialHistory = StorageService.getSearchHistory();

    Future.microtask(() {
      _init(type: type, productId: productId);
    });

    return SearchState.initial().copyWith(recentWordList: initialHistory);
  }

  Future<void> _init({
    required ProductRecommendType type,
    int? productId,
  }) async {
    await _fetch(type: type, page: 0, productId: productId, isFirst: true);
  }

  Future<void> reset({
    required ProductRecommendType type,
    int? productId,
  }) async {
    state = SearchState.initial().copyWith(
      recentWordList: StorageService.getSearchHistory(),
    );
    await _fetch(type: type, page: 0, productId: productId, isFirst: true);
  }

  int _getSize(int page) => page == 0 ? 10 : 20;

  int _getSearchSize(int page) => page == 0 ? 10 : 20;

  void changeSearchWord(String value) {
    state = state.copyWith(searchWord: value);
  }

  Future<void> changeListView(bool isList) async {
    state = state.copyWith(
      isList: isList,
      searchIsLoading: isList,
      searchIsFetchingMore: false,
      searchPage: 0,
      searchHasNext: true,
      searchList: isList ? [] : [],
    );

    if (isList) {
      await _fetchSearch(keyword: state.searchWord, page: 0, isFirst: true);
    }
  }

  Future<void> submitSearchWord(String value) async {
    String term = value.trim();
    if (term.isNotEmpty) {
      List<String> history = StorageService.getSearchHistory();
      // 로직 처리: 기존에 같은 단어가 있다면 삭제 (중복 제거)
      history.remove(term);
      // 최신 검색어를 맨 앞에 추가
      history.insert(0, term);
      // [추가] 최대 10개만 유지
      if (history.length > 10) {
        history = history.sublist(0, 10);
      }
      // 저장
      await StorageService.saveSearchHistory(history);

      state = state.copyWith(recentWordList: history);
      state = state.copyWith(
        recentWordList: history,
        searchWord: term, // ✅ 이거 추가
      );
      await changeListView(true);
    }
  }

  Future<void> deleteSearchWord(String word) async {
    // 1. 현재 리스트 가져오기
    List<String> history = StorageService.getSearchHistory();

    // 2. 해당 단어 제거
    history.remove(word);

    // 3. 저장소 업데이트
    await StorageService.saveSearchHistory(history);

    // 4. 상태(State) 갱신하여 UI 즉시 반영
    state = state.copyWith(recentWordList: history);
  }

  Future<void> _fetch({
    required ProductRecommendType type,
    required int page,
    int? productId,
    bool isFirst = false,
  }) async {
    if (!isFirst) {
      if (state.isFetchingMore || !state.hasNext) return;
      state = state.copyWith(isFetchingMore: true);
    }

    try {
      final repository = ref.read(searchRepositoryProvider);

      final response = await repository.getProductList(
        type: type,
        page: page,
        size: _getSize(page),
        productId: productId,
      );

      final current = state.productList ?? [];

      final newList = isFirst
          ? response.content
          : [...current, ...response.content];

      final hasNext = page < response.totalPages - 1;

      state = state.copyWith(
        productList: newList,
        page: page,
        hasNext: hasNext,
        isLoading: false,
        isFetchingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isFetchingMore: false, isLoading: false);
      debugPrint('$e');
    }
  }

  void loadNext({required ProductRecommendType type, int? productId}) {
    _fetch(type: type, page: state.page + 1, productId: productId);
  }

  void searchLoadNext({required String keyword}) {
    _fetchSearch(keyword: keyword, page: state.searchPage + 1);
  }

  Future<void> _fetchSearch({
    required String keyword,
    required int page,
    bool isFirst = false,
  }) async {
    if (isFirst) {
      state = state.copyWith(
        searchIsLoading: true,
        searchIsFetchingMore: false,
        searchPage: 0,
        searchHasNext: true,
        searchList: [],
      );
    }

    if (!isFirst) {
      if (state.searchIsFetchingMore || !state.searchHasNext) return;
      state = state.copyWith(searchIsFetchingMore: true);
    }

    try {
      final repository = ref.read(searchRepositoryProvider);

      final response = await repository.getSearchProductList(
        keyword: keyword,
        page: page,
        size: _getSearchSize(page),
      );

      final current = state.searchList ?? [];

      final newList = isFirst
          ? response.content
          : [...current, ...response.content];

      final hasNext = page < response.totalPages - 1;

      state = state.copyWith(
        searchList: newList,
        searchPage: page,
        searchHasNext: hasNext,
        searchIsLoading: false,
        searchIsFetchingMore: false,
      );
    } catch (e) {
      state = state.copyWith(
        searchIsFetchingMore: false,
        searchIsLoading: false,
      );
      debugPrint('$e');
    }
  }
}
