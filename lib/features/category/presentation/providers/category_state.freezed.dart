// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryState {

 bool get isLoading; MainCategoryResponseDto? get mainCategory; int get isMainCategorySelectedIndex; bool get isOpenSubCategoryView; MainCategoryResponseDto? get subCategory; MainCategoryDto? get selectedCategory; ProductRecommandDto? get productList; int get page; bool get hasNext; bool get isFetchingMore;
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateCopyWith<CategoryState> get copyWith => _$CategoryStateCopyWithImpl<CategoryState>(this as CategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.mainCategory, mainCategory) || other.mainCategory == mainCategory)&&(identical(other.isMainCategorySelectedIndex, isMainCategorySelectedIndex) || other.isMainCategorySelectedIndex == isMainCategorySelectedIndex)&&(identical(other.isOpenSubCategoryView, isOpenSubCategoryView) || other.isOpenSubCategoryView == isOpenSubCategoryView)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.productList, productList) || other.productList == productList)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,mainCategory,isMainCategorySelectedIndex,isOpenSubCategoryView,subCategory,selectedCategory,productList,page,hasNext,isFetchingMore);

@override
String toString() {
  return 'CategoryState(isLoading: $isLoading, mainCategory: $mainCategory, isMainCategorySelectedIndex: $isMainCategorySelectedIndex, isOpenSubCategoryView: $isOpenSubCategoryView, subCategory: $subCategory, selectedCategory: $selectedCategory, productList: $productList, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class $CategoryStateCopyWith<$Res>  {
  factory $CategoryStateCopyWith(CategoryState value, $Res Function(CategoryState) _then) = _$CategoryStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, MainCategoryResponseDto? mainCategory, int isMainCategorySelectedIndex, bool isOpenSubCategoryView, MainCategoryResponseDto? subCategory, MainCategoryDto? selectedCategory, ProductRecommandDto? productList, int page, bool hasNext, bool isFetchingMore
});


$MainCategoryResponseDtoCopyWith<$Res>? get mainCategory;$MainCategoryResponseDtoCopyWith<$Res>? get subCategory;$MainCategoryDtoCopyWith<$Res>? get selectedCategory;$ProductRecommandDtoCopyWith<$Res>? get productList;

}
/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._self, this._then);

  final CategoryState _self;
  final $Res Function(CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? mainCategory = freezed,Object? isMainCategorySelectedIndex = null,Object? isOpenSubCategoryView = null,Object? subCategory = freezed,Object? selectedCategory = freezed,Object? productList = freezed,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,mainCategory: freezed == mainCategory ? _self.mainCategory : mainCategory // ignore: cast_nullable_to_non_nullable
as MainCategoryResponseDto?,isMainCategorySelectedIndex: null == isMainCategorySelectedIndex ? _self.isMainCategorySelectedIndex : isMainCategorySelectedIndex // ignore: cast_nullable_to_non_nullable
as int,isOpenSubCategoryView: null == isOpenSubCategoryView ? _self.isOpenSubCategoryView : isOpenSubCategoryView // ignore: cast_nullable_to_non_nullable
as bool,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as MainCategoryResponseDto?,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as MainCategoryDto?,productList: freezed == productList ? _self.productList : productList // ignore: cast_nullable_to_non_nullable
as ProductRecommandDto?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCategoryResponseDtoCopyWith<$Res>? get mainCategory {
    if (_self.mainCategory == null) {
    return null;
  }

  return $MainCategoryResponseDtoCopyWith<$Res>(_self.mainCategory!, (value) {
    return _then(_self.copyWith(mainCategory: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCategoryResponseDtoCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $MainCategoryResponseDtoCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCategoryDtoCopyWith<$Res>? get selectedCategory {
    if (_self.selectedCategory == null) {
    return null;
  }

  return $MainCategoryDtoCopyWith<$Res>(_self.selectedCategory!, (value) {
    return _then(_self.copyWith(selectedCategory: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductRecommandDtoCopyWith<$Res>? get productList {
    if (_self.productList == null) {
    return null;
  }

  return $ProductRecommandDtoCopyWith<$Res>(_self.productList!, (value) {
    return _then(_self.copyWith(productList: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryState].
extension CategoryStatePatterns on CategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryState value)  $default,){
final _that = this;
switch (_that) {
case _CategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  MainCategoryResponseDto? mainCategory,  int isMainCategorySelectedIndex,  bool isOpenSubCategoryView,  MainCategoryResponseDto? subCategory,  MainCategoryDto? selectedCategory,  ProductRecommandDto? productList,  int page,  bool hasNext,  bool isFetchingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
return $default(_that.isLoading,_that.mainCategory,_that.isMainCategorySelectedIndex,_that.isOpenSubCategoryView,_that.subCategory,_that.selectedCategory,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  MainCategoryResponseDto? mainCategory,  int isMainCategorySelectedIndex,  bool isOpenSubCategoryView,  MainCategoryResponseDto? subCategory,  MainCategoryDto? selectedCategory,  ProductRecommandDto? productList,  int page,  bool hasNext,  bool isFetchingMore)  $default,) {final _that = this;
switch (_that) {
case _CategoryState():
return $default(_that.isLoading,_that.mainCategory,_that.isMainCategorySelectedIndex,_that.isOpenSubCategoryView,_that.subCategory,_that.selectedCategory,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  MainCategoryResponseDto? mainCategory,  int isMainCategorySelectedIndex,  bool isOpenSubCategoryView,  MainCategoryResponseDto? subCategory,  MainCategoryDto? selectedCategory,  ProductRecommandDto? productList,  int page,  bool hasNext,  bool isFetchingMore)?  $default,) {final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
return $default(_that.isLoading,_that.mainCategory,_that.isMainCategorySelectedIndex,_that.isOpenSubCategoryView,_that.subCategory,_that.selectedCategory,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryState extends CategoryState {
  const _CategoryState({required this.isLoading, required this.mainCategory, required this.isMainCategorySelectedIndex, required this.isOpenSubCategoryView, required this.subCategory, required this.selectedCategory, required this.productList, this.page = 0, this.hasNext = true, this.isFetchingMore = false}): super._();
  

@override final  bool isLoading;
@override final  MainCategoryResponseDto? mainCategory;
@override final  int isMainCategorySelectedIndex;
@override final  bool isOpenSubCategoryView;
@override final  MainCategoryResponseDto? subCategory;
@override final  MainCategoryDto? selectedCategory;
@override final  ProductRecommandDto? productList;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool hasNext;
@override@JsonKey() final  bool isFetchingMore;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryStateCopyWith<_CategoryState> get copyWith => __$CategoryStateCopyWithImpl<_CategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.mainCategory, mainCategory) || other.mainCategory == mainCategory)&&(identical(other.isMainCategorySelectedIndex, isMainCategorySelectedIndex) || other.isMainCategorySelectedIndex == isMainCategorySelectedIndex)&&(identical(other.isOpenSubCategoryView, isOpenSubCategoryView) || other.isOpenSubCategoryView == isOpenSubCategoryView)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.productList, productList) || other.productList == productList)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,mainCategory,isMainCategorySelectedIndex,isOpenSubCategoryView,subCategory,selectedCategory,productList,page,hasNext,isFetchingMore);

@override
String toString() {
  return 'CategoryState(isLoading: $isLoading, mainCategory: $mainCategory, isMainCategorySelectedIndex: $isMainCategorySelectedIndex, isOpenSubCategoryView: $isOpenSubCategoryView, subCategory: $subCategory, selectedCategory: $selectedCategory, productList: $productList, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class _$CategoryStateCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryStateCopyWith(_CategoryState value, $Res Function(_CategoryState) _then) = __$CategoryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, MainCategoryResponseDto? mainCategory, int isMainCategorySelectedIndex, bool isOpenSubCategoryView, MainCategoryResponseDto? subCategory, MainCategoryDto? selectedCategory, ProductRecommandDto? productList, int page, bool hasNext, bool isFetchingMore
});


@override $MainCategoryResponseDtoCopyWith<$Res>? get mainCategory;@override $MainCategoryResponseDtoCopyWith<$Res>? get subCategory;@override $MainCategoryDtoCopyWith<$Res>? get selectedCategory;@override $ProductRecommandDtoCopyWith<$Res>? get productList;

}
/// @nodoc
class __$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateCopyWith<$Res> {
  __$CategoryStateCopyWithImpl(this._self, this._then);

  final _CategoryState _self;
  final $Res Function(_CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? mainCategory = freezed,Object? isMainCategorySelectedIndex = null,Object? isOpenSubCategoryView = null,Object? subCategory = freezed,Object? selectedCategory = freezed,Object? productList = freezed,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,}) {
  return _then(_CategoryState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,mainCategory: freezed == mainCategory ? _self.mainCategory : mainCategory // ignore: cast_nullable_to_non_nullable
as MainCategoryResponseDto?,isMainCategorySelectedIndex: null == isMainCategorySelectedIndex ? _self.isMainCategorySelectedIndex : isMainCategorySelectedIndex // ignore: cast_nullable_to_non_nullable
as int,isOpenSubCategoryView: null == isOpenSubCategoryView ? _self.isOpenSubCategoryView : isOpenSubCategoryView // ignore: cast_nullable_to_non_nullable
as bool,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as MainCategoryResponseDto?,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as MainCategoryDto?,productList: freezed == productList ? _self.productList : productList // ignore: cast_nullable_to_non_nullable
as ProductRecommandDto?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCategoryResponseDtoCopyWith<$Res>? get mainCategory {
    if (_self.mainCategory == null) {
    return null;
  }

  return $MainCategoryResponseDtoCopyWith<$Res>(_self.mainCategory!, (value) {
    return _then(_self.copyWith(mainCategory: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCategoryResponseDtoCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $MainCategoryResponseDtoCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCategoryDtoCopyWith<$Res>? get selectedCategory {
    if (_self.selectedCategory == null) {
    return null;
  }

  return $MainCategoryDtoCopyWith<$Res>(_self.selectedCategory!, (value) {
    return _then(_self.copyWith(selectedCategory: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductRecommandDtoCopyWith<$Res>? get productList {
    if (_self.productList == null) {
    return null;
  }

  return $ProductRecommandDtoCopyWith<$Res>(_self.productList!, (value) {
    return _then(_self.copyWith(productList: value));
  });
}
}

// dart format on
