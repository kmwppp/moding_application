// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reauth_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReauthResponseWrapper {

 ReauthResponseDto get data;
/// Create a copy of ReauthResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReauthResponseWrapperCopyWith<ReauthResponseWrapper> get copyWith => _$ReauthResponseWrapperCopyWithImpl<ReauthResponseWrapper>(this as ReauthResponseWrapper, _$identity);

  /// Serializes this ReauthResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ReauthResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $ReauthResponseWrapperCopyWith<$Res>  {
  factory $ReauthResponseWrapperCopyWith(ReauthResponseWrapper value, $Res Function(ReauthResponseWrapper) _then) = _$ReauthResponseWrapperCopyWithImpl;
@useResult
$Res call({
 ReauthResponseDto data
});


$ReauthResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$ReauthResponseWrapperCopyWithImpl<$Res>
    implements $ReauthResponseWrapperCopyWith<$Res> {
  _$ReauthResponseWrapperCopyWithImpl(this._self, this._then);

  final ReauthResponseWrapper _self;
  final $Res Function(ReauthResponseWrapper) _then;

/// Create a copy of ReauthResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReauthResponseDto,
  ));
}
/// Create a copy of ReauthResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReauthResponseDtoCopyWith<$Res> get data {
  
  return $ReauthResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReauthResponseWrapper].
extension ReauthResponseWrapperPatterns on ReauthResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReauthResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReauthResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReauthResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ReauthResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReauthResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ReauthResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReauthResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReauthResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReauthResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _ReauthResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReauthResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _ReauthResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReauthResponseWrapper implements ReauthResponseWrapper {
  const _ReauthResponseWrapper({required this.data});
  factory _ReauthResponseWrapper.fromJson(Map<String, dynamic> json) => _$ReauthResponseWrapperFromJson(json);

@override final  ReauthResponseDto data;

/// Create a copy of ReauthResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReauthResponseWrapperCopyWith<_ReauthResponseWrapper> get copyWith => __$ReauthResponseWrapperCopyWithImpl<_ReauthResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReauthResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReauthResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ReauthResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ReauthResponseWrapperCopyWith<$Res> implements $ReauthResponseWrapperCopyWith<$Res> {
  factory _$ReauthResponseWrapperCopyWith(_ReauthResponseWrapper value, $Res Function(_ReauthResponseWrapper) _then) = __$ReauthResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 ReauthResponseDto data
});


@override $ReauthResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$ReauthResponseWrapperCopyWithImpl<$Res>
    implements _$ReauthResponseWrapperCopyWith<$Res> {
  __$ReauthResponseWrapperCopyWithImpl(this._self, this._then);

  final _ReauthResponseWrapper _self;
  final $Res Function(_ReauthResponseWrapper) _then;

/// Create a copy of ReauthResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ReauthResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReauthResponseDto,
  ));
}

/// Create a copy of ReauthResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReauthResponseDtoCopyWith<$Res> get data {
  
  return $ReauthResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ReauthResponseDto {

 String get reauthKey;
/// Create a copy of ReauthResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReauthResponseDtoCopyWith<ReauthResponseDto> get copyWith => _$ReauthResponseDtoCopyWithImpl<ReauthResponseDto>(this as ReauthResponseDto, _$identity);

  /// Serializes this ReauthResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthResponseDto&&(identical(other.reauthKey, reauthKey) || other.reauthKey == reauthKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reauthKey);

@override
String toString() {
  return 'ReauthResponseDto(reauthKey: $reauthKey)';
}


}

/// @nodoc
abstract mixin class $ReauthResponseDtoCopyWith<$Res>  {
  factory $ReauthResponseDtoCopyWith(ReauthResponseDto value, $Res Function(ReauthResponseDto) _then) = _$ReauthResponseDtoCopyWithImpl;
@useResult
$Res call({
 String reauthKey
});




}
/// @nodoc
class _$ReauthResponseDtoCopyWithImpl<$Res>
    implements $ReauthResponseDtoCopyWith<$Res> {
  _$ReauthResponseDtoCopyWithImpl(this._self, this._then);

  final ReauthResponseDto _self;
  final $Res Function(ReauthResponseDto) _then;

/// Create a copy of ReauthResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reauthKey = null,}) {
  return _then(_self.copyWith(
reauthKey: null == reauthKey ? _self.reauthKey : reauthKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReauthResponseDto].
extension ReauthResponseDtoPatterns on ReauthResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReauthResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReauthResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReauthResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ReauthResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReauthResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReauthResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reauthKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReauthResponseDto() when $default != null:
return $default(_that.reauthKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reauthKey)  $default,) {final _that = this;
switch (_that) {
case _ReauthResponseDto():
return $default(_that.reauthKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reauthKey)?  $default,) {final _that = this;
switch (_that) {
case _ReauthResponseDto() when $default != null:
return $default(_that.reauthKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReauthResponseDto implements ReauthResponseDto {
  const _ReauthResponseDto({required this.reauthKey});
  factory _ReauthResponseDto.fromJson(Map<String, dynamic> json) => _$ReauthResponseDtoFromJson(json);

@override final  String reauthKey;

/// Create a copy of ReauthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReauthResponseDtoCopyWith<_ReauthResponseDto> get copyWith => __$ReauthResponseDtoCopyWithImpl<_ReauthResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReauthResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReauthResponseDto&&(identical(other.reauthKey, reauthKey) || other.reauthKey == reauthKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reauthKey);

@override
String toString() {
  return 'ReauthResponseDto(reauthKey: $reauthKey)';
}


}

/// @nodoc
abstract mixin class _$ReauthResponseDtoCopyWith<$Res> implements $ReauthResponseDtoCopyWith<$Res> {
  factory _$ReauthResponseDtoCopyWith(_ReauthResponseDto value, $Res Function(_ReauthResponseDto) _then) = __$ReauthResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String reauthKey
});




}
/// @nodoc
class __$ReauthResponseDtoCopyWithImpl<$Res>
    implements _$ReauthResponseDtoCopyWith<$Res> {
  __$ReauthResponseDtoCopyWithImpl(this._self, this._then);

  final _ReauthResponseDto _self;
  final $Res Function(_ReauthResponseDto) _then;

/// Create a copy of ReauthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reauthKey = null,}) {
  return _then(_ReauthResponseDto(
reauthKey: null == reauthKey ? _self.reauthKey : reauthKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
