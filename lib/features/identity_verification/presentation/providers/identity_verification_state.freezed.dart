// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'identity_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IdentityVerificationState {

 String get password; bool get isSubmitting;
/// Create a copy of IdentityVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdentityVerificationStateCopyWith<IdentityVerificationState> get copyWith => _$IdentityVerificationStateCopyWithImpl<IdentityVerificationState>(this as IdentityVerificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdentityVerificationState&&(identical(other.password, password) || other.password == password)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting));
}


@override
int get hashCode => Object.hash(runtimeType,password,isSubmitting);

@override
String toString() {
  return 'IdentityVerificationState(password: $password, isSubmitting: $isSubmitting)';
}


}

/// @nodoc
abstract mixin class $IdentityVerificationStateCopyWith<$Res>  {
  factory $IdentityVerificationStateCopyWith(IdentityVerificationState value, $Res Function(IdentityVerificationState) _then) = _$IdentityVerificationStateCopyWithImpl;
@useResult
$Res call({
 String password, bool isSubmitting
});




}
/// @nodoc
class _$IdentityVerificationStateCopyWithImpl<$Res>
    implements $IdentityVerificationStateCopyWith<$Res> {
  _$IdentityVerificationStateCopyWithImpl(this._self, this._then);

  final IdentityVerificationState _self;
  final $Res Function(IdentityVerificationState) _then;

/// Create a copy of IdentityVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = null,Object? isSubmitting = null,}) {
  return _then(_self.copyWith(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IdentityVerificationState].
extension IdentityVerificationStatePatterns on IdentityVerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IdentityVerificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IdentityVerificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IdentityVerificationState value)  $default,){
final _that = this;
switch (_that) {
case _IdentityVerificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IdentityVerificationState value)?  $default,){
final _that = this;
switch (_that) {
case _IdentityVerificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String password,  bool isSubmitting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IdentityVerificationState() when $default != null:
return $default(_that.password,_that.isSubmitting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String password,  bool isSubmitting)  $default,) {final _that = this;
switch (_that) {
case _IdentityVerificationState():
return $default(_that.password,_that.isSubmitting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String password,  bool isSubmitting)?  $default,) {final _that = this;
switch (_that) {
case _IdentityVerificationState() when $default != null:
return $default(_that.password,_that.isSubmitting);case _:
  return null;

}
}

}

/// @nodoc


class _IdentityVerificationState extends IdentityVerificationState {
  const _IdentityVerificationState({required this.password, required this.isSubmitting}): super._();
  

@override final  String password;
@override final  bool isSubmitting;

/// Create a copy of IdentityVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdentityVerificationStateCopyWith<_IdentityVerificationState> get copyWith => __$IdentityVerificationStateCopyWithImpl<_IdentityVerificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdentityVerificationState&&(identical(other.password, password) || other.password == password)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting));
}


@override
int get hashCode => Object.hash(runtimeType,password,isSubmitting);

@override
String toString() {
  return 'IdentityVerificationState(password: $password, isSubmitting: $isSubmitting)';
}


}

/// @nodoc
abstract mixin class _$IdentityVerificationStateCopyWith<$Res> implements $IdentityVerificationStateCopyWith<$Res> {
  factory _$IdentityVerificationStateCopyWith(_IdentityVerificationState value, $Res Function(_IdentityVerificationState) _then) = __$IdentityVerificationStateCopyWithImpl;
@override @useResult
$Res call({
 String password, bool isSubmitting
});




}
/// @nodoc
class __$IdentityVerificationStateCopyWithImpl<$Res>
    implements _$IdentityVerificationStateCopyWith<$Res> {
  __$IdentityVerificationStateCopyWithImpl(this._self, this._then);

  final _IdentityVerificationState _self;
  final $Res Function(_IdentityVerificationState) _then;

/// Create a copy of IdentityVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = null,Object? isSubmitting = null,}) {
  return _then(_IdentityVerificationState(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
