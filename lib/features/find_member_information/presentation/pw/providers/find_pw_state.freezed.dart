// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_pw_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FindPwState {

 bool get isLoading; String get loginId; String get newPassword; String get newPasswordConfirm; String get identityVerificationKey;
/// Create a copy of FindPwState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindPwStateCopyWith<FindPwState> get copyWith => _$FindPwStateCopyWithImpl<FindPwState>(this as FindPwState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindPwState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.newPasswordConfirm, newPasswordConfirm) || other.newPasswordConfirm == newPasswordConfirm)&&(identical(other.identityVerificationKey, identityVerificationKey) || other.identityVerificationKey == identityVerificationKey));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,loginId,newPassword,newPasswordConfirm,identityVerificationKey);

@override
String toString() {
  return 'FindPwState(isLoading: $isLoading, loginId: $loginId, newPassword: $newPassword, newPasswordConfirm: $newPasswordConfirm, identityVerificationKey: $identityVerificationKey)';
}


}

/// @nodoc
abstract mixin class $FindPwStateCopyWith<$Res>  {
  factory $FindPwStateCopyWith(FindPwState value, $Res Function(FindPwState) _then) = _$FindPwStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String loginId, String newPassword, String newPasswordConfirm, String identityVerificationKey
});




}
/// @nodoc
class _$FindPwStateCopyWithImpl<$Res>
    implements $FindPwStateCopyWith<$Res> {
  _$FindPwStateCopyWithImpl(this._self, this._then);

  final FindPwState _self;
  final $Res Function(FindPwState) _then;

/// Create a copy of FindPwState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? loginId = null,Object? newPassword = null,Object? newPasswordConfirm = null,Object? identityVerificationKey = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,newPasswordConfirm: null == newPasswordConfirm ? _self.newPasswordConfirm : newPasswordConfirm // ignore: cast_nullable_to_non_nullable
as String,identityVerificationKey: null == identityVerificationKey ? _self.identityVerificationKey : identityVerificationKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FindPwState].
extension FindPwStatePatterns on FindPwState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindPwState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindPwState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindPwState value)  $default,){
final _that = this;
switch (_that) {
case _FindPwState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindPwState value)?  $default,){
final _that = this;
switch (_that) {
case _FindPwState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String loginId,  String newPassword,  String newPasswordConfirm,  String identityVerificationKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindPwState() when $default != null:
return $default(_that.isLoading,_that.loginId,_that.newPassword,_that.newPasswordConfirm,_that.identityVerificationKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String loginId,  String newPassword,  String newPasswordConfirm,  String identityVerificationKey)  $default,) {final _that = this;
switch (_that) {
case _FindPwState():
return $default(_that.isLoading,_that.loginId,_that.newPassword,_that.newPasswordConfirm,_that.identityVerificationKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String loginId,  String newPassword,  String newPasswordConfirm,  String identityVerificationKey)?  $default,) {final _that = this;
switch (_that) {
case _FindPwState() when $default != null:
return $default(_that.isLoading,_that.loginId,_that.newPassword,_that.newPasswordConfirm,_that.identityVerificationKey);case _:
  return null;

}
}

}

/// @nodoc


class _FindPwState extends FindPwState {
  const _FindPwState({required this.isLoading, this.loginId = '', this.newPassword = '', this.newPasswordConfirm = '', this.identityVerificationKey = ''}): super._();
  

@override final  bool isLoading;
@override@JsonKey() final  String loginId;
@override@JsonKey() final  String newPassword;
@override@JsonKey() final  String newPasswordConfirm;
@override@JsonKey() final  String identityVerificationKey;

/// Create a copy of FindPwState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindPwStateCopyWith<_FindPwState> get copyWith => __$FindPwStateCopyWithImpl<_FindPwState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindPwState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.newPasswordConfirm, newPasswordConfirm) || other.newPasswordConfirm == newPasswordConfirm)&&(identical(other.identityVerificationKey, identityVerificationKey) || other.identityVerificationKey == identityVerificationKey));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,loginId,newPassword,newPasswordConfirm,identityVerificationKey);

@override
String toString() {
  return 'FindPwState(isLoading: $isLoading, loginId: $loginId, newPassword: $newPassword, newPasswordConfirm: $newPasswordConfirm, identityVerificationKey: $identityVerificationKey)';
}


}

/// @nodoc
abstract mixin class _$FindPwStateCopyWith<$Res> implements $FindPwStateCopyWith<$Res> {
  factory _$FindPwStateCopyWith(_FindPwState value, $Res Function(_FindPwState) _then) = __$FindPwStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String loginId, String newPassword, String newPasswordConfirm, String identityVerificationKey
});




}
/// @nodoc
class __$FindPwStateCopyWithImpl<$Res>
    implements _$FindPwStateCopyWith<$Res> {
  __$FindPwStateCopyWithImpl(this._self, this._then);

  final _FindPwState _self;
  final $Res Function(_FindPwState) _then;

/// Create a copy of FindPwState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? loginId = null,Object? newPassword = null,Object? newPasswordConfirm = null,Object? identityVerificationKey = null,}) {
  return _then(_FindPwState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,newPasswordConfirm: null == newPasswordConfirm ? _self.newPasswordConfirm : newPasswordConfirm // ignore: cast_nullable_to_non_nullable
as String,identityVerificationKey: null == identityVerificationKey ? _self.identityVerificationKey : identityVerificationKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
