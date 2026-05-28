// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_id_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FindIdState {

 bool get isLoading; String get loginId;
/// Create a copy of FindIdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindIdStateCopyWith<FindIdState> get copyWith => _$FindIdStateCopyWithImpl<FindIdState>(this as FindIdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindIdState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loginId, loginId) || other.loginId == loginId));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,loginId);

@override
String toString() {
  return 'FindIdState(isLoading: $isLoading, loginId: $loginId)';
}


}

/// @nodoc
abstract mixin class $FindIdStateCopyWith<$Res>  {
  factory $FindIdStateCopyWith(FindIdState value, $Res Function(FindIdState) _then) = _$FindIdStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String loginId
});




}
/// @nodoc
class _$FindIdStateCopyWithImpl<$Res>
    implements $FindIdStateCopyWith<$Res> {
  _$FindIdStateCopyWithImpl(this._self, this._then);

  final FindIdState _self;
  final $Res Function(FindIdState) _then;

/// Create a copy of FindIdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? loginId = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FindIdState].
extension FindIdStatePatterns on FindIdState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindIdState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindIdState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindIdState value)  $default,){
final _that = this;
switch (_that) {
case _FindIdState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindIdState value)?  $default,){
final _that = this;
switch (_that) {
case _FindIdState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String loginId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindIdState() when $default != null:
return $default(_that.isLoading,_that.loginId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String loginId)  $default,) {final _that = this;
switch (_that) {
case _FindIdState():
return $default(_that.isLoading,_that.loginId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String loginId)?  $default,) {final _that = this;
switch (_that) {
case _FindIdState() when $default != null:
return $default(_that.isLoading,_that.loginId);case _:
  return null;

}
}

}

/// @nodoc


class _FindIdState extends FindIdState {
  const _FindIdState({required this.isLoading, this.loginId = ''}): super._();
  

@override final  bool isLoading;
@override@JsonKey() final  String loginId;

/// Create a copy of FindIdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindIdStateCopyWith<_FindIdState> get copyWith => __$FindIdStateCopyWithImpl<_FindIdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindIdState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loginId, loginId) || other.loginId == loginId));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,loginId);

@override
String toString() {
  return 'FindIdState(isLoading: $isLoading, loginId: $loginId)';
}


}

/// @nodoc
abstract mixin class _$FindIdStateCopyWith<$Res> implements $FindIdStateCopyWith<$Res> {
  factory _$FindIdStateCopyWith(_FindIdState value, $Res Function(_FindIdState) _then) = __$FindIdStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String loginId
});




}
/// @nodoc
class __$FindIdStateCopyWithImpl<$Res>
    implements _$FindIdStateCopyWith<$Res> {
  __$FindIdStateCopyWithImpl(this._self, this._then);

  final _FindIdState _self;
  final $Res Function(_FindIdState) _then;

/// Create a copy of FindIdState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? loginId = null,}) {
  return _then(_FindIdState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
