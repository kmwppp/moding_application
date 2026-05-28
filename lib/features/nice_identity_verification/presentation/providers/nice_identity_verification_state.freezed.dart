// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nice_identity_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NiceIdentityVerificationState {

 NiceIdentityVerificationType? get type; bool get isInitializing; bool get isWebViewLoading; String? get authUrl; String? get errorMessage; String? get resultText;
/// Create a copy of NiceIdentityVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NiceIdentityVerificationStateCopyWith<NiceIdentityVerificationState> get copyWith => _$NiceIdentityVerificationStateCopyWithImpl<NiceIdentityVerificationState>(this as NiceIdentityVerificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NiceIdentityVerificationState&&(identical(other.type, type) || other.type == type)&&(identical(other.isInitializing, isInitializing) || other.isInitializing == isInitializing)&&(identical(other.isWebViewLoading, isWebViewLoading) || other.isWebViewLoading == isWebViewLoading)&&(identical(other.authUrl, authUrl) || other.authUrl == authUrl)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.resultText, resultText) || other.resultText == resultText));
}


@override
int get hashCode => Object.hash(runtimeType,type,isInitializing,isWebViewLoading,authUrl,errorMessage,resultText);

@override
String toString() {
  return 'NiceIdentityVerificationState(type: $type, isInitializing: $isInitializing, isWebViewLoading: $isWebViewLoading, authUrl: $authUrl, errorMessage: $errorMessage, resultText: $resultText)';
}


}

/// @nodoc
abstract mixin class $NiceIdentityVerificationStateCopyWith<$Res>  {
  factory $NiceIdentityVerificationStateCopyWith(NiceIdentityVerificationState value, $Res Function(NiceIdentityVerificationState) _then) = _$NiceIdentityVerificationStateCopyWithImpl;
@useResult
$Res call({
 NiceIdentityVerificationType? type, bool isInitializing, bool isWebViewLoading, String? authUrl, String? errorMessage, String? resultText
});




}
/// @nodoc
class _$NiceIdentityVerificationStateCopyWithImpl<$Res>
    implements $NiceIdentityVerificationStateCopyWith<$Res> {
  _$NiceIdentityVerificationStateCopyWithImpl(this._self, this._then);

  final NiceIdentityVerificationState _self;
  final $Res Function(NiceIdentityVerificationState) _then;

/// Create a copy of NiceIdentityVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? isInitializing = null,Object? isWebViewLoading = null,Object? authUrl = freezed,Object? errorMessage = freezed,Object? resultText = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NiceIdentityVerificationType?,isInitializing: null == isInitializing ? _self.isInitializing : isInitializing // ignore: cast_nullable_to_non_nullable
as bool,isWebViewLoading: null == isWebViewLoading ? _self.isWebViewLoading : isWebViewLoading // ignore: cast_nullable_to_non_nullable
as bool,authUrl: freezed == authUrl ? _self.authUrl : authUrl // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,resultText: freezed == resultText ? _self.resultText : resultText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NiceIdentityVerificationState].
extension NiceIdentityVerificationStatePatterns on NiceIdentityVerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NiceIdentityVerificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NiceIdentityVerificationState value)  $default,){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NiceIdentityVerificationState value)?  $default,){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NiceIdentityVerificationType? type,  bool isInitializing,  bool isWebViewLoading,  String? authUrl,  String? errorMessage,  String? resultText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationState() when $default != null:
return $default(_that.type,_that.isInitializing,_that.isWebViewLoading,_that.authUrl,_that.errorMessage,_that.resultText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NiceIdentityVerificationType? type,  bool isInitializing,  bool isWebViewLoading,  String? authUrl,  String? errorMessage,  String? resultText)  $default,) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationState():
return $default(_that.type,_that.isInitializing,_that.isWebViewLoading,_that.authUrl,_that.errorMessage,_that.resultText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NiceIdentityVerificationType? type,  bool isInitializing,  bool isWebViewLoading,  String? authUrl,  String? errorMessage,  String? resultText)?  $default,) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationState() when $default != null:
return $default(_that.type,_that.isInitializing,_that.isWebViewLoading,_that.authUrl,_that.errorMessage,_that.resultText);case _:
  return null;

}
}

}

/// @nodoc


class _NiceIdentityVerificationState implements NiceIdentityVerificationState {
  const _NiceIdentityVerificationState({this.type, this.isInitializing = true, this.isWebViewLoading = false, this.authUrl, this.errorMessage, this.resultText});
  

@override final  NiceIdentityVerificationType? type;
@override@JsonKey() final  bool isInitializing;
@override@JsonKey() final  bool isWebViewLoading;
@override final  String? authUrl;
@override final  String? errorMessage;
@override final  String? resultText;

/// Create a copy of NiceIdentityVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NiceIdentityVerificationStateCopyWith<_NiceIdentityVerificationState> get copyWith => __$NiceIdentityVerificationStateCopyWithImpl<_NiceIdentityVerificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NiceIdentityVerificationState&&(identical(other.type, type) || other.type == type)&&(identical(other.isInitializing, isInitializing) || other.isInitializing == isInitializing)&&(identical(other.isWebViewLoading, isWebViewLoading) || other.isWebViewLoading == isWebViewLoading)&&(identical(other.authUrl, authUrl) || other.authUrl == authUrl)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.resultText, resultText) || other.resultText == resultText));
}


@override
int get hashCode => Object.hash(runtimeType,type,isInitializing,isWebViewLoading,authUrl,errorMessage,resultText);

@override
String toString() {
  return 'NiceIdentityVerificationState(type: $type, isInitializing: $isInitializing, isWebViewLoading: $isWebViewLoading, authUrl: $authUrl, errorMessage: $errorMessage, resultText: $resultText)';
}


}

/// @nodoc
abstract mixin class _$NiceIdentityVerificationStateCopyWith<$Res> implements $NiceIdentityVerificationStateCopyWith<$Res> {
  factory _$NiceIdentityVerificationStateCopyWith(_NiceIdentityVerificationState value, $Res Function(_NiceIdentityVerificationState) _then) = __$NiceIdentityVerificationStateCopyWithImpl;
@override @useResult
$Res call({
 NiceIdentityVerificationType? type, bool isInitializing, bool isWebViewLoading, String? authUrl, String? errorMessage, String? resultText
});




}
/// @nodoc
class __$NiceIdentityVerificationStateCopyWithImpl<$Res>
    implements _$NiceIdentityVerificationStateCopyWith<$Res> {
  __$NiceIdentityVerificationStateCopyWithImpl(this._self, this._then);

  final _NiceIdentityVerificationState _self;
  final $Res Function(_NiceIdentityVerificationState) _then;

/// Create a copy of NiceIdentityVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? isInitializing = null,Object? isWebViewLoading = null,Object? authUrl = freezed,Object? errorMessage = freezed,Object? resultText = freezed,}) {
  return _then(_NiceIdentityVerificationState(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NiceIdentityVerificationType?,isInitializing: null == isInitializing ? _self.isInitializing : isInitializing // ignore: cast_nullable_to_non_nullable
as bool,isWebViewLoading: null == isWebViewLoading ? _self.isWebViewLoading : isWebViewLoading // ignore: cast_nullable_to_non_nullable
as bool,authUrl: freezed == authUrl ? _self.authUrl : authUrl // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,resultText: freezed == resultText ? _self.resultText : resultText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
