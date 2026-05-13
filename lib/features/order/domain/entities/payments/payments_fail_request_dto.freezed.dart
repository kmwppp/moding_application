// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_fail_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentsFailRequestDto {

 String get paymentCode; String get errorCode; String get errorMessage;
/// Create a copy of PaymentsFailRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsFailRequestDtoCopyWith<PaymentsFailRequestDto> get copyWith => _$PaymentsFailRequestDtoCopyWithImpl<PaymentsFailRequestDto>(this as PaymentsFailRequestDto, _$identity);

  /// Serializes this PaymentsFailRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsFailRequestDto&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentCode,errorCode,errorMessage);

@override
String toString() {
  return 'PaymentsFailRequestDto(paymentCode: $paymentCode, errorCode: $errorCode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PaymentsFailRequestDtoCopyWith<$Res>  {
  factory $PaymentsFailRequestDtoCopyWith(PaymentsFailRequestDto value, $Res Function(PaymentsFailRequestDto) _then) = _$PaymentsFailRequestDtoCopyWithImpl;
@useResult
$Res call({
 String paymentCode, String errorCode, String errorMessage
});




}
/// @nodoc
class _$PaymentsFailRequestDtoCopyWithImpl<$Res>
    implements $PaymentsFailRequestDtoCopyWith<$Res> {
  _$PaymentsFailRequestDtoCopyWithImpl(this._self, this._then);

  final PaymentsFailRequestDto _self;
  final $Res Function(PaymentsFailRequestDto) _then;

/// Create a copy of PaymentsFailRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentCode = null,Object? errorCode = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,errorCode: null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentsFailRequestDto].
extension PaymentsFailRequestDtoPatterns on PaymentsFailRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentsFailRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentsFailRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentsFailRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentsFailRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentsFailRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentsFailRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentCode,  String errorCode,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentsFailRequestDto() when $default != null:
return $default(_that.paymentCode,_that.errorCode,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentCode,  String errorCode,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _PaymentsFailRequestDto():
return $default(_that.paymentCode,_that.errorCode,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentCode,  String errorCode,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _PaymentsFailRequestDto() when $default != null:
return $default(_that.paymentCode,_that.errorCode,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentsFailRequestDto implements PaymentsFailRequestDto {
  const _PaymentsFailRequestDto({required this.paymentCode, required this.errorCode, required this.errorMessage});
  factory _PaymentsFailRequestDto.fromJson(Map<String, dynamic> json) => _$PaymentsFailRequestDtoFromJson(json);

@override final  String paymentCode;
@override final  String errorCode;
@override final  String errorMessage;

/// Create a copy of PaymentsFailRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentsFailRequestDtoCopyWith<_PaymentsFailRequestDto> get copyWith => __$PaymentsFailRequestDtoCopyWithImpl<_PaymentsFailRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentsFailRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentsFailRequestDto&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentCode,errorCode,errorMessage);

@override
String toString() {
  return 'PaymentsFailRequestDto(paymentCode: $paymentCode, errorCode: $errorCode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$PaymentsFailRequestDtoCopyWith<$Res> implements $PaymentsFailRequestDtoCopyWith<$Res> {
  factory _$PaymentsFailRequestDtoCopyWith(_PaymentsFailRequestDto value, $Res Function(_PaymentsFailRequestDto) _then) = __$PaymentsFailRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String paymentCode, String errorCode, String errorMessage
});




}
/// @nodoc
class __$PaymentsFailRequestDtoCopyWithImpl<$Res>
    implements _$PaymentsFailRequestDtoCopyWith<$Res> {
  __$PaymentsFailRequestDtoCopyWithImpl(this._self, this._then);

  final _PaymentsFailRequestDto _self;
  final $Res Function(_PaymentsFailRequestDto) _then;

/// Create a copy of PaymentsFailRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentCode = null,Object? errorCode = null,Object? errorMessage = null,}) {
  return _then(_PaymentsFailRequestDto(
paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,errorCode: null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
