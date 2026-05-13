// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_confirm_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentsConfirmRequestDto {

 String get paymentKey; String get paymentCode; int get amount;
/// Create a copy of PaymentsConfirmRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsConfirmRequestDtoCopyWith<PaymentsConfirmRequestDto> get copyWith => _$PaymentsConfirmRequestDtoCopyWithImpl<PaymentsConfirmRequestDto>(this as PaymentsConfirmRequestDto, _$identity);

  /// Serializes this PaymentsConfirmRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsConfirmRequestDto&&(identical(other.paymentKey, paymentKey) || other.paymentKey == paymentKey)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentKey,paymentCode,amount);

@override
String toString() {
  return 'PaymentsConfirmRequestDto(paymentKey: $paymentKey, paymentCode: $paymentCode, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $PaymentsConfirmRequestDtoCopyWith<$Res>  {
  factory $PaymentsConfirmRequestDtoCopyWith(PaymentsConfirmRequestDto value, $Res Function(PaymentsConfirmRequestDto) _then) = _$PaymentsConfirmRequestDtoCopyWithImpl;
@useResult
$Res call({
 String paymentKey, String paymentCode, int amount
});




}
/// @nodoc
class _$PaymentsConfirmRequestDtoCopyWithImpl<$Res>
    implements $PaymentsConfirmRequestDtoCopyWith<$Res> {
  _$PaymentsConfirmRequestDtoCopyWithImpl(this._self, this._then);

  final PaymentsConfirmRequestDto _self;
  final $Res Function(PaymentsConfirmRequestDto) _then;

/// Create a copy of PaymentsConfirmRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentKey = null,Object? paymentCode = null,Object? amount = null,}) {
  return _then(_self.copyWith(
paymentKey: null == paymentKey ? _self.paymentKey : paymentKey // ignore: cast_nullable_to_non_nullable
as String,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentsConfirmRequestDto].
extension PaymentsConfirmRequestDtoPatterns on PaymentsConfirmRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentsConfirmRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentsConfirmRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentsConfirmRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentsConfirmRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentsConfirmRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentsConfirmRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentKey,  String paymentCode,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentsConfirmRequestDto() when $default != null:
return $default(_that.paymentKey,_that.paymentCode,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentKey,  String paymentCode,  int amount)  $default,) {final _that = this;
switch (_that) {
case _PaymentsConfirmRequestDto():
return $default(_that.paymentKey,_that.paymentCode,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentKey,  String paymentCode,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentsConfirmRequestDto() when $default != null:
return $default(_that.paymentKey,_that.paymentCode,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentsConfirmRequestDto implements PaymentsConfirmRequestDto {
  const _PaymentsConfirmRequestDto({required this.paymentKey, required this.paymentCode, required this.amount});
  factory _PaymentsConfirmRequestDto.fromJson(Map<String, dynamic> json) => _$PaymentsConfirmRequestDtoFromJson(json);

@override final  String paymentKey;
@override final  String paymentCode;
@override final  int amount;

/// Create a copy of PaymentsConfirmRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentsConfirmRequestDtoCopyWith<_PaymentsConfirmRequestDto> get copyWith => __$PaymentsConfirmRequestDtoCopyWithImpl<_PaymentsConfirmRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentsConfirmRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentsConfirmRequestDto&&(identical(other.paymentKey, paymentKey) || other.paymentKey == paymentKey)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentKey,paymentCode,amount);

@override
String toString() {
  return 'PaymentsConfirmRequestDto(paymentKey: $paymentKey, paymentCode: $paymentCode, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$PaymentsConfirmRequestDtoCopyWith<$Res> implements $PaymentsConfirmRequestDtoCopyWith<$Res> {
  factory _$PaymentsConfirmRequestDtoCopyWith(_PaymentsConfirmRequestDto value, $Res Function(_PaymentsConfirmRequestDto) _then) = __$PaymentsConfirmRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String paymentKey, String paymentCode, int amount
});




}
/// @nodoc
class __$PaymentsConfirmRequestDtoCopyWithImpl<$Res>
    implements _$PaymentsConfirmRequestDtoCopyWith<$Res> {
  __$PaymentsConfirmRequestDtoCopyWithImpl(this._self, this._then);

  final _PaymentsConfirmRequestDto _self;
  final $Res Function(_PaymentsConfirmRequestDto) _then;

/// Create a copy of PaymentsConfirmRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentKey = null,Object? paymentCode = null,Object? amount = null,}) {
  return _then(_PaymentsConfirmRequestDto(
paymentKey: null == paymentKey ? _self.paymentKey : paymentKey // ignore: cast_nullable_to_non_nullable
as String,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
