// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewListState {

 bool get isLoading; List<ReviewDto> get reviews; int get page; bool get hasNext; bool get isFetchingMore;
/// Create a copy of ReviewListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewListStateCopyWith<ReviewListState> get copyWith => _$ReviewListStateCopyWithImpl<ReviewListState>(this as ReviewListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.reviews, reviews)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(reviews),page,hasNext,isFetchingMore);

@override
String toString() {
  return 'ReviewListState(isLoading: $isLoading, reviews: $reviews, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class $ReviewListStateCopyWith<$Res>  {
  factory $ReviewListStateCopyWith(ReviewListState value, $Res Function(ReviewListState) _then) = _$ReviewListStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<ReviewDto> reviews, int page, bool hasNext, bool isFetchingMore
});




}
/// @nodoc
class _$ReviewListStateCopyWithImpl<$Res>
    implements $ReviewListStateCopyWith<$Res> {
  _$ReviewListStateCopyWithImpl(this._self, this._then);

  final ReviewListState _self;
  final $Res Function(ReviewListState) _then;

/// Create a copy of ReviewListState
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


/// Adds pattern-matching-related methods to [ReviewListState].
extension ReviewListStatePatterns on ReviewListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewListState value)  $default,){
final _that = this;
switch (_that) {
case _ReviewListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewListState value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewListState() when $default != null:
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
case _ReviewListState() when $default != null:
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
case _ReviewListState():
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
case _ReviewListState() when $default != null:
return $default(_that.isLoading,_that.reviews,_that.page,_that.hasNext,_that.isFetchingMore);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewListState extends ReviewListState {
  const _ReviewListState({required this.isLoading, required final  List<ReviewDto> reviews, this.page = 0, this.hasNext = true, this.isFetchingMore = false}): _reviews = reviews,super._();
  

@override final  bool isLoading;
 final  List<ReviewDto> _reviews;
@override List<ReviewDto> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override@JsonKey() final  int page;
@override@JsonKey() final  bool hasNext;
@override@JsonKey() final  bool isFetchingMore;

/// Create a copy of ReviewListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewListStateCopyWith<_ReviewListState> get copyWith => __$ReviewListStateCopyWithImpl<_ReviewListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._reviews, _reviews)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_reviews),page,hasNext,isFetchingMore);

@override
String toString() {
  return 'ReviewListState(isLoading: $isLoading, reviews: $reviews, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class _$ReviewListStateCopyWith<$Res> implements $ReviewListStateCopyWith<$Res> {
  factory _$ReviewListStateCopyWith(_ReviewListState value, $Res Function(_ReviewListState) _then) = __$ReviewListStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<ReviewDto> reviews, int page, bool hasNext, bool isFetchingMore
});




}
/// @nodoc
class __$ReviewListStateCopyWithImpl<$Res>
    implements _$ReviewListStateCopyWith<$Res> {
  __$ReviewListStateCopyWithImpl(this._self, this._then);

  final _ReviewListState _self;
  final $Res Function(_ReviewListState) _then;

/// Create a copy of ReviewListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? reviews = null,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,}) {
  return _then(_ReviewListState(
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
