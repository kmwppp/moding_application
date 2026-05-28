// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nice_identity_verification_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NiceIdentityVerificationResponseDto {

 bool get success; String get message; NiceIdentityVerificationResponseDataDto? get data;
/// Create a copy of NiceIdentityVerificationResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NiceIdentityVerificationResponseDtoCopyWith<NiceIdentityVerificationResponseDto> get copyWith => _$NiceIdentityVerificationResponseDtoCopyWithImpl<NiceIdentityVerificationResponseDto>(this as NiceIdentityVerificationResponseDto, _$identity);

  /// Serializes this NiceIdentityVerificationResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NiceIdentityVerificationResponseDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'NiceIdentityVerificationResponseDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $NiceIdentityVerificationResponseDtoCopyWith<$Res>  {
  factory $NiceIdentityVerificationResponseDtoCopyWith(NiceIdentityVerificationResponseDto value, $Res Function(NiceIdentityVerificationResponseDto) _then) = _$NiceIdentityVerificationResponseDtoCopyWithImpl;
@useResult
$Res call({
 bool success, String message, NiceIdentityVerificationResponseDataDto? data
});


$NiceIdentityVerificationResponseDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$NiceIdentityVerificationResponseDtoCopyWithImpl<$Res>
    implements $NiceIdentityVerificationResponseDtoCopyWith<$Res> {
  _$NiceIdentityVerificationResponseDtoCopyWithImpl(this._self, this._then);

  final NiceIdentityVerificationResponseDto _self;
  final $Res Function(NiceIdentityVerificationResponseDto) _then;

/// Create a copy of NiceIdentityVerificationResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NiceIdentityVerificationResponseDataDto?,
  ));
}
/// Create a copy of NiceIdentityVerificationResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NiceIdentityVerificationResponseDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NiceIdentityVerificationResponseDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NiceIdentityVerificationResponseDto].
extension NiceIdentityVerificationResponseDtoPatterns on NiceIdentityVerificationResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NiceIdentityVerificationResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NiceIdentityVerificationResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NiceIdentityVerificationResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  NiceIdentityVerificationResponseDataDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  NiceIdentityVerificationResponseDataDto? data)  $default,) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDto():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  NiceIdentityVerificationResponseDataDto? data)?  $default,) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NiceIdentityVerificationResponseDto implements NiceIdentityVerificationResponseDto {
  const _NiceIdentityVerificationResponseDto({this.success = false, this.message = '', this.data});
  factory _NiceIdentityVerificationResponseDto.fromJson(Map<String, dynamic> json) => _$NiceIdentityVerificationResponseDtoFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override final  NiceIdentityVerificationResponseDataDto? data;

/// Create a copy of NiceIdentityVerificationResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NiceIdentityVerificationResponseDtoCopyWith<_NiceIdentityVerificationResponseDto> get copyWith => __$NiceIdentityVerificationResponseDtoCopyWithImpl<_NiceIdentityVerificationResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NiceIdentityVerificationResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NiceIdentityVerificationResponseDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'NiceIdentityVerificationResponseDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$NiceIdentityVerificationResponseDtoCopyWith<$Res> implements $NiceIdentityVerificationResponseDtoCopyWith<$Res> {
  factory _$NiceIdentityVerificationResponseDtoCopyWith(_NiceIdentityVerificationResponseDto value, $Res Function(_NiceIdentityVerificationResponseDto) _then) = __$NiceIdentityVerificationResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, NiceIdentityVerificationResponseDataDto? data
});


@override $NiceIdentityVerificationResponseDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$NiceIdentityVerificationResponseDtoCopyWithImpl<$Res>
    implements _$NiceIdentityVerificationResponseDtoCopyWith<$Res> {
  __$NiceIdentityVerificationResponseDtoCopyWithImpl(this._self, this._then);

  final _NiceIdentityVerificationResponseDto _self;
  final $Res Function(_NiceIdentityVerificationResponseDto) _then;

/// Create a copy of NiceIdentityVerificationResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = freezed,}) {
  return _then(_NiceIdentityVerificationResponseDto(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NiceIdentityVerificationResponseDataDto?,
  ));
}

/// Create a copy of NiceIdentityVerificationResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NiceIdentityVerificationResponseDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NiceIdentityVerificationResponseDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NiceIdentityVerificationResponseDataDto {

 String get authUrl;
/// Create a copy of NiceIdentityVerificationResponseDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NiceIdentityVerificationResponseDataDtoCopyWith<NiceIdentityVerificationResponseDataDto> get copyWith => _$NiceIdentityVerificationResponseDataDtoCopyWithImpl<NiceIdentityVerificationResponseDataDto>(this as NiceIdentityVerificationResponseDataDto, _$identity);

  /// Serializes this NiceIdentityVerificationResponseDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NiceIdentityVerificationResponseDataDto&&(identical(other.authUrl, authUrl) || other.authUrl == authUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authUrl);

@override
String toString() {
  return 'NiceIdentityVerificationResponseDataDto(authUrl: $authUrl)';
}


}

/// @nodoc
abstract mixin class $NiceIdentityVerificationResponseDataDtoCopyWith<$Res>  {
  factory $NiceIdentityVerificationResponseDataDtoCopyWith(NiceIdentityVerificationResponseDataDto value, $Res Function(NiceIdentityVerificationResponseDataDto) _then) = _$NiceIdentityVerificationResponseDataDtoCopyWithImpl;
@useResult
$Res call({
 String authUrl
});




}
/// @nodoc
class _$NiceIdentityVerificationResponseDataDtoCopyWithImpl<$Res>
    implements $NiceIdentityVerificationResponseDataDtoCopyWith<$Res> {
  _$NiceIdentityVerificationResponseDataDtoCopyWithImpl(this._self, this._then);

  final NiceIdentityVerificationResponseDataDto _self;
  final $Res Function(NiceIdentityVerificationResponseDataDto) _then;

/// Create a copy of NiceIdentityVerificationResponseDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authUrl = null,}) {
  return _then(_self.copyWith(
authUrl: null == authUrl ? _self.authUrl : authUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NiceIdentityVerificationResponseDataDto].
extension NiceIdentityVerificationResponseDataDtoPatterns on NiceIdentityVerificationResponseDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NiceIdentityVerificationResponseDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NiceIdentityVerificationResponseDataDto value)  $default,){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NiceIdentityVerificationResponseDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String authUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDataDto() when $default != null:
return $default(_that.authUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String authUrl)  $default,) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDataDto():
return $default(_that.authUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String authUrl)?  $default,) {final _that = this;
switch (_that) {
case _NiceIdentityVerificationResponseDataDto() when $default != null:
return $default(_that.authUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NiceIdentityVerificationResponseDataDto implements NiceIdentityVerificationResponseDataDto {
  const _NiceIdentityVerificationResponseDataDto({this.authUrl = ''});
  factory _NiceIdentityVerificationResponseDataDto.fromJson(Map<String, dynamic> json) => _$NiceIdentityVerificationResponseDataDtoFromJson(json);

@override@JsonKey() final  String authUrl;

/// Create a copy of NiceIdentityVerificationResponseDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NiceIdentityVerificationResponseDataDtoCopyWith<_NiceIdentityVerificationResponseDataDto> get copyWith => __$NiceIdentityVerificationResponseDataDtoCopyWithImpl<_NiceIdentityVerificationResponseDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NiceIdentityVerificationResponseDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NiceIdentityVerificationResponseDataDto&&(identical(other.authUrl, authUrl) || other.authUrl == authUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authUrl);

@override
String toString() {
  return 'NiceIdentityVerificationResponseDataDto(authUrl: $authUrl)';
}


}

/// @nodoc
abstract mixin class _$NiceIdentityVerificationResponseDataDtoCopyWith<$Res> implements $NiceIdentityVerificationResponseDataDtoCopyWith<$Res> {
  factory _$NiceIdentityVerificationResponseDataDtoCopyWith(_NiceIdentityVerificationResponseDataDto value, $Res Function(_NiceIdentityVerificationResponseDataDto) _then) = __$NiceIdentityVerificationResponseDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String authUrl
});




}
/// @nodoc
class __$NiceIdentityVerificationResponseDataDtoCopyWithImpl<$Res>
    implements _$NiceIdentityVerificationResponseDataDtoCopyWith<$Res> {
  __$NiceIdentityVerificationResponseDataDtoCopyWithImpl(this._self, this._then);

  final _NiceIdentityVerificationResponseDataDto _self;
  final $Res Function(_NiceIdentityVerificationResponseDataDto) _then;

/// Create a copy of NiceIdentityVerificationResponseDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authUrl = null,}) {
  return _then(_NiceIdentityVerificationResponseDataDto(
authUrl: null == authUrl ? _self.authUrl : authUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
