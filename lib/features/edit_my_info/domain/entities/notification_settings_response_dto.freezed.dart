// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationSettingsResponseWrapper {

 bool get success; NotificationSettingsResponseDto get data;
/// Create a copy of NotificationSettingsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSettingsResponseWrapperCopyWith<NotificationSettingsResponseWrapper> get copyWith => _$NotificationSettingsResponseWrapperCopyWithImpl<NotificationSettingsResponseWrapper>(this as NotificationSettingsResponseWrapper, _$identity);

  /// Serializes this NotificationSettingsResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSettingsResponseWrapper&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'NotificationSettingsResponseWrapper(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $NotificationSettingsResponseWrapperCopyWith<$Res>  {
  factory $NotificationSettingsResponseWrapperCopyWith(NotificationSettingsResponseWrapper value, $Res Function(NotificationSettingsResponseWrapper) _then) = _$NotificationSettingsResponseWrapperCopyWithImpl;
@useResult
$Res call({
 bool success, NotificationSettingsResponseDto data
});


$NotificationSettingsResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationSettingsResponseWrapperCopyWithImpl<$Res>
    implements $NotificationSettingsResponseWrapperCopyWith<$Res> {
  _$NotificationSettingsResponseWrapperCopyWithImpl(this._self, this._then);

  final NotificationSettingsResponseWrapper _self;
  final $Res Function(NotificationSettingsResponseWrapper) _then;

/// Create a copy of NotificationSettingsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationSettingsResponseDto,
  ));
}
/// Create a copy of NotificationSettingsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationSettingsResponseDtoCopyWith<$Res> get data {
  
  return $NotificationSettingsResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationSettingsResponseWrapper].
extension NotificationSettingsResponseWrapperPatterns on NotificationSettingsResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSettingsResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSettingsResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSettingsResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSettingsResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSettingsResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSettingsResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  NotificationSettingsResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSettingsResponseWrapper() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  NotificationSettingsResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _NotificationSettingsResponseWrapper():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  NotificationSettingsResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSettingsResponseWrapper() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationSettingsResponseWrapper implements NotificationSettingsResponseWrapper {
  const _NotificationSettingsResponseWrapper({this.success = false, required this.data});
  factory _NotificationSettingsResponseWrapper.fromJson(Map<String, dynamic> json) => _$NotificationSettingsResponseWrapperFromJson(json);

@override@JsonKey() final  bool success;
@override final  NotificationSettingsResponseDto data;

/// Create a copy of NotificationSettingsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSettingsResponseWrapperCopyWith<_NotificationSettingsResponseWrapper> get copyWith => __$NotificationSettingsResponseWrapperCopyWithImpl<_NotificationSettingsResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationSettingsResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSettingsResponseWrapper&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'NotificationSettingsResponseWrapper(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$NotificationSettingsResponseWrapperCopyWith<$Res> implements $NotificationSettingsResponseWrapperCopyWith<$Res> {
  factory _$NotificationSettingsResponseWrapperCopyWith(_NotificationSettingsResponseWrapper value, $Res Function(_NotificationSettingsResponseWrapper) _then) = __$NotificationSettingsResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 bool success, NotificationSettingsResponseDto data
});


@override $NotificationSettingsResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$NotificationSettingsResponseWrapperCopyWithImpl<$Res>
    implements _$NotificationSettingsResponseWrapperCopyWith<$Res> {
  __$NotificationSettingsResponseWrapperCopyWithImpl(this._self, this._then);

  final _NotificationSettingsResponseWrapper _self;
  final $Res Function(_NotificationSettingsResponseWrapper) _then;

/// Create a copy of NotificationSettingsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_NotificationSettingsResponseWrapper(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationSettingsResponseDto,
  ));
}

/// Create a copy of NotificationSettingsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationSettingsResponseDtoCopyWith<$Res> get data {
  
  return $NotificationSettingsResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NotificationSettingsResponseDto {

 bool get notificationEnabled;
/// Create a copy of NotificationSettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSettingsResponseDtoCopyWith<NotificationSettingsResponseDto> get copyWith => _$NotificationSettingsResponseDtoCopyWithImpl<NotificationSettingsResponseDto>(this as NotificationSettingsResponseDto, _$identity);

  /// Serializes this NotificationSettingsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSettingsResponseDto&&(identical(other.notificationEnabled, notificationEnabled) || other.notificationEnabled == notificationEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationEnabled);

@override
String toString() {
  return 'NotificationSettingsResponseDto(notificationEnabled: $notificationEnabled)';
}


}

/// @nodoc
abstract mixin class $NotificationSettingsResponseDtoCopyWith<$Res>  {
  factory $NotificationSettingsResponseDtoCopyWith(NotificationSettingsResponseDto value, $Res Function(NotificationSettingsResponseDto) _then) = _$NotificationSettingsResponseDtoCopyWithImpl;
@useResult
$Res call({
 bool notificationEnabled
});




}
/// @nodoc
class _$NotificationSettingsResponseDtoCopyWithImpl<$Res>
    implements $NotificationSettingsResponseDtoCopyWith<$Res> {
  _$NotificationSettingsResponseDtoCopyWithImpl(this._self, this._then);

  final NotificationSettingsResponseDto _self;
  final $Res Function(NotificationSettingsResponseDto) _then;

/// Create a copy of NotificationSettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationEnabled = null,}) {
  return _then(_self.copyWith(
notificationEnabled: null == notificationEnabled ? _self.notificationEnabled : notificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationSettingsResponseDto].
extension NotificationSettingsResponseDtoPatterns on NotificationSettingsResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSettingsResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSettingsResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSettingsResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSettingsResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSettingsResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSettingsResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool notificationEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSettingsResponseDto() when $default != null:
return $default(_that.notificationEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool notificationEnabled)  $default,) {final _that = this;
switch (_that) {
case _NotificationSettingsResponseDto():
return $default(_that.notificationEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool notificationEnabled)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSettingsResponseDto() when $default != null:
return $default(_that.notificationEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationSettingsResponseDto implements NotificationSettingsResponseDto {
  const _NotificationSettingsResponseDto({this.notificationEnabled = false});
  factory _NotificationSettingsResponseDto.fromJson(Map<String, dynamic> json) => _$NotificationSettingsResponseDtoFromJson(json);

@override@JsonKey() final  bool notificationEnabled;

/// Create a copy of NotificationSettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSettingsResponseDtoCopyWith<_NotificationSettingsResponseDto> get copyWith => __$NotificationSettingsResponseDtoCopyWithImpl<_NotificationSettingsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationSettingsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSettingsResponseDto&&(identical(other.notificationEnabled, notificationEnabled) || other.notificationEnabled == notificationEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationEnabled);

@override
String toString() {
  return 'NotificationSettingsResponseDto(notificationEnabled: $notificationEnabled)';
}


}

/// @nodoc
abstract mixin class _$NotificationSettingsResponseDtoCopyWith<$Res> implements $NotificationSettingsResponseDtoCopyWith<$Res> {
  factory _$NotificationSettingsResponseDtoCopyWith(_NotificationSettingsResponseDto value, $Res Function(_NotificationSettingsResponseDto) _then) = __$NotificationSettingsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 bool notificationEnabled
});




}
/// @nodoc
class __$NotificationSettingsResponseDtoCopyWithImpl<$Res>
    implements _$NotificationSettingsResponseDtoCopyWith<$Res> {
  __$NotificationSettingsResponseDtoCopyWithImpl(this._self, this._then);

  final _NotificationSettingsResponseDto _self;
  final $Res Function(_NotificationSettingsResponseDto) _then;

/// Create a copy of NotificationSettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationEnabled = null,}) {
  return _then(_NotificationSettingsResponseDto(
notificationEnabled: null == notificationEnabled ? _self.notificationEnabled : notificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
