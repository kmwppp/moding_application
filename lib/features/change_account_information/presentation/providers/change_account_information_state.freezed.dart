// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_account_information_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangeAccountInformationState {

 bool get isLoading; bool get isSubmitting; AccountInfoResponseDto? get accountInfo;
/// Create a copy of ChangeAccountInformationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeAccountInformationStateCopyWith<ChangeAccountInformationState> get copyWith => _$ChangeAccountInformationStateCopyWithImpl<ChangeAccountInformationState>(this as ChangeAccountInformationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeAccountInformationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.accountInfo, accountInfo) || other.accountInfo == accountInfo));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,accountInfo);

@override
String toString() {
  return 'ChangeAccountInformationState(isLoading: $isLoading, isSubmitting: $isSubmitting, accountInfo: $accountInfo)';
}


}

/// @nodoc
abstract mixin class $ChangeAccountInformationStateCopyWith<$Res>  {
  factory $ChangeAccountInformationStateCopyWith(ChangeAccountInformationState value, $Res Function(ChangeAccountInformationState) _then) = _$ChangeAccountInformationStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSubmitting, AccountInfoResponseDto? accountInfo
});


$AccountInfoResponseDtoCopyWith<$Res>? get accountInfo;

}
/// @nodoc
class _$ChangeAccountInformationStateCopyWithImpl<$Res>
    implements $ChangeAccountInformationStateCopyWith<$Res> {
  _$ChangeAccountInformationStateCopyWithImpl(this._self, this._then);

  final ChangeAccountInformationState _self;
  final $Res Function(ChangeAccountInformationState) _then;

/// Create a copy of ChangeAccountInformationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? accountInfo = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,accountInfo: freezed == accountInfo ? _self.accountInfo : accountInfo // ignore: cast_nullable_to_non_nullable
as AccountInfoResponseDto?,
  ));
}
/// Create a copy of ChangeAccountInformationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountInfoResponseDtoCopyWith<$Res>? get accountInfo {
    if (_self.accountInfo == null) {
    return null;
  }

  return $AccountInfoResponseDtoCopyWith<$Res>(_self.accountInfo!, (value) {
    return _then(_self.copyWith(accountInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChangeAccountInformationState].
extension ChangeAccountInformationStatePatterns on ChangeAccountInformationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeAccountInformationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeAccountInformationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeAccountInformationState value)  $default,){
final _that = this;
switch (_that) {
case _ChangeAccountInformationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeAccountInformationState value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeAccountInformationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  AccountInfoResponseDto? accountInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeAccountInformationState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.accountInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  AccountInfoResponseDto? accountInfo)  $default,) {final _that = this;
switch (_that) {
case _ChangeAccountInformationState():
return $default(_that.isLoading,_that.isSubmitting,_that.accountInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSubmitting,  AccountInfoResponseDto? accountInfo)?  $default,) {final _that = this;
switch (_that) {
case _ChangeAccountInformationState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.accountInfo);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeAccountInformationState extends ChangeAccountInformationState {
  const _ChangeAccountInformationState({required this.isLoading, required this.isSubmitting, this.accountInfo}): super._();
  

@override final  bool isLoading;
@override final  bool isSubmitting;
@override final  AccountInfoResponseDto? accountInfo;

/// Create a copy of ChangeAccountInformationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeAccountInformationStateCopyWith<_ChangeAccountInformationState> get copyWith => __$ChangeAccountInformationStateCopyWithImpl<_ChangeAccountInformationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeAccountInformationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.accountInfo, accountInfo) || other.accountInfo == accountInfo));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,accountInfo);

@override
String toString() {
  return 'ChangeAccountInformationState(isLoading: $isLoading, isSubmitting: $isSubmitting, accountInfo: $accountInfo)';
}


}

/// @nodoc
abstract mixin class _$ChangeAccountInformationStateCopyWith<$Res> implements $ChangeAccountInformationStateCopyWith<$Res> {
  factory _$ChangeAccountInformationStateCopyWith(_ChangeAccountInformationState value, $Res Function(_ChangeAccountInformationState) _then) = __$ChangeAccountInformationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSubmitting, AccountInfoResponseDto? accountInfo
});


@override $AccountInfoResponseDtoCopyWith<$Res>? get accountInfo;

}
/// @nodoc
class __$ChangeAccountInformationStateCopyWithImpl<$Res>
    implements _$ChangeAccountInformationStateCopyWith<$Res> {
  __$ChangeAccountInformationStateCopyWithImpl(this._self, this._then);

  final _ChangeAccountInformationState _self;
  final $Res Function(_ChangeAccountInformationState) _then;

/// Create a copy of ChangeAccountInformationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? accountInfo = freezed,}) {
  return _then(_ChangeAccountInformationState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,accountInfo: freezed == accountInfo ? _self.accountInfo : accountInfo // ignore: cast_nullable_to_non_nullable
as AccountInfoResponseDto?,
  ));
}

/// Create a copy of ChangeAccountInformationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountInfoResponseDtoCopyWith<$Res>? get accountInfo {
    if (_self.accountInfo == null) {
    return null;
  }

  return $AccountInfoResponseDtoCopyWith<$Res>(_self.accountInfo!, (value) {
    return _then(_self.copyWith(accountInfo: value));
  });
}
}

// dart format on
