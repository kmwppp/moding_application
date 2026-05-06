// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WishListState {

 int get pageNum; WishListDto? get wishListDto; bool get isLoading; bool get hasNext;
/// Create a copy of WishListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishListStateCopyWith<WishListState> get copyWith => _$WishListStateCopyWithImpl<WishListState>(this as WishListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishListState&&(identical(other.pageNum, pageNum) || other.pageNum == pageNum)&&(identical(other.wishListDto, wishListDto) || other.wishListDto == wishListDto)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}


@override
int get hashCode => Object.hash(runtimeType,pageNum,wishListDto,isLoading,hasNext);

@override
String toString() {
  return 'WishListState(pageNum: $pageNum, wishListDto: $wishListDto, isLoading: $isLoading, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class $WishListStateCopyWith<$Res>  {
  factory $WishListStateCopyWith(WishListState value, $Res Function(WishListState) _then) = _$WishListStateCopyWithImpl;
@useResult
$Res call({
 int pageNum, WishListDto? wishListDto, bool isLoading, bool hasNext
});


$WishListDtoCopyWith<$Res>? get wishListDto;

}
/// @nodoc
class _$WishListStateCopyWithImpl<$Res>
    implements $WishListStateCopyWith<$Res> {
  _$WishListStateCopyWithImpl(this._self, this._then);

  final WishListState _self;
  final $Res Function(WishListState) _then;

/// Create a copy of WishListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageNum = null,Object? wishListDto = freezed,Object? isLoading = null,Object? hasNext = null,}) {
  return _then(_self.copyWith(
pageNum: null == pageNum ? _self.pageNum : pageNum // ignore: cast_nullable_to_non_nullable
as int,wishListDto: freezed == wishListDto ? _self.wishListDto : wishListDto // ignore: cast_nullable_to_non_nullable
as WishListDto?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of WishListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WishListDtoCopyWith<$Res>? get wishListDto {
    if (_self.wishListDto == null) {
    return null;
  }

  return $WishListDtoCopyWith<$Res>(_self.wishListDto!, (value) {
    return _then(_self.copyWith(wishListDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [WishListState].
extension WishListStatePatterns on WishListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishListState value)  $default,){
final _that = this;
switch (_that) {
case _WishListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishListState value)?  $default,){
final _that = this;
switch (_that) {
case _WishListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int pageNum,  WishListDto? wishListDto,  bool isLoading,  bool hasNext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishListState() when $default != null:
return $default(_that.pageNum,_that.wishListDto,_that.isLoading,_that.hasNext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int pageNum,  WishListDto? wishListDto,  bool isLoading,  bool hasNext)  $default,) {final _that = this;
switch (_that) {
case _WishListState():
return $default(_that.pageNum,_that.wishListDto,_that.isLoading,_that.hasNext);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int pageNum,  WishListDto? wishListDto,  bool isLoading,  bool hasNext)?  $default,) {final _that = this;
switch (_that) {
case _WishListState() when $default != null:
return $default(_that.pageNum,_that.wishListDto,_that.isLoading,_that.hasNext);case _:
  return null;

}
}

}

/// @nodoc


class _WishListState extends WishListState {
  const _WishListState({required this.pageNum, required this.wishListDto, this.isLoading = false, this.hasNext = true}): super._();
  

@override final  int pageNum;
@override final  WishListDto? wishListDto;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool hasNext;

/// Create a copy of WishListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishListStateCopyWith<_WishListState> get copyWith => __$WishListStateCopyWithImpl<_WishListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishListState&&(identical(other.pageNum, pageNum) || other.pageNum == pageNum)&&(identical(other.wishListDto, wishListDto) || other.wishListDto == wishListDto)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}


@override
int get hashCode => Object.hash(runtimeType,pageNum,wishListDto,isLoading,hasNext);

@override
String toString() {
  return 'WishListState(pageNum: $pageNum, wishListDto: $wishListDto, isLoading: $isLoading, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class _$WishListStateCopyWith<$Res> implements $WishListStateCopyWith<$Res> {
  factory _$WishListStateCopyWith(_WishListState value, $Res Function(_WishListState) _then) = __$WishListStateCopyWithImpl;
@override @useResult
$Res call({
 int pageNum, WishListDto? wishListDto, bool isLoading, bool hasNext
});


@override $WishListDtoCopyWith<$Res>? get wishListDto;

}
/// @nodoc
class __$WishListStateCopyWithImpl<$Res>
    implements _$WishListStateCopyWith<$Res> {
  __$WishListStateCopyWithImpl(this._self, this._then);

  final _WishListState _self;
  final $Res Function(_WishListState) _then;

/// Create a copy of WishListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageNum = null,Object? wishListDto = freezed,Object? isLoading = null,Object? hasNext = null,}) {
  return _then(_WishListState(
pageNum: null == pageNum ? _self.pageNum : pageNum // ignore: cast_nullable_to_non_nullable
as int,wishListDto: freezed == wishListDto ? _self.wishListDto : wishListDto // ignore: cast_nullable_to_non_nullable
as WishListDto?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of WishListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WishListDtoCopyWith<$Res>? get wishListDto {
    if (_self.wishListDto == null) {
    return null;
  }

  return $WishListDtoCopyWith<$Res>(_self.wishListDto!, (value) {
    return _then(_self.copyWith(wishListDto: value));
  });
}
}

// dart format on
