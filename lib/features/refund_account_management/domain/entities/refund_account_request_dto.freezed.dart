// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_account_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefundAccountRequestDto {

 String get bankCode; String get accountNumber; String get accountHolder;
/// Create a copy of RefundAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundAccountRequestDtoCopyWith<RefundAccountRequestDto> get copyWith => _$RefundAccountRequestDtoCopyWithImpl<RefundAccountRequestDto>(this as RefundAccountRequestDto, _$identity);

  /// Serializes this RefundAccountRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundAccountRequestDto&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankCode,accountNumber,accountHolder);

@override
String toString() {
  return 'RefundAccountRequestDto(bankCode: $bankCode, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class $RefundAccountRequestDtoCopyWith<$Res>  {
  factory $RefundAccountRequestDtoCopyWith(RefundAccountRequestDto value, $Res Function(RefundAccountRequestDto) _then) = _$RefundAccountRequestDtoCopyWithImpl;
@useResult
$Res call({
 String bankCode, String accountNumber, String accountHolder
});




}
/// @nodoc
class _$RefundAccountRequestDtoCopyWithImpl<$Res>
    implements $RefundAccountRequestDtoCopyWith<$Res> {
  _$RefundAccountRequestDtoCopyWithImpl(this._self, this._then);

  final RefundAccountRequestDto _self;
  final $Res Function(RefundAccountRequestDto) _then;

/// Create a copy of RefundAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankCode = null,Object? accountNumber = null,Object? accountHolder = null,}) {
  return _then(_self.copyWith(
bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundAccountRequestDto].
extension RefundAccountRequestDtoPatterns on RefundAccountRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundAccountRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundAccountRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundAccountRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _RefundAccountRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundAccountRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _RefundAccountRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bankCode,  String accountNumber,  String accountHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundAccountRequestDto() when $default != null:
return $default(_that.bankCode,_that.accountNumber,_that.accountHolder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bankCode,  String accountNumber,  String accountHolder)  $default,) {final _that = this;
switch (_that) {
case _RefundAccountRequestDto():
return $default(_that.bankCode,_that.accountNumber,_that.accountHolder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bankCode,  String accountNumber,  String accountHolder)?  $default,) {final _that = this;
switch (_that) {
case _RefundAccountRequestDto() when $default != null:
return $default(_that.bankCode,_that.accountNumber,_that.accountHolder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundAccountRequestDto implements RefundAccountRequestDto {
  const _RefundAccountRequestDto({required this.bankCode, required this.accountNumber, required this.accountHolder});
  factory _RefundAccountRequestDto.fromJson(Map<String, dynamic> json) => _$RefundAccountRequestDtoFromJson(json);

@override final  String bankCode;
@override final  String accountNumber;
@override final  String accountHolder;

/// Create a copy of RefundAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundAccountRequestDtoCopyWith<_RefundAccountRequestDto> get copyWith => __$RefundAccountRequestDtoCopyWithImpl<_RefundAccountRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundAccountRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundAccountRequestDto&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankCode,accountNumber,accountHolder);

@override
String toString() {
  return 'RefundAccountRequestDto(bankCode: $bankCode, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class _$RefundAccountRequestDtoCopyWith<$Res> implements $RefundAccountRequestDtoCopyWith<$Res> {
  factory _$RefundAccountRequestDtoCopyWith(_RefundAccountRequestDto value, $Res Function(_RefundAccountRequestDto) _then) = __$RefundAccountRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String bankCode, String accountNumber, String accountHolder
});




}
/// @nodoc
class __$RefundAccountRequestDtoCopyWithImpl<$Res>
    implements _$RefundAccountRequestDtoCopyWith<$Res> {
  __$RefundAccountRequestDtoCopyWithImpl(this._self, this._then);

  final _RefundAccountRequestDto _self;
  final $Res Function(_RefundAccountRequestDto) _then;

/// Create a copy of RefundAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankCode = null,Object? accountNumber = null,Object? accountHolder = null,}) {
  return _then(_RefundAccountRequestDto(
bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
