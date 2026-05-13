// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_confirm_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentsConfirmResponseWrapper {

 PaymentsConfirmResponseDto get data;
/// Create a copy of PaymentsConfirmResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsConfirmResponseWrapperCopyWith<PaymentsConfirmResponseWrapper> get copyWith => _$PaymentsConfirmResponseWrapperCopyWithImpl<PaymentsConfirmResponseWrapper>(this as PaymentsConfirmResponseWrapper, _$identity);

  /// Serializes this PaymentsConfirmResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsConfirmResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PaymentsConfirmResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $PaymentsConfirmResponseWrapperCopyWith<$Res>  {
  factory $PaymentsConfirmResponseWrapperCopyWith(PaymentsConfirmResponseWrapper value, $Res Function(PaymentsConfirmResponseWrapper) _then) = _$PaymentsConfirmResponseWrapperCopyWithImpl;
@useResult
$Res call({
 PaymentsConfirmResponseDto data
});


$PaymentsConfirmResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$PaymentsConfirmResponseWrapperCopyWithImpl<$Res>
    implements $PaymentsConfirmResponseWrapperCopyWith<$Res> {
  _$PaymentsConfirmResponseWrapperCopyWithImpl(this._self, this._then);

  final PaymentsConfirmResponseWrapper _self;
  final $Res Function(PaymentsConfirmResponseWrapper) _then;

/// Create a copy of PaymentsConfirmResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentsConfirmResponseDto,
  ));
}
/// Create a copy of PaymentsConfirmResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentsConfirmResponseDtoCopyWith<$Res> get data {
  
  return $PaymentsConfirmResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentsConfirmResponseWrapper].
extension PaymentsConfirmResponseWrapperPatterns on PaymentsConfirmResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentsConfirmResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentsConfirmResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentsConfirmResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _PaymentsConfirmResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentsConfirmResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentsConfirmResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentsConfirmResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentsConfirmResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentsConfirmResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _PaymentsConfirmResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentsConfirmResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _PaymentsConfirmResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentsConfirmResponseWrapper implements PaymentsConfirmResponseWrapper {
  const _PaymentsConfirmResponseWrapper({required this.data});
  factory _PaymentsConfirmResponseWrapper.fromJson(Map<String, dynamic> json) => _$PaymentsConfirmResponseWrapperFromJson(json);

@override final  PaymentsConfirmResponseDto data;

/// Create a copy of PaymentsConfirmResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentsConfirmResponseWrapperCopyWith<_PaymentsConfirmResponseWrapper> get copyWith => __$PaymentsConfirmResponseWrapperCopyWithImpl<_PaymentsConfirmResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentsConfirmResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentsConfirmResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PaymentsConfirmResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PaymentsConfirmResponseWrapperCopyWith<$Res> implements $PaymentsConfirmResponseWrapperCopyWith<$Res> {
  factory _$PaymentsConfirmResponseWrapperCopyWith(_PaymentsConfirmResponseWrapper value, $Res Function(_PaymentsConfirmResponseWrapper) _then) = __$PaymentsConfirmResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 PaymentsConfirmResponseDto data
});


@override $PaymentsConfirmResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$PaymentsConfirmResponseWrapperCopyWithImpl<$Res>
    implements _$PaymentsConfirmResponseWrapperCopyWith<$Res> {
  __$PaymentsConfirmResponseWrapperCopyWithImpl(this._self, this._then);

  final _PaymentsConfirmResponseWrapper _self;
  final $Res Function(_PaymentsConfirmResponseWrapper) _then;

/// Create a copy of PaymentsConfirmResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_PaymentsConfirmResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentsConfirmResponseDto,
  ));
}

/// Create a copy of PaymentsConfirmResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentsConfirmResponseDtoCopyWith<$Res> get data {
  
  return $PaymentsConfirmResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PaymentsConfirmResponseDto {

 int get paymentId;
/// Create a copy of PaymentsConfirmResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsConfirmResponseDtoCopyWith<PaymentsConfirmResponseDto> get copyWith => _$PaymentsConfirmResponseDtoCopyWithImpl<PaymentsConfirmResponseDto>(this as PaymentsConfirmResponseDto, _$identity);

  /// Serializes this PaymentsConfirmResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsConfirmResponseDto&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentId);

@override
String toString() {
  return 'PaymentsConfirmResponseDto(paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PaymentsConfirmResponseDtoCopyWith<$Res>  {
  factory $PaymentsConfirmResponseDtoCopyWith(PaymentsConfirmResponseDto value, $Res Function(PaymentsConfirmResponseDto) _then) = _$PaymentsConfirmResponseDtoCopyWithImpl;
@useResult
$Res call({
 int paymentId
});




}
/// @nodoc
class _$PaymentsConfirmResponseDtoCopyWithImpl<$Res>
    implements $PaymentsConfirmResponseDtoCopyWith<$Res> {
  _$PaymentsConfirmResponseDtoCopyWithImpl(this._self, this._then);

  final PaymentsConfirmResponseDto _self;
  final $Res Function(PaymentsConfirmResponseDto) _then;

/// Create a copy of PaymentsConfirmResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,}) {
  return _then(_self.copyWith(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentsConfirmResponseDto].
extension PaymentsConfirmResponseDtoPatterns on PaymentsConfirmResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentsConfirmResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentsConfirmResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentsConfirmResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentsConfirmResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentsConfirmResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentsConfirmResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int paymentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentsConfirmResponseDto() when $default != null:
return $default(_that.paymentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int paymentId)  $default,) {final _that = this;
switch (_that) {
case _PaymentsConfirmResponseDto():
return $default(_that.paymentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int paymentId)?  $default,) {final _that = this;
switch (_that) {
case _PaymentsConfirmResponseDto() when $default != null:
return $default(_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentsConfirmResponseDto implements PaymentsConfirmResponseDto {
  const _PaymentsConfirmResponseDto({required this.paymentId});
  factory _PaymentsConfirmResponseDto.fromJson(Map<String, dynamic> json) => _$PaymentsConfirmResponseDtoFromJson(json);

@override final  int paymentId;

/// Create a copy of PaymentsConfirmResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentsConfirmResponseDtoCopyWith<_PaymentsConfirmResponseDto> get copyWith => __$PaymentsConfirmResponseDtoCopyWithImpl<_PaymentsConfirmResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentsConfirmResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentsConfirmResponseDto&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentId);

@override
String toString() {
  return 'PaymentsConfirmResponseDto(paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class _$PaymentsConfirmResponseDtoCopyWith<$Res> implements $PaymentsConfirmResponseDtoCopyWith<$Res> {
  factory _$PaymentsConfirmResponseDtoCopyWith(_PaymentsConfirmResponseDto value, $Res Function(_PaymentsConfirmResponseDto) _then) = __$PaymentsConfirmResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int paymentId
});




}
/// @nodoc
class __$PaymentsConfirmResponseDtoCopyWithImpl<$Res>
    implements _$PaymentsConfirmResponseDtoCopyWith<$Res> {
  __$PaymentsConfirmResponseDtoCopyWithImpl(this._self, this._then);

  final _PaymentsConfirmResponseDto _self;
  final $Res Function(_PaymentsConfirmResponseDto) _then;

/// Create a copy of PaymentsConfirmResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,}) {
  return _then(_PaymentsConfirmResponseDto(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
