// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_account_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefundAccountResponseWrapper {

 RefundAccountResponseDto get data;
/// Create a copy of RefundAccountResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundAccountResponseWrapperCopyWith<RefundAccountResponseWrapper> get copyWith => _$RefundAccountResponseWrapperCopyWithImpl<RefundAccountResponseWrapper>(this as RefundAccountResponseWrapper, _$identity);

  /// Serializes this RefundAccountResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundAccountResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RefundAccountResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $RefundAccountResponseWrapperCopyWith<$Res>  {
  factory $RefundAccountResponseWrapperCopyWith(RefundAccountResponseWrapper value, $Res Function(RefundAccountResponseWrapper) _then) = _$RefundAccountResponseWrapperCopyWithImpl;
@useResult
$Res call({
 RefundAccountResponseDto data
});


$RefundAccountResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$RefundAccountResponseWrapperCopyWithImpl<$Res>
    implements $RefundAccountResponseWrapperCopyWith<$Res> {
  _$RefundAccountResponseWrapperCopyWithImpl(this._self, this._then);

  final RefundAccountResponseWrapper _self;
  final $Res Function(RefundAccountResponseWrapper) _then;

/// Create a copy of RefundAccountResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RefundAccountResponseDto,
  ));
}
/// Create a copy of RefundAccountResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefundAccountResponseDtoCopyWith<$Res> get data {
  
  return $RefundAccountResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RefundAccountResponseWrapper].
extension RefundAccountResponseWrapperPatterns on RefundAccountResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundAccountResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundAccountResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundAccountResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _RefundAccountResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundAccountResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _RefundAccountResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RefundAccountResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundAccountResponseWrapper() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RefundAccountResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _RefundAccountResponseWrapper():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RefundAccountResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _RefundAccountResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundAccountResponseWrapper implements RefundAccountResponseWrapper {
  const _RefundAccountResponseWrapper({required this.data});
  factory _RefundAccountResponseWrapper.fromJson(Map<String, dynamic> json) => _$RefundAccountResponseWrapperFromJson(json);

@override final  RefundAccountResponseDto data;

/// Create a copy of RefundAccountResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundAccountResponseWrapperCopyWith<_RefundAccountResponseWrapper> get copyWith => __$RefundAccountResponseWrapperCopyWithImpl<_RefundAccountResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundAccountResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundAccountResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RefundAccountResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$RefundAccountResponseWrapperCopyWith<$Res> implements $RefundAccountResponseWrapperCopyWith<$Res> {
  factory _$RefundAccountResponseWrapperCopyWith(_RefundAccountResponseWrapper value, $Res Function(_RefundAccountResponseWrapper) _then) = __$RefundAccountResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 RefundAccountResponseDto data
});


@override $RefundAccountResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$RefundAccountResponseWrapperCopyWithImpl<$Res>
    implements _$RefundAccountResponseWrapperCopyWith<$Res> {
  __$RefundAccountResponseWrapperCopyWithImpl(this._self, this._then);

  final _RefundAccountResponseWrapper _self;
  final $Res Function(_RefundAccountResponseWrapper) _then;

/// Create a copy of RefundAccountResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_RefundAccountResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RefundAccountResponseDto,
  ));
}

/// Create a copy of RefundAccountResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefundAccountResponseDtoCopyWith<$Res> get data {
  
  return $RefundAccountResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$RefundAccountResponseDto {

 String get bankCode; String get bankName; String get accountNumber; String get accountHolder;
/// Create a copy of RefundAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundAccountResponseDtoCopyWith<RefundAccountResponseDto> get copyWith => _$RefundAccountResponseDtoCopyWithImpl<RefundAccountResponseDto>(this as RefundAccountResponseDto, _$identity);

  /// Serializes this RefundAccountResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundAccountResponseDto&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankCode,bankName,accountNumber,accountHolder);

@override
String toString() {
  return 'RefundAccountResponseDto(bankCode: $bankCode, bankName: $bankName, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class $RefundAccountResponseDtoCopyWith<$Res>  {
  factory $RefundAccountResponseDtoCopyWith(RefundAccountResponseDto value, $Res Function(RefundAccountResponseDto) _then) = _$RefundAccountResponseDtoCopyWithImpl;
@useResult
$Res call({
 String bankCode, String bankName, String accountNumber, String accountHolder
});




}
/// @nodoc
class _$RefundAccountResponseDtoCopyWithImpl<$Res>
    implements $RefundAccountResponseDtoCopyWith<$Res> {
  _$RefundAccountResponseDtoCopyWithImpl(this._self, this._then);

  final RefundAccountResponseDto _self;
  final $Res Function(RefundAccountResponseDto) _then;

/// Create a copy of RefundAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankCode = null,Object? bankName = null,Object? accountNumber = null,Object? accountHolder = null,}) {
  return _then(_self.copyWith(
bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundAccountResponseDto].
extension RefundAccountResponseDtoPatterns on RefundAccountResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundAccountResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundAccountResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _RefundAccountResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundAccountResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _RefundAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bankCode,  String bankName,  String accountNumber,  String accountHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundAccountResponseDto() when $default != null:
return $default(_that.bankCode,_that.bankName,_that.accountNumber,_that.accountHolder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bankCode,  String bankName,  String accountNumber,  String accountHolder)  $default,) {final _that = this;
switch (_that) {
case _RefundAccountResponseDto():
return $default(_that.bankCode,_that.bankName,_that.accountNumber,_that.accountHolder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bankCode,  String bankName,  String accountNumber,  String accountHolder)?  $default,) {final _that = this;
switch (_that) {
case _RefundAccountResponseDto() when $default != null:
return $default(_that.bankCode,_that.bankName,_that.accountNumber,_that.accountHolder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundAccountResponseDto implements RefundAccountResponseDto {
  const _RefundAccountResponseDto({required this.bankCode, required this.bankName, required this.accountNumber, required this.accountHolder});
  factory _RefundAccountResponseDto.fromJson(Map<String, dynamic> json) => _$RefundAccountResponseDtoFromJson(json);

@override final  String bankCode;
@override final  String bankName;
@override final  String accountNumber;
@override final  String accountHolder;

/// Create a copy of RefundAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundAccountResponseDtoCopyWith<_RefundAccountResponseDto> get copyWith => __$RefundAccountResponseDtoCopyWithImpl<_RefundAccountResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundAccountResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundAccountResponseDto&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankCode,bankName,accountNumber,accountHolder);

@override
String toString() {
  return 'RefundAccountResponseDto(bankCode: $bankCode, bankName: $bankName, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class _$RefundAccountResponseDtoCopyWith<$Res> implements $RefundAccountResponseDtoCopyWith<$Res> {
  factory _$RefundAccountResponseDtoCopyWith(_RefundAccountResponseDto value, $Res Function(_RefundAccountResponseDto) _then) = __$RefundAccountResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String bankCode, String bankName, String accountNumber, String accountHolder
});




}
/// @nodoc
class __$RefundAccountResponseDtoCopyWithImpl<$Res>
    implements _$RefundAccountResponseDtoCopyWith<$Res> {
  __$RefundAccountResponseDtoCopyWithImpl(this._self, this._then);

  final _RefundAccountResponseDto _self;
  final $Res Function(_RefundAccountResponseDto) _then;

/// Create a copy of RefundAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankCode = null,Object? bankName = null,Object? accountNumber = null,Object? accountHolder = null,}) {
  return _then(_RefundAccountResponseDto(
bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
