// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webview_tokens_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebviewTokensResponseWrapper {

 WebviewTokensResponseDto get data;
/// Create a copy of WebviewTokensResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebviewTokensResponseWrapperCopyWith<WebviewTokensResponseWrapper> get copyWith => _$WebviewTokensResponseWrapperCopyWithImpl<WebviewTokensResponseWrapper>(this as WebviewTokensResponseWrapper, _$identity);

  /// Serializes this WebviewTokensResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebviewTokensResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'WebviewTokensResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $WebviewTokensResponseWrapperCopyWith<$Res>  {
  factory $WebviewTokensResponseWrapperCopyWith(WebviewTokensResponseWrapper value, $Res Function(WebviewTokensResponseWrapper) _then) = _$WebviewTokensResponseWrapperCopyWithImpl;
@useResult
$Res call({
 WebviewTokensResponseDto data
});


$WebviewTokensResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$WebviewTokensResponseWrapperCopyWithImpl<$Res>
    implements $WebviewTokensResponseWrapperCopyWith<$Res> {
  _$WebviewTokensResponseWrapperCopyWithImpl(this._self, this._then);

  final WebviewTokensResponseWrapper _self;
  final $Res Function(WebviewTokensResponseWrapper) _then;

/// Create a copy of WebviewTokensResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WebviewTokensResponseDto,
  ));
}
/// Create a copy of WebviewTokensResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebviewTokensResponseDtoCopyWith<$Res> get data {
  
  return $WebviewTokensResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [WebviewTokensResponseWrapper].
extension WebviewTokensResponseWrapperPatterns on WebviewTokensResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebviewTokensResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebviewTokensResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebviewTokensResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _WebviewTokensResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebviewTokensResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _WebviewTokensResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WebviewTokensResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebviewTokensResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WebviewTokensResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _WebviewTokensResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WebviewTokensResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _WebviewTokensResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebviewTokensResponseWrapper implements WebviewTokensResponseWrapper {
  const _WebviewTokensResponseWrapper({required this.data});
  factory _WebviewTokensResponseWrapper.fromJson(Map<String, dynamic> json) => _$WebviewTokensResponseWrapperFromJson(json);

@override final  WebviewTokensResponseDto data;

/// Create a copy of WebviewTokensResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebviewTokensResponseWrapperCopyWith<_WebviewTokensResponseWrapper> get copyWith => __$WebviewTokensResponseWrapperCopyWithImpl<_WebviewTokensResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebviewTokensResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebviewTokensResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'WebviewTokensResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$WebviewTokensResponseWrapperCopyWith<$Res> implements $WebviewTokensResponseWrapperCopyWith<$Res> {
  factory _$WebviewTokensResponseWrapperCopyWith(_WebviewTokensResponseWrapper value, $Res Function(_WebviewTokensResponseWrapper) _then) = __$WebviewTokensResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 WebviewTokensResponseDto data
});


@override $WebviewTokensResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$WebviewTokensResponseWrapperCopyWithImpl<$Res>
    implements _$WebviewTokensResponseWrapperCopyWith<$Res> {
  __$WebviewTokensResponseWrapperCopyWithImpl(this._self, this._then);

  final _WebviewTokensResponseWrapper _self;
  final $Res Function(_WebviewTokensResponseWrapper) _then;

/// Create a copy of WebviewTokensResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_WebviewTokensResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WebviewTokensResponseDto,
  ));
}

/// Create a copy of WebviewTokensResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebviewTokensResponseDtoCopyWith<$Res> get data {
  
  return $WebviewTokensResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$WebviewTokensResponseDto {

 String get token;
/// Create a copy of WebviewTokensResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebviewTokensResponseDtoCopyWith<WebviewTokensResponseDto> get copyWith => _$WebviewTokensResponseDtoCopyWithImpl<WebviewTokensResponseDto>(this as WebviewTokensResponseDto, _$identity);

  /// Serializes this WebviewTokensResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebviewTokensResponseDto&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'WebviewTokensResponseDto(token: $token)';
}


}

/// @nodoc
abstract mixin class $WebviewTokensResponseDtoCopyWith<$Res>  {
  factory $WebviewTokensResponseDtoCopyWith(WebviewTokensResponseDto value, $Res Function(WebviewTokensResponseDto) _then) = _$WebviewTokensResponseDtoCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$WebviewTokensResponseDtoCopyWithImpl<$Res>
    implements $WebviewTokensResponseDtoCopyWith<$Res> {
  _$WebviewTokensResponseDtoCopyWithImpl(this._self, this._then);

  final WebviewTokensResponseDto _self;
  final $Res Function(WebviewTokensResponseDto) _then;

/// Create a copy of WebviewTokensResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WebviewTokensResponseDto].
extension WebviewTokensResponseDtoPatterns on WebviewTokensResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebviewTokensResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebviewTokensResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebviewTokensResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _WebviewTokensResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebviewTokensResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _WebviewTokensResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebviewTokensResponseDto() when $default != null:
return $default(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token)  $default,) {final _that = this;
switch (_that) {
case _WebviewTokensResponseDto():
return $default(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token)?  $default,) {final _that = this;
switch (_that) {
case _WebviewTokensResponseDto() when $default != null:
return $default(_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebviewTokensResponseDto implements WebviewTokensResponseDto {
  const _WebviewTokensResponseDto({required this.token});
  factory _WebviewTokensResponseDto.fromJson(Map<String, dynamic> json) => _$WebviewTokensResponseDtoFromJson(json);

@override final  String token;

/// Create a copy of WebviewTokensResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebviewTokensResponseDtoCopyWith<_WebviewTokensResponseDto> get copyWith => __$WebviewTokensResponseDtoCopyWithImpl<_WebviewTokensResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebviewTokensResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebviewTokensResponseDto&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'WebviewTokensResponseDto(token: $token)';
}


}

/// @nodoc
abstract mixin class _$WebviewTokensResponseDtoCopyWith<$Res> implements $WebviewTokensResponseDtoCopyWith<$Res> {
  factory _$WebviewTokensResponseDtoCopyWith(_WebviewTokensResponseDto value, $Res Function(_WebviewTokensResponseDto) _then) = __$WebviewTokensResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class __$WebviewTokensResponseDtoCopyWithImpl<$Res>
    implements _$WebviewTokensResponseDtoCopyWith<$Res> {
  __$WebviewTokensResponseDtoCopyWithImpl(this._self, this._then);

  final _WebviewTokensResponseDto _self;
  final $Res Function(_WebviewTokensResponseDto) _then;

/// Create a copy of WebviewTokensResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_WebviewTokensResponseDto(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
