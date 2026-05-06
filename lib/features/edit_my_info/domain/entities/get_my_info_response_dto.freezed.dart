// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_info_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMyInfoResponseWrapper {

 GetMyInfoResponseDto get data;
/// Create a copy of GetMyInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyInfoResponseWrapperCopyWith<GetMyInfoResponseWrapper> get copyWith => _$GetMyInfoResponseWrapperCopyWithImpl<GetMyInfoResponseWrapper>(this as GetMyInfoResponseWrapper, _$identity);

  /// Serializes this GetMyInfoResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyInfoResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'GetMyInfoResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetMyInfoResponseWrapperCopyWith<$Res>  {
  factory $GetMyInfoResponseWrapperCopyWith(GetMyInfoResponseWrapper value, $Res Function(GetMyInfoResponseWrapper) _then) = _$GetMyInfoResponseWrapperCopyWithImpl;
@useResult
$Res call({
 GetMyInfoResponseDto data
});


$GetMyInfoResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$GetMyInfoResponseWrapperCopyWithImpl<$Res>
    implements $GetMyInfoResponseWrapperCopyWith<$Res> {
  _$GetMyInfoResponseWrapperCopyWithImpl(this._self, this._then);

  final GetMyInfoResponseWrapper _self;
  final $Res Function(GetMyInfoResponseWrapper) _then;

/// Create a copy of GetMyInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetMyInfoResponseDto,
  ));
}
/// Create a copy of GetMyInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetMyInfoResponseDtoCopyWith<$Res> get data {
  
  return $GetMyInfoResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetMyInfoResponseWrapper].
extension GetMyInfoResponseWrapperPatterns on GetMyInfoResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMyInfoResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMyInfoResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _GetMyInfoResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMyInfoResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _GetMyInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GetMyInfoResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMyInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GetMyInfoResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _GetMyInfoResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GetMyInfoResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _GetMyInfoResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMyInfoResponseWrapper implements GetMyInfoResponseWrapper {
  const _GetMyInfoResponseWrapper({required this.data});
  factory _GetMyInfoResponseWrapper.fromJson(Map<String, dynamic> json) => _$GetMyInfoResponseWrapperFromJson(json);

@override final  GetMyInfoResponseDto data;

/// Create a copy of GetMyInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMyInfoResponseWrapperCopyWith<_GetMyInfoResponseWrapper> get copyWith => __$GetMyInfoResponseWrapperCopyWithImpl<_GetMyInfoResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMyInfoResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyInfoResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'GetMyInfoResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetMyInfoResponseWrapperCopyWith<$Res> implements $GetMyInfoResponseWrapperCopyWith<$Res> {
  factory _$GetMyInfoResponseWrapperCopyWith(_GetMyInfoResponseWrapper value, $Res Function(_GetMyInfoResponseWrapper) _then) = __$GetMyInfoResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 GetMyInfoResponseDto data
});


@override $GetMyInfoResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$GetMyInfoResponseWrapperCopyWithImpl<$Res>
    implements _$GetMyInfoResponseWrapperCopyWith<$Res> {
  __$GetMyInfoResponseWrapperCopyWithImpl(this._self, this._then);

  final _GetMyInfoResponseWrapper _self;
  final $Res Function(_GetMyInfoResponseWrapper) _then;

/// Create a copy of GetMyInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_GetMyInfoResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetMyInfoResponseDto,
  ));
}

/// Create a copy of GetMyInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetMyInfoResponseDtoCopyWith<$Res> get data {
  
  return $GetMyInfoResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GetMyInfoResponseDto {

 int get id; String get loginId; String get email; String get name; String get phone; String get role; String get status;
/// Create a copy of GetMyInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyInfoResponseDtoCopyWith<GetMyInfoResponseDto> get copyWith => _$GetMyInfoResponseDtoCopyWithImpl<GetMyInfoResponseDto>(this as GetMyInfoResponseDto, _$identity);

  /// Serializes this GetMyInfoResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyInfoResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,loginId,email,name,phone,role,status);

@override
String toString() {
  return 'GetMyInfoResponseDto(id: $id, loginId: $loginId, email: $email, name: $name, phone: $phone, role: $role, status: $status)';
}


}

/// @nodoc
abstract mixin class $GetMyInfoResponseDtoCopyWith<$Res>  {
  factory $GetMyInfoResponseDtoCopyWith(GetMyInfoResponseDto value, $Res Function(GetMyInfoResponseDto) _then) = _$GetMyInfoResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, String loginId, String email, String name, String phone, String role, String status
});




}
/// @nodoc
class _$GetMyInfoResponseDtoCopyWithImpl<$Res>
    implements $GetMyInfoResponseDtoCopyWith<$Res> {
  _$GetMyInfoResponseDtoCopyWithImpl(this._self, this._then);

  final GetMyInfoResponseDto _self;
  final $Res Function(GetMyInfoResponseDto) _then;

/// Create a copy of GetMyInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? loginId = null,Object? email = null,Object? name = null,Object? phone = null,Object? role = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetMyInfoResponseDto].
extension GetMyInfoResponseDtoPatterns on GetMyInfoResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMyInfoResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyInfoResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMyInfoResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetMyInfoResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMyInfoResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetMyInfoResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String loginId,  String email,  String name,  String phone,  String role,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMyInfoResponseDto() when $default != null:
return $default(_that.id,_that.loginId,_that.email,_that.name,_that.phone,_that.role,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String loginId,  String email,  String name,  String phone,  String role,  String status)  $default,) {final _that = this;
switch (_that) {
case _GetMyInfoResponseDto():
return $default(_that.id,_that.loginId,_that.email,_that.name,_that.phone,_that.role,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String loginId,  String email,  String name,  String phone,  String role,  String status)?  $default,) {final _that = this;
switch (_that) {
case _GetMyInfoResponseDto() when $default != null:
return $default(_that.id,_that.loginId,_that.email,_that.name,_that.phone,_that.role,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMyInfoResponseDto implements GetMyInfoResponseDto {
  const _GetMyInfoResponseDto({required this.id, required this.loginId, required this.email, required this.name, required this.phone, required this.role, required this.status});
  factory _GetMyInfoResponseDto.fromJson(Map<String, dynamic> json) => _$GetMyInfoResponseDtoFromJson(json);

@override final  int id;
@override final  String loginId;
@override final  String email;
@override final  String name;
@override final  String phone;
@override final  String role;
@override final  String status;

/// Create a copy of GetMyInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMyInfoResponseDtoCopyWith<_GetMyInfoResponseDto> get copyWith => __$GetMyInfoResponseDtoCopyWithImpl<_GetMyInfoResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMyInfoResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyInfoResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,loginId,email,name,phone,role,status);

@override
String toString() {
  return 'GetMyInfoResponseDto(id: $id, loginId: $loginId, email: $email, name: $name, phone: $phone, role: $role, status: $status)';
}


}

/// @nodoc
abstract mixin class _$GetMyInfoResponseDtoCopyWith<$Res> implements $GetMyInfoResponseDtoCopyWith<$Res> {
  factory _$GetMyInfoResponseDtoCopyWith(_GetMyInfoResponseDto value, $Res Function(_GetMyInfoResponseDto) _then) = __$GetMyInfoResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String loginId, String email, String name, String phone, String role, String status
});




}
/// @nodoc
class __$GetMyInfoResponseDtoCopyWithImpl<$Res>
    implements _$GetMyInfoResponseDtoCopyWith<$Res> {
  __$GetMyInfoResponseDtoCopyWithImpl(this._self, this._then);

  final _GetMyInfoResponseDto _self;
  final $Res Function(_GetMyInfoResponseDto) _then;

/// Create a copy of GetMyInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? loginId = null,Object? email = null,Object? name = null,Object? phone = null,Object? role = null,Object? status = null,}) {
  return _then(_GetMyInfoResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
