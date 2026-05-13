// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_info_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountInfoResponseWrapper {

 AccountInfoResponseDto get data;
/// Create a copy of AccountInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountInfoResponseWrapperCopyWith<AccountInfoResponseWrapper> get copyWith => _$AccountInfoResponseWrapperCopyWithImpl<AccountInfoResponseWrapper>(this as AccountInfoResponseWrapper, _$identity);

  /// Serializes this AccountInfoResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountInfoResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AccountInfoResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $AccountInfoResponseWrapperCopyWith<$Res>  {
  factory $AccountInfoResponseWrapperCopyWith(AccountInfoResponseWrapper value, $Res Function(AccountInfoResponseWrapper) _then) = _$AccountInfoResponseWrapperCopyWithImpl;
@useResult
$Res call({
 AccountInfoResponseDto data
});


$AccountInfoResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$AccountInfoResponseWrapperCopyWithImpl<$Res>
    implements $AccountInfoResponseWrapperCopyWith<$Res> {
  _$AccountInfoResponseWrapperCopyWithImpl(this._self, this._then);

  final AccountInfoResponseWrapper _self;
  final $Res Function(AccountInfoResponseWrapper) _then;

/// Create a copy of AccountInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AccountInfoResponseDto,
  ));
}
/// Create a copy of AccountInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountInfoResponseDtoCopyWith<$Res> get data {
  
  return $AccountInfoResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountInfoResponseWrapper].
extension AccountInfoResponseWrapperPatterns on AccountInfoResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountInfoResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountInfoResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _AccountInfoResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountInfoResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _AccountInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AccountInfoResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AccountInfoResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _AccountInfoResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AccountInfoResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _AccountInfoResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountInfoResponseWrapper implements AccountInfoResponseWrapper {
  const _AccountInfoResponseWrapper({required this.data});
  factory _AccountInfoResponseWrapper.fromJson(Map<String, dynamic> json) => _$AccountInfoResponseWrapperFromJson(json);

@override final  AccountInfoResponseDto data;

/// Create a copy of AccountInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountInfoResponseWrapperCopyWith<_AccountInfoResponseWrapper> get copyWith => __$AccountInfoResponseWrapperCopyWithImpl<_AccountInfoResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountInfoResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountInfoResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AccountInfoResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$AccountInfoResponseWrapperCopyWith<$Res> implements $AccountInfoResponseWrapperCopyWith<$Res> {
  factory _$AccountInfoResponseWrapperCopyWith(_AccountInfoResponseWrapper value, $Res Function(_AccountInfoResponseWrapper) _then) = __$AccountInfoResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 AccountInfoResponseDto data
});


@override $AccountInfoResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$AccountInfoResponseWrapperCopyWithImpl<$Res>
    implements _$AccountInfoResponseWrapperCopyWith<$Res> {
  __$AccountInfoResponseWrapperCopyWithImpl(this._self, this._then);

  final _AccountInfoResponseWrapper _self;
  final $Res Function(_AccountInfoResponseWrapper) _then;

/// Create a copy of AccountInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_AccountInfoResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AccountInfoResponseDto,
  ));
}

/// Create a copy of AccountInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountInfoResponseDtoCopyWith<$Res> get data {
  
  return $AccountInfoResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AccountInfoResponseDto {

 int get id; String get loginId; String get email; String get name; String get phone; String get role; String get status;
/// Create a copy of AccountInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountInfoResponseDtoCopyWith<AccountInfoResponseDto> get copyWith => _$AccountInfoResponseDtoCopyWithImpl<AccountInfoResponseDto>(this as AccountInfoResponseDto, _$identity);

  /// Serializes this AccountInfoResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountInfoResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,loginId,email,name,phone,role,status);

@override
String toString() {
  return 'AccountInfoResponseDto(id: $id, loginId: $loginId, email: $email, name: $name, phone: $phone, role: $role, status: $status)';
}


}

/// @nodoc
abstract mixin class $AccountInfoResponseDtoCopyWith<$Res>  {
  factory $AccountInfoResponseDtoCopyWith(AccountInfoResponseDto value, $Res Function(AccountInfoResponseDto) _then) = _$AccountInfoResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, String loginId, String email, String name, String phone, String role, String status
});




}
/// @nodoc
class _$AccountInfoResponseDtoCopyWithImpl<$Res>
    implements $AccountInfoResponseDtoCopyWith<$Res> {
  _$AccountInfoResponseDtoCopyWithImpl(this._self, this._then);

  final AccountInfoResponseDto _self;
  final $Res Function(AccountInfoResponseDto) _then;

/// Create a copy of AccountInfoResponseDto
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


/// Adds pattern-matching-related methods to [AccountInfoResponseDto].
extension AccountInfoResponseDtoPatterns on AccountInfoResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountInfoResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountInfoResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountInfoResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _AccountInfoResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountInfoResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _AccountInfoResponseDto() when $default != null:
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
case _AccountInfoResponseDto() when $default != null:
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
case _AccountInfoResponseDto():
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
case _AccountInfoResponseDto() when $default != null:
return $default(_that.id,_that.loginId,_that.email,_that.name,_that.phone,_that.role,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountInfoResponseDto implements AccountInfoResponseDto {
  const _AccountInfoResponseDto({required this.id, required this.loginId, required this.email, required this.name, required this.phone, required this.role, required this.status});
  factory _AccountInfoResponseDto.fromJson(Map<String, dynamic> json) => _$AccountInfoResponseDtoFromJson(json);

@override final  int id;
@override final  String loginId;
@override final  String email;
@override final  String name;
@override final  String phone;
@override final  String role;
@override final  String status;

/// Create a copy of AccountInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountInfoResponseDtoCopyWith<_AccountInfoResponseDto> get copyWith => __$AccountInfoResponseDtoCopyWithImpl<_AccountInfoResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountInfoResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountInfoResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,loginId,email,name,phone,role,status);

@override
String toString() {
  return 'AccountInfoResponseDto(id: $id, loginId: $loginId, email: $email, name: $name, phone: $phone, role: $role, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AccountInfoResponseDtoCopyWith<$Res> implements $AccountInfoResponseDtoCopyWith<$Res> {
  factory _$AccountInfoResponseDtoCopyWith(_AccountInfoResponseDto value, $Res Function(_AccountInfoResponseDto) _then) = __$AccountInfoResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String loginId, String email, String name, String phone, String role, String status
});




}
/// @nodoc
class __$AccountInfoResponseDtoCopyWithImpl<$Res>
    implements _$AccountInfoResponseDtoCopyWith<$Res> {
  __$AccountInfoResponseDtoCopyWithImpl(this._self, this._then);

  final _AccountInfoResponseDto _self;
  final $Res Function(_AccountInfoResponseDto) _then;

/// Create a copy of AccountInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? loginId = null,Object? email = null,Object? name = null,Object? phone = null,Object? role = null,Object? status = null,}) {
  return _then(_AccountInfoResponseDto(
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
