// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 bool get isLoading; bool get searchIsLoading; String get searchWord; List<String> get recentWordList; List<RecommandDto>? get productList; int get page; bool get hasNext; bool get isFetchingMore; bool get isList; List<RecommandDto>? get searchList; SearchSort get searchSort; int get searchPage; bool get searchHasNext; bool get searchIsFetchingMore;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchIsLoading, searchIsLoading) || other.searchIsLoading == searchIsLoading)&&(identical(other.searchWord, searchWord) || other.searchWord == searchWord)&&const DeepCollectionEquality().equals(other.recentWordList, recentWordList)&&const DeepCollectionEquality().equals(other.productList, productList)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.isList, isList) || other.isList == isList)&&const DeepCollectionEquality().equals(other.searchList, searchList)&&(identical(other.searchSort, searchSort) || other.searchSort == searchSort)&&(identical(other.searchPage, searchPage) || other.searchPage == searchPage)&&(identical(other.searchHasNext, searchHasNext) || other.searchHasNext == searchHasNext)&&(identical(other.searchIsFetchingMore, searchIsFetchingMore) || other.searchIsFetchingMore == searchIsFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,searchIsLoading,searchWord,const DeepCollectionEquality().hash(recentWordList),const DeepCollectionEquality().hash(productList),page,hasNext,isFetchingMore,isList,const DeepCollectionEquality().hash(searchList),searchSort,searchPage,searchHasNext,searchIsFetchingMore);

@override
String toString() {
  return 'SearchState(isLoading: $isLoading, searchIsLoading: $searchIsLoading, searchWord: $searchWord, recentWordList: $recentWordList, productList: $productList, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore, isList: $isList, searchList: $searchList, searchSort: $searchSort, searchPage: $searchPage, searchHasNext: $searchHasNext, searchIsFetchingMore: $searchIsFetchingMore)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool searchIsLoading, String searchWord, List<String> recentWordList, List<RecommandDto>? productList, int page, bool hasNext, bool isFetchingMore, bool isList, List<RecommandDto>? searchList, SearchSort searchSort, int searchPage, bool searchHasNext, bool searchIsFetchingMore
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? searchIsLoading = null,Object? searchWord = null,Object? recentWordList = null,Object? productList = freezed,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,Object? isList = null,Object? searchList = freezed,Object? searchSort = null,Object? searchPage = null,Object? searchHasNext = null,Object? searchIsFetchingMore = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchIsLoading: null == searchIsLoading ? _self.searchIsLoading : searchIsLoading // ignore: cast_nullable_to_non_nullable
as bool,searchWord: null == searchWord ? _self.searchWord : searchWord // ignore: cast_nullable_to_non_nullable
as String,recentWordList: null == recentWordList ? _self.recentWordList : recentWordList // ignore: cast_nullable_to_non_nullable
as List<String>,productList: freezed == productList ? _self.productList : productList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,isList: null == isList ? _self.isList : isList // ignore: cast_nullable_to_non_nullable
as bool,searchList: freezed == searchList ? _self.searchList : searchList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,searchSort: null == searchSort ? _self.searchSort : searchSort // ignore: cast_nullable_to_non_nullable
as SearchSort,searchPage: null == searchPage ? _self.searchPage : searchPage // ignore: cast_nullable_to_non_nullable
as int,searchHasNext: null == searchHasNext ? _self.searchHasNext : searchHasNext // ignore: cast_nullable_to_non_nullable
as bool,searchIsFetchingMore: null == searchIsFetchingMore ? _self.searchIsFetchingMore : searchIsFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool searchIsLoading,  String searchWord,  List<String> recentWordList,  List<RecommandDto>? productList,  int page,  bool hasNext,  bool isFetchingMore,  bool isList,  List<RecommandDto>? searchList,  SearchSort searchSort,  int searchPage,  bool searchHasNext,  bool searchIsFetchingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.isLoading,_that.searchIsLoading,_that.searchWord,_that.recentWordList,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore,_that.isList,_that.searchList,_that.searchSort,_that.searchPage,_that.searchHasNext,_that.searchIsFetchingMore);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool searchIsLoading,  String searchWord,  List<String> recentWordList,  List<RecommandDto>? productList,  int page,  bool hasNext,  bool isFetchingMore,  bool isList,  List<RecommandDto>? searchList,  SearchSort searchSort,  int searchPage,  bool searchHasNext,  bool searchIsFetchingMore)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.isLoading,_that.searchIsLoading,_that.searchWord,_that.recentWordList,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore,_that.isList,_that.searchList,_that.searchSort,_that.searchPage,_that.searchHasNext,_that.searchIsFetchingMore);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool searchIsLoading,  String searchWord,  List<String> recentWordList,  List<RecommandDto>? productList,  int page,  bool hasNext,  bool isFetchingMore,  bool isList,  List<RecommandDto>? searchList,  SearchSort searchSort,  int searchPage,  bool searchHasNext,  bool searchIsFetchingMore)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.isLoading,_that.searchIsLoading,_that.searchWord,_that.recentWordList,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore,_that.isList,_that.searchList,_that.searchSort,_that.searchPage,_that.searchHasNext,_that.searchIsFetchingMore);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState extends SearchState {
  const _SearchState({required this.isLoading, required this.searchIsLoading, required this.searchWord, required final  List<String> recentWordList, required final  List<RecommandDto>? productList, this.page = 0, this.hasNext = true, this.isFetchingMore = false, required this.isList, required final  List<RecommandDto>? searchList, this.searchSort = SearchSort.relevance, this.searchPage = 0, this.searchHasNext = true, this.searchIsFetchingMore = false}): _recentWordList = recentWordList,_productList = productList,_searchList = searchList,super._();
  

@override final  bool isLoading;
@override final  bool searchIsLoading;
@override final  String searchWord;
 final  List<String> _recentWordList;
@override List<String> get recentWordList {
  if (_recentWordList is EqualUnmodifiableListView) return _recentWordList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentWordList);
}

 final  List<RecommandDto>? _productList;
@override List<RecommandDto>? get productList {
  final value = _productList;
  if (value == null) return null;
  if (_productList is EqualUnmodifiableListView) return _productList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  int page;
@override@JsonKey() final  bool hasNext;
@override@JsonKey() final  bool isFetchingMore;
@override final  bool isList;
 final  List<RecommandDto>? _searchList;
@override List<RecommandDto>? get searchList {
  final value = _searchList;
  if (value == null) return null;
  if (_searchList is EqualUnmodifiableListView) return _searchList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  SearchSort searchSort;
@override@JsonKey() final  int searchPage;
@override@JsonKey() final  bool searchHasNext;
@override@JsonKey() final  bool searchIsFetchingMore;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchIsLoading, searchIsLoading) || other.searchIsLoading == searchIsLoading)&&(identical(other.searchWord, searchWord) || other.searchWord == searchWord)&&const DeepCollectionEquality().equals(other._recentWordList, _recentWordList)&&const DeepCollectionEquality().equals(other._productList, _productList)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.isList, isList) || other.isList == isList)&&const DeepCollectionEquality().equals(other._searchList, _searchList)&&(identical(other.searchSort, searchSort) || other.searchSort == searchSort)&&(identical(other.searchPage, searchPage) || other.searchPage == searchPage)&&(identical(other.searchHasNext, searchHasNext) || other.searchHasNext == searchHasNext)&&(identical(other.searchIsFetchingMore, searchIsFetchingMore) || other.searchIsFetchingMore == searchIsFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,searchIsLoading,searchWord,const DeepCollectionEquality().hash(_recentWordList),const DeepCollectionEquality().hash(_productList),page,hasNext,isFetchingMore,isList,const DeepCollectionEquality().hash(_searchList),searchSort,searchPage,searchHasNext,searchIsFetchingMore);

@override
String toString() {
  return 'SearchState(isLoading: $isLoading, searchIsLoading: $searchIsLoading, searchWord: $searchWord, recentWordList: $recentWordList, productList: $productList, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore, isList: $isList, searchList: $searchList, searchSort: $searchSort, searchPage: $searchPage, searchHasNext: $searchHasNext, searchIsFetchingMore: $searchIsFetchingMore)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool searchIsLoading, String searchWord, List<String> recentWordList, List<RecommandDto>? productList, int page, bool hasNext, bool isFetchingMore, bool isList, List<RecommandDto>? searchList, SearchSort searchSort, int searchPage, bool searchHasNext, bool searchIsFetchingMore
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? searchIsLoading = null,Object? searchWord = null,Object? recentWordList = null,Object? productList = freezed,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,Object? isList = null,Object? searchList = freezed,Object? searchSort = null,Object? searchPage = null,Object? searchHasNext = null,Object? searchIsFetchingMore = null,}) {
  return _then(_SearchState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchIsLoading: null == searchIsLoading ? _self.searchIsLoading : searchIsLoading // ignore: cast_nullable_to_non_nullable
as bool,searchWord: null == searchWord ? _self.searchWord : searchWord // ignore: cast_nullable_to_non_nullable
as String,recentWordList: null == recentWordList ? _self._recentWordList : recentWordList // ignore: cast_nullable_to_non_nullable
as List<String>,productList: freezed == productList ? _self._productList : productList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,isList: null == isList ? _self.isList : isList // ignore: cast_nullable_to_non_nullable
as bool,searchList: freezed == searchList ? _self._searchList : searchList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,searchSort: null == searchSort ? _self.searchSort : searchSort // ignore: cast_nullable_to_non_nullable
as SearchSort,searchPage: null == searchPage ? _self.searchPage : searchPage // ignore: cast_nullable_to_non_nullable
as int,searchHasNext: null == searchHasNext ? _self.searchHasNext : searchHasNext // ignore: cast_nullable_to_non_nullable
as bool,searchIsFetchingMore: null == searchIsFetchingMore ? _self.searchIsFetchingMore : searchIsFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
