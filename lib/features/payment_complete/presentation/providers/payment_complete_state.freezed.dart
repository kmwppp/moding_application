// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_complete_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentCompleteState {

 bool get isLoading; PaymentCompleteResponseWrapper? get paymentInfo;
/// Create a copy of PaymentCompleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCompleteStateCopyWith<PaymentCompleteState> get copyWith => _$PaymentCompleteStateCopyWithImpl<PaymentCompleteState>(this as PaymentCompleteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCompleteState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.paymentInfo, paymentInfo) || other.paymentInfo == paymentInfo));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,paymentInfo);

@override
String toString() {
  return 'PaymentCompleteState(isLoading: $isLoading, paymentInfo: $paymentInfo)';
}


}

/// @nodoc
abstract mixin class $PaymentCompleteStateCopyWith<$Res>  {
  factory $PaymentCompleteStateCopyWith(PaymentCompleteState value, $Res Function(PaymentCompleteState) _then) = _$PaymentCompleteStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, PaymentCompleteResponseWrapper? paymentInfo
});


$PaymentCompleteResponseWrapperCopyWith<$Res>? get paymentInfo;

}
/// @nodoc
class _$PaymentCompleteStateCopyWithImpl<$Res>
    implements $PaymentCompleteStateCopyWith<$Res> {
  _$PaymentCompleteStateCopyWithImpl(this._self, this._then);

  final PaymentCompleteState _self;
  final $Res Function(PaymentCompleteState) _then;

/// Create a copy of PaymentCompleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? paymentInfo = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,paymentInfo: freezed == paymentInfo ? _self.paymentInfo : paymentInfo // ignore: cast_nullable_to_non_nullable
as PaymentCompleteResponseWrapper?,
  ));
}
/// Create a copy of PaymentCompleteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCompleteResponseWrapperCopyWith<$Res>? get paymentInfo {
    if (_self.paymentInfo == null) {
    return null;
  }

  return $PaymentCompleteResponseWrapperCopyWith<$Res>(_self.paymentInfo!, (value) {
    return _then(_self.copyWith(paymentInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentCompleteState].
extension PaymentCompleteStatePatterns on PaymentCompleteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentCompleteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentCompleteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentCompleteState value)  $default,){
final _that = this;
switch (_that) {
case _PaymentCompleteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentCompleteState value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentCompleteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  PaymentCompleteResponseWrapper? paymentInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentCompleteState() when $default != null:
return $default(_that.isLoading,_that.paymentInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  PaymentCompleteResponseWrapper? paymentInfo)  $default,) {final _that = this;
switch (_that) {
case _PaymentCompleteState():
return $default(_that.isLoading,_that.paymentInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  PaymentCompleteResponseWrapper? paymentInfo)?  $default,) {final _that = this;
switch (_that) {
case _PaymentCompleteState() when $default != null:
return $default(_that.isLoading,_that.paymentInfo);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentCompleteState extends PaymentCompleteState {
  const _PaymentCompleteState({this.isLoading = true, this.paymentInfo = null}): super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  PaymentCompleteResponseWrapper? paymentInfo;

/// Create a copy of PaymentCompleteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCompleteStateCopyWith<_PaymentCompleteState> get copyWith => __$PaymentCompleteStateCopyWithImpl<_PaymentCompleteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentCompleteState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.paymentInfo, paymentInfo) || other.paymentInfo == paymentInfo));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,paymentInfo);

@override
String toString() {
  return 'PaymentCompleteState(isLoading: $isLoading, paymentInfo: $paymentInfo)';
}


}

/// @nodoc
abstract mixin class _$PaymentCompleteStateCopyWith<$Res> implements $PaymentCompleteStateCopyWith<$Res> {
  factory _$PaymentCompleteStateCopyWith(_PaymentCompleteState value, $Res Function(_PaymentCompleteState) _then) = __$PaymentCompleteStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, PaymentCompleteResponseWrapper? paymentInfo
});


@override $PaymentCompleteResponseWrapperCopyWith<$Res>? get paymentInfo;

}
/// @nodoc
class __$PaymentCompleteStateCopyWithImpl<$Res>
    implements _$PaymentCompleteStateCopyWith<$Res> {
  __$PaymentCompleteStateCopyWithImpl(this._self, this._then);

  final _PaymentCompleteState _self;
  final $Res Function(_PaymentCompleteState) _then;

/// Create a copy of PaymentCompleteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? paymentInfo = freezed,}) {
  return _then(_PaymentCompleteState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,paymentInfo: freezed == paymentInfo ? _self.paymentInfo : paymentInfo // ignore: cast_nullable_to_non_nullable
as PaymentCompleteResponseWrapper?,
  ));
}

/// Create a copy of PaymentCompleteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCompleteResponseWrapperCopyWith<$Res>? get paymentInfo {
    if (_self.paymentInfo == null) {
    return null;
  }

  return $PaymentCompleteResponseWrapperCopyWith<$Res>(_self.paymentInfo!, (value) {
    return _then(_self.copyWith(paymentInfo: value));
  });
}
}

// dart format on
