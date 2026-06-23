// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_review_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductReviewListState {

 bool get isLoading; List<ReviewDto> get reviews; int get page; bool get hasNext; bool get isFetchingMore;
/// Create a copy of ProductReviewListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewListStateCopyWith<ProductReviewListState> get copyWith => _$ProductReviewListStateCopyWithImpl<ProductReviewListState>(this as ProductReviewListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.reviews, reviews)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(reviews),page,hasNext,isFetchingMore);

@override
String toString() {
  return 'ProductReviewListState(isLoading: $isLoading, reviews: $reviews, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class $ProductReviewListStateCopyWith<$Res>  {
  factory $ProductReviewListStateCopyWith(ProductReviewListState value, $Res Function(ProductReviewListState) _then) = _$ProductReviewListStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<ReviewDto> reviews, int page, bool hasNext, bool isFetchingMore
});




}
/// @nodoc
class _$ProductReviewListStateCopyWithImpl<$Res>
    implements $ProductReviewListStateCopyWith<$Res> {
  _$ProductReviewListStateCopyWithImpl(this._self, this._then);

  final ProductReviewListState _self;
  final $Res Function(ProductReviewListState) _then;

/// Create a copy of ProductReviewListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? reviews = null,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductReviewListState].
extension ProductReviewListStatePatterns on ProductReviewListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewListState value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewListState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<ReviewDto> reviews,  int page,  bool hasNext,  bool isFetchingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewListState() when $default != null:
return $default(_that.isLoading,_that.reviews,_that.page,_that.hasNext,_that.isFetchingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<ReviewDto> reviews,  int page,  bool hasNext,  bool isFetchingMore)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewListState():
return $default(_that.isLoading,_that.reviews,_that.page,_that.hasNext,_that.isFetchingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<ReviewDto> reviews,  int page,  bool hasNext,  bool isFetchingMore)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewListState() when $default != null:
return $default(_that.isLoading,_that.reviews,_that.page,_that.hasNext,_that.isFetchingMore);case _:
  return null;

}
}

}

/// @nodoc


class _ProductReviewListState extends ProductReviewListState {
  const _ProductReviewListState({required this.isLoading, required final  List<ReviewDto> reviews, required this.page, required this.hasNext, required this.isFetchingMore}): _reviews = reviews,super._();
  

@override final  bool isLoading;
 final  List<ReviewDto> _reviews;
@override List<ReviewDto> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override final  int page;
@override final  bool hasNext;
@override final  bool isFetchingMore;

/// Create a copy of ProductReviewListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewListStateCopyWith<_ProductReviewListState> get copyWith => __$ProductReviewListStateCopyWithImpl<_ProductReviewListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._reviews, _reviews)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_reviews),page,hasNext,isFetchingMore);

@override
String toString() {
  return 'ProductReviewListState(isLoading: $isLoading, reviews: $reviews, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewListStateCopyWith<$Res> implements $ProductReviewListStateCopyWith<$Res> {
  factory _$ProductReviewListStateCopyWith(_ProductReviewListState value, $Res Function(_ProductReviewListState) _then) = __$ProductReviewListStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<ReviewDto> reviews, int page, bool hasNext, bool isFetchingMore
});




}
/// @nodoc
class __$ProductReviewListStateCopyWithImpl<$Res>
    implements _$ProductReviewListStateCopyWith<$Res> {
  __$ProductReviewListStateCopyWithImpl(this._self, this._then);

  final _ProductReviewListState _self;
  final $Res Function(_ProductReviewListState) _then;

/// Create a copy of ProductReviewListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? reviews = null,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,}) {
  return _then(_ProductReviewListState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
