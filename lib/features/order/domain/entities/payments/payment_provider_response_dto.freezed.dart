// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_provider_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentProviderResponseWrapper {

 PaymentProviderResponseDto get data;
/// Create a copy of PaymentProviderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentProviderResponseWrapperCopyWith<PaymentProviderResponseWrapper> get copyWith => _$PaymentProviderResponseWrapperCopyWithImpl<PaymentProviderResponseWrapper>(this as PaymentProviderResponseWrapper, _$identity);

  /// Serializes this PaymentProviderResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentProviderResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PaymentProviderResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $PaymentProviderResponseWrapperCopyWith<$Res>  {
  factory $PaymentProviderResponseWrapperCopyWith(PaymentProviderResponseWrapper value, $Res Function(PaymentProviderResponseWrapper) _then) = _$PaymentProviderResponseWrapperCopyWithImpl;
@useResult
$Res call({
 PaymentProviderResponseDto data
});


$PaymentProviderResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$PaymentProviderResponseWrapperCopyWithImpl<$Res>
    implements $PaymentProviderResponseWrapperCopyWith<$Res> {
  _$PaymentProviderResponseWrapperCopyWithImpl(this._self, this._then);

  final PaymentProviderResponseWrapper _self;
  final $Res Function(PaymentProviderResponseWrapper) _then;

/// Create a copy of PaymentProviderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentProviderResponseDto,
  ));
}
/// Create a copy of PaymentProviderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentProviderResponseDtoCopyWith<$Res> get data {
  
  return $PaymentProviderResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentProviderResponseWrapper].
extension PaymentProviderResponseWrapperPatterns on PaymentProviderResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentProviderResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentProviderResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentProviderResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _PaymentProviderResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentProviderResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentProviderResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentProviderResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentProviderResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentProviderResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _PaymentProviderResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentProviderResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _PaymentProviderResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentProviderResponseWrapper implements PaymentProviderResponseWrapper {
  const _PaymentProviderResponseWrapper({required this.data});
  factory _PaymentProviderResponseWrapper.fromJson(Map<String, dynamic> json) => _$PaymentProviderResponseWrapperFromJson(json);

@override final  PaymentProviderResponseDto data;

/// Create a copy of PaymentProviderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentProviderResponseWrapperCopyWith<_PaymentProviderResponseWrapper> get copyWith => __$PaymentProviderResponseWrapperCopyWithImpl<_PaymentProviderResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentProviderResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentProviderResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PaymentProviderResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PaymentProviderResponseWrapperCopyWith<$Res> implements $PaymentProviderResponseWrapperCopyWith<$Res> {
  factory _$PaymentProviderResponseWrapperCopyWith(_PaymentProviderResponseWrapper value, $Res Function(_PaymentProviderResponseWrapper) _then) = __$PaymentProviderResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 PaymentProviderResponseDto data
});


@override $PaymentProviderResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$PaymentProviderResponseWrapperCopyWithImpl<$Res>
    implements _$PaymentProviderResponseWrapperCopyWith<$Res> {
  __$PaymentProviderResponseWrapperCopyWithImpl(this._self, this._then);

  final _PaymentProviderResponseWrapper _self;
  final $Res Function(_PaymentProviderResponseWrapper) _then;

/// Create a copy of PaymentProviderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_PaymentProviderResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentProviderResponseDto,
  ));
}

/// Create a copy of PaymentProviderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentProviderResponseDtoCopyWith<$Res> get data {
  
  return $PaymentProviderResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PaymentProviderResponseDto {

@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) PgProvider get pgProvider;
/// Create a copy of PaymentProviderResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentProviderResponseDtoCopyWith<PaymentProviderResponseDto> get copyWith => _$PaymentProviderResponseDtoCopyWithImpl<PaymentProviderResponseDto>(this as PaymentProviderResponseDto, _$identity);

  /// Serializes this PaymentProviderResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentProviderResponseDto&&(identical(other.pgProvider, pgProvider) || other.pgProvider == pgProvider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pgProvider);

@override
String toString() {
  return 'PaymentProviderResponseDto(pgProvider: $pgProvider)';
}


}

/// @nodoc
abstract mixin class $PaymentProviderResponseDtoCopyWith<$Res>  {
  factory $PaymentProviderResponseDtoCopyWith(PaymentProviderResponseDto value, $Res Function(PaymentProviderResponseDto) _then) = _$PaymentProviderResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) PgProvider pgProvider
});




}
/// @nodoc
class _$PaymentProviderResponseDtoCopyWithImpl<$Res>
    implements $PaymentProviderResponseDtoCopyWith<$Res> {
  _$PaymentProviderResponseDtoCopyWithImpl(this._self, this._then);

  final PaymentProviderResponseDto _self;
  final $Res Function(PaymentProviderResponseDto) _then;

/// Create a copy of PaymentProviderResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pgProvider = null,}) {
  return _then(_self.copyWith(
pgProvider: null == pgProvider ? _self.pgProvider : pgProvider // ignore: cast_nullable_to_non_nullable
as PgProvider,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentProviderResponseDto].
extension PaymentProviderResponseDtoPatterns on PaymentProviderResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentProviderResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentProviderResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentProviderResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentProviderResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentProviderResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentProviderResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson)  PgProvider pgProvider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentProviderResponseDto() when $default != null:
return $default(_that.pgProvider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson)  PgProvider pgProvider)  $default,) {final _that = this;
switch (_that) {
case _PaymentProviderResponseDto():
return $default(_that.pgProvider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson)  PgProvider pgProvider)?  $default,) {final _that = this;
switch (_that) {
case _PaymentProviderResponseDto() when $default != null:
return $default(_that.pgProvider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentProviderResponseDto implements PaymentProviderResponseDto {
  const _PaymentProviderResponseDto({@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) required this.pgProvider});
  factory _PaymentProviderResponseDto.fromJson(Map<String, dynamic> json) => _$PaymentProviderResponseDtoFromJson(json);

@override@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) final  PgProvider pgProvider;

/// Create a copy of PaymentProviderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentProviderResponseDtoCopyWith<_PaymentProviderResponseDto> get copyWith => __$PaymentProviderResponseDtoCopyWithImpl<_PaymentProviderResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentProviderResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentProviderResponseDto&&(identical(other.pgProvider, pgProvider) || other.pgProvider == pgProvider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pgProvider);

@override
String toString() {
  return 'PaymentProviderResponseDto(pgProvider: $pgProvider)';
}


}

/// @nodoc
abstract mixin class _$PaymentProviderResponseDtoCopyWith<$Res> implements $PaymentProviderResponseDtoCopyWith<$Res> {
  factory _$PaymentProviderResponseDtoCopyWith(_PaymentProviderResponseDto value, $Res Function(_PaymentProviderResponseDto) _then) = __$PaymentProviderResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) PgProvider pgProvider
});




}
/// @nodoc
class __$PaymentProviderResponseDtoCopyWithImpl<$Res>
    implements _$PaymentProviderResponseDtoCopyWith<$Res> {
  __$PaymentProviderResponseDtoCopyWithImpl(this._self, this._then);

  final _PaymentProviderResponseDto _self;
  final $Res Function(_PaymentProviderResponseDto) _then;

/// Create a copy of PaymentProviderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pgProvider = null,}) {
  return _then(_PaymentProviderResponseDto(
pgProvider: null == pgProvider ? _self.pgProvider : pgProvider // ignore: cast_nullable_to_non_nullable
as PgProvider,
  ));
}


}

// dart format on
