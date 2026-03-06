// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_step2_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupStep2State {

 int get businessType; String get phoneNum; bool get phoneNumValid; bool get phoneNumSuccess; String get certifiNum; bool get certifiNumValid; bool get certifiSuccess; List<bool> get agreeList;
/// Create a copy of SignupStep2State
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStep2StateCopyWith<SignupStep2State> get copyWith => _$SignupStep2StateCopyWithImpl<SignupStep2State>(this as SignupStep2State, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupStep2State&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum)&&(identical(other.phoneNumValid, phoneNumValid) || other.phoneNumValid == phoneNumValid)&&(identical(other.phoneNumSuccess, phoneNumSuccess) || other.phoneNumSuccess == phoneNumSuccess)&&(identical(other.certifiNum, certifiNum) || other.certifiNum == certifiNum)&&(identical(other.certifiNumValid, certifiNumValid) || other.certifiNumValid == certifiNumValid)&&(identical(other.certifiSuccess, certifiSuccess) || other.certifiSuccess == certifiSuccess)&&const DeepCollectionEquality().equals(other.agreeList, agreeList));
}


@override
int get hashCode => Object.hash(runtimeType,businessType,phoneNum,phoneNumValid,phoneNumSuccess,certifiNum,certifiNumValid,certifiSuccess,const DeepCollectionEquality().hash(agreeList));

@override
String toString() {
  return 'SignupStep2State(businessType: $businessType, phoneNum: $phoneNum, phoneNumValid: $phoneNumValid, phoneNumSuccess: $phoneNumSuccess, certifiNum: $certifiNum, certifiNumValid: $certifiNumValid, certifiSuccess: $certifiSuccess, agreeList: $agreeList)';
}


}

/// @nodoc
abstract mixin class $SignupStep2StateCopyWith<$Res>  {
  factory $SignupStep2StateCopyWith(SignupStep2State value, $Res Function(SignupStep2State) _then) = _$SignupStep2StateCopyWithImpl;
@useResult
$Res call({
 int businessType, String phoneNum, bool phoneNumValid, bool phoneNumSuccess, String certifiNum, bool certifiNumValid, bool certifiSuccess, List<bool> agreeList
});




}
/// @nodoc
class _$SignupStep2StateCopyWithImpl<$Res>
    implements $SignupStep2StateCopyWith<$Res> {
  _$SignupStep2StateCopyWithImpl(this._self, this._then);

  final SignupStep2State _self;
  final $Res Function(SignupStep2State) _then;

/// Create a copy of SignupStep2State
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessType = null,Object? phoneNum = null,Object? phoneNumValid = null,Object? phoneNumSuccess = null,Object? certifiNum = null,Object? certifiNumValid = null,Object? certifiSuccess = null,Object? agreeList = null,}) {
  return _then(_self.copyWith(
businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as int,phoneNum: null == phoneNum ? _self.phoneNum : phoneNum // ignore: cast_nullable_to_non_nullable
as String,phoneNumValid: null == phoneNumValid ? _self.phoneNumValid : phoneNumValid // ignore: cast_nullable_to_non_nullable
as bool,phoneNumSuccess: null == phoneNumSuccess ? _self.phoneNumSuccess : phoneNumSuccess // ignore: cast_nullable_to_non_nullable
as bool,certifiNum: null == certifiNum ? _self.certifiNum : certifiNum // ignore: cast_nullable_to_non_nullable
as String,certifiNumValid: null == certifiNumValid ? _self.certifiNumValid : certifiNumValid // ignore: cast_nullable_to_non_nullable
as bool,certifiSuccess: null == certifiSuccess ? _self.certifiSuccess : certifiSuccess // ignore: cast_nullable_to_non_nullable
as bool,agreeList: null == agreeList ? _self.agreeList : agreeList // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupStep2State].
extension SignupStep2StatePatterns on SignupStep2State {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupStep2State value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupStep2State() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupStep2State value)  $default,){
final _that = this;
switch (_that) {
case _SignupStep2State():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupStep2State value)?  $default,){
final _that = this;
switch (_that) {
case _SignupStep2State() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int businessType,  String phoneNum,  bool phoneNumValid,  bool phoneNumSuccess,  String certifiNum,  bool certifiNumValid,  bool certifiSuccess,  List<bool> agreeList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupStep2State() when $default != null:
return $default(_that.businessType,_that.phoneNum,_that.phoneNumValid,_that.phoneNumSuccess,_that.certifiNum,_that.certifiNumValid,_that.certifiSuccess,_that.agreeList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int businessType,  String phoneNum,  bool phoneNumValid,  bool phoneNumSuccess,  String certifiNum,  bool certifiNumValid,  bool certifiSuccess,  List<bool> agreeList)  $default,) {final _that = this;
switch (_that) {
case _SignupStep2State():
return $default(_that.businessType,_that.phoneNum,_that.phoneNumValid,_that.phoneNumSuccess,_that.certifiNum,_that.certifiNumValid,_that.certifiSuccess,_that.agreeList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int businessType,  String phoneNum,  bool phoneNumValid,  bool phoneNumSuccess,  String certifiNum,  bool certifiNumValid,  bool certifiSuccess,  List<bool> agreeList)?  $default,) {final _that = this;
switch (_that) {
case _SignupStep2State() when $default != null:
return $default(_that.businessType,_that.phoneNum,_that.phoneNumValid,_that.phoneNumSuccess,_that.certifiNum,_that.certifiNumValid,_that.certifiSuccess,_that.agreeList);case _:
  return null;

}
}

}

/// @nodoc


class _SignupStep2State extends SignupStep2State {
  const _SignupStep2State({required this.businessType, required this.phoneNum, required this.phoneNumValid, required this.phoneNumSuccess, required this.certifiNum, required this.certifiNumValid, required this.certifiSuccess, required final  List<bool> agreeList}): _agreeList = agreeList,super._();
  

@override final  int businessType;
@override final  String phoneNum;
@override final  bool phoneNumValid;
@override final  bool phoneNumSuccess;
@override final  String certifiNum;
@override final  bool certifiNumValid;
@override final  bool certifiSuccess;
 final  List<bool> _agreeList;
@override List<bool> get agreeList {
  if (_agreeList is EqualUnmodifiableListView) return _agreeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_agreeList);
}


/// Create a copy of SignupStep2State
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupStep2StateCopyWith<_SignupStep2State> get copyWith => __$SignupStep2StateCopyWithImpl<_SignupStep2State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupStep2State&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum)&&(identical(other.phoneNumValid, phoneNumValid) || other.phoneNumValid == phoneNumValid)&&(identical(other.phoneNumSuccess, phoneNumSuccess) || other.phoneNumSuccess == phoneNumSuccess)&&(identical(other.certifiNum, certifiNum) || other.certifiNum == certifiNum)&&(identical(other.certifiNumValid, certifiNumValid) || other.certifiNumValid == certifiNumValid)&&(identical(other.certifiSuccess, certifiSuccess) || other.certifiSuccess == certifiSuccess)&&const DeepCollectionEquality().equals(other._agreeList, _agreeList));
}


@override
int get hashCode => Object.hash(runtimeType,businessType,phoneNum,phoneNumValid,phoneNumSuccess,certifiNum,certifiNumValid,certifiSuccess,const DeepCollectionEquality().hash(_agreeList));

@override
String toString() {
  return 'SignupStep2State(businessType: $businessType, phoneNum: $phoneNum, phoneNumValid: $phoneNumValid, phoneNumSuccess: $phoneNumSuccess, certifiNum: $certifiNum, certifiNumValid: $certifiNumValid, certifiSuccess: $certifiSuccess, agreeList: $agreeList)';
}


}

/// @nodoc
abstract mixin class _$SignupStep2StateCopyWith<$Res> implements $SignupStep2StateCopyWith<$Res> {
  factory _$SignupStep2StateCopyWith(_SignupStep2State value, $Res Function(_SignupStep2State) _then) = __$SignupStep2StateCopyWithImpl;
@override @useResult
$Res call({
 int businessType, String phoneNum, bool phoneNumValid, bool phoneNumSuccess, String certifiNum, bool certifiNumValid, bool certifiSuccess, List<bool> agreeList
});




}
/// @nodoc
class __$SignupStep2StateCopyWithImpl<$Res>
    implements _$SignupStep2StateCopyWith<$Res> {
  __$SignupStep2StateCopyWithImpl(this._self, this._then);

  final _SignupStep2State _self;
  final $Res Function(_SignupStep2State) _then;

/// Create a copy of SignupStep2State
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessType = null,Object? phoneNum = null,Object? phoneNumValid = null,Object? phoneNumSuccess = null,Object? certifiNum = null,Object? certifiNumValid = null,Object? certifiSuccess = null,Object? agreeList = null,}) {
  return _then(_SignupStep2State(
businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as int,phoneNum: null == phoneNum ? _self.phoneNum : phoneNum // ignore: cast_nullable_to_non_nullable
as String,phoneNumValid: null == phoneNumValid ? _self.phoneNumValid : phoneNumValid // ignore: cast_nullable_to_non_nullable
as bool,phoneNumSuccess: null == phoneNumSuccess ? _self.phoneNumSuccess : phoneNumSuccess // ignore: cast_nullable_to_non_nullable
as bool,certifiNum: null == certifiNum ? _self.certifiNum : certifiNum // ignore: cast_nullable_to_non_nullable
as String,certifiNumValid: null == certifiNumValid ? _self.certifiNumValid : certifiNumValid // ignore: cast_nullable_to_non_nullable
as bool,certifiSuccess: null == certifiSuccess ? _self.certifiSuccess : certifiSuccess // ignore: cast_nullable_to_non_nullable
as bool,agreeList: null == agreeList ? _self._agreeList : agreeList // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}


}

// dart format on
