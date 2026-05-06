// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_store_info_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMyStoreInfoResponseWrapper {

 GetMyStoreInfoResponseDto get data;
/// Create a copy of GetMyStoreInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyStoreInfoResponseWrapperCopyWith<GetMyStoreInfoResponseWrapper> get copyWith => _$GetMyStoreInfoResponseWrapperCopyWithImpl<GetMyStoreInfoResponseWrapper>(this as GetMyStoreInfoResponseWrapper, _$identity);

  /// Serializes this GetMyStoreInfoResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyStoreInfoResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'GetMyStoreInfoResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetMyStoreInfoResponseWrapperCopyWith<$Res>  {
  factory $GetMyStoreInfoResponseWrapperCopyWith(GetMyStoreInfoResponseWrapper value, $Res Function(GetMyStoreInfoResponseWrapper) _then) = _$GetMyStoreInfoResponseWrapperCopyWithImpl;
@useResult
$Res call({
 GetMyStoreInfoResponseDto data
});


$GetMyStoreInfoResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$GetMyStoreInfoResponseWrapperCopyWithImpl<$Res>
    implements $GetMyStoreInfoResponseWrapperCopyWith<$Res> {
  _$GetMyStoreInfoResponseWrapperCopyWithImpl(this._self, this._then);

  final GetMyStoreInfoResponseWrapper _self;
  final $Res Function(GetMyStoreInfoResponseWrapper) _then;

/// Create a copy of GetMyStoreInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetMyStoreInfoResponseDto,
  ));
}
/// Create a copy of GetMyStoreInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetMyStoreInfoResponseDtoCopyWith<$Res> get data {
  
  return $GetMyStoreInfoResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetMyStoreInfoResponseWrapper].
extension GetMyStoreInfoResponseWrapperPatterns on GetMyStoreInfoResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMyStoreInfoResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMyStoreInfoResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMyStoreInfoResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GetMyStoreInfoResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GetMyStoreInfoResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GetMyStoreInfoResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMyStoreInfoResponseWrapper implements GetMyStoreInfoResponseWrapper {
  const _GetMyStoreInfoResponseWrapper({required this.data});
  factory _GetMyStoreInfoResponseWrapper.fromJson(Map<String, dynamic> json) => _$GetMyStoreInfoResponseWrapperFromJson(json);

@override final  GetMyStoreInfoResponseDto data;

/// Create a copy of GetMyStoreInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMyStoreInfoResponseWrapperCopyWith<_GetMyStoreInfoResponseWrapper> get copyWith => __$GetMyStoreInfoResponseWrapperCopyWithImpl<_GetMyStoreInfoResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMyStoreInfoResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyStoreInfoResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'GetMyStoreInfoResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetMyStoreInfoResponseWrapperCopyWith<$Res> implements $GetMyStoreInfoResponseWrapperCopyWith<$Res> {
  factory _$GetMyStoreInfoResponseWrapperCopyWith(_GetMyStoreInfoResponseWrapper value, $Res Function(_GetMyStoreInfoResponseWrapper) _then) = __$GetMyStoreInfoResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 GetMyStoreInfoResponseDto data
});


@override $GetMyStoreInfoResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$GetMyStoreInfoResponseWrapperCopyWithImpl<$Res>
    implements _$GetMyStoreInfoResponseWrapperCopyWith<$Res> {
  __$GetMyStoreInfoResponseWrapperCopyWithImpl(this._self, this._then);

  final _GetMyStoreInfoResponseWrapper _self;
  final $Res Function(_GetMyStoreInfoResponseWrapper) _then;

/// Create a copy of GetMyStoreInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_GetMyStoreInfoResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetMyStoreInfoResponseDto,
  ));
}

/// Create a copy of GetMyStoreInfoResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetMyStoreInfoResponseDtoCopyWith<$Res> get data {
  
  return $GetMyStoreInfoResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GetMyStoreInfoResponseDto {

 int get userId; String get loginId; String get email; String get phone; String get role; String get status; int get id; String get businessName; String get ownerName; String get zipCode; String get address; String get addressDetail; String get businessNumber; String get businessType; int get businessCategoryId; String get businessCategoryName; DateTime get createdAt;
/// Create a copy of GetMyStoreInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyStoreInfoResponseDtoCopyWith<GetMyStoreInfoResponseDto> get copyWith => _$GetMyStoreInfoResponseDtoCopyWithImpl<GetMyStoreInfoResponseDto>(this as GetMyStoreInfoResponseDto, _$identity);

  /// Serializes this GetMyStoreInfoResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyStoreInfoResponseDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.id, id) || other.id == id)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.businessNumber, businessNumber) || other.businessNumber == businessNumber)&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.businessCategoryId, businessCategoryId) || other.businessCategoryId == businessCategoryId)&&(identical(other.businessCategoryName, businessCategoryName) || other.businessCategoryName == businessCategoryName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,loginId,email,phone,role,status,id,businessName,ownerName,zipCode,address,addressDetail,businessNumber,businessType,businessCategoryId,businessCategoryName,createdAt);

@override
String toString() {
  return 'GetMyStoreInfoResponseDto(userId: $userId, loginId: $loginId, email: $email, phone: $phone, role: $role, status: $status, id: $id, businessName: $businessName, ownerName: $ownerName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, businessNumber: $businessNumber, businessType: $businessType, businessCategoryId: $businessCategoryId, businessCategoryName: $businessCategoryName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $GetMyStoreInfoResponseDtoCopyWith<$Res>  {
  factory $GetMyStoreInfoResponseDtoCopyWith(GetMyStoreInfoResponseDto value, $Res Function(GetMyStoreInfoResponseDto) _then) = _$GetMyStoreInfoResponseDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String loginId, String email, String phone, String role, String status, int id, String businessName, String ownerName, String zipCode, String address, String addressDetail, String businessNumber, String businessType, int businessCategoryId, String businessCategoryName, DateTime createdAt
});




}
/// @nodoc
class _$GetMyStoreInfoResponseDtoCopyWithImpl<$Res>
    implements $GetMyStoreInfoResponseDtoCopyWith<$Res> {
  _$GetMyStoreInfoResponseDtoCopyWithImpl(this._self, this._then);

  final GetMyStoreInfoResponseDto _self;
  final $Res Function(GetMyStoreInfoResponseDto) _then;

/// Create a copy of GetMyStoreInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? loginId = null,Object? email = null,Object? phone = null,Object? role = null,Object? status = null,Object? id = null,Object? businessName = null,Object? ownerName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? businessNumber = null,Object? businessType = null,Object? businessCategoryId = null,Object? businessCategoryName = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: null == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String,businessNumber: null == businessNumber ? _self.businessNumber : businessNumber // ignore: cast_nullable_to_non_nullable
as String,businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as String,businessCategoryId: null == businessCategoryId ? _self.businessCategoryId : businessCategoryId // ignore: cast_nullable_to_non_nullable
as int,businessCategoryName: null == businessCategoryName ? _self.businessCategoryName : businessCategoryName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [GetMyStoreInfoResponseDto].
extension GetMyStoreInfoResponseDtoPatterns on GetMyStoreInfoResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMyStoreInfoResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMyStoreInfoResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMyStoreInfoResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String loginId,  String email,  String phone,  String role,  String status,  int id,  String businessName,  String ownerName,  String zipCode,  String address,  String addressDetail,  String businessNumber,  String businessType,  int businessCategoryId,  String businessCategoryName,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseDto() when $default != null:
return $default(_that.userId,_that.loginId,_that.email,_that.phone,_that.role,_that.status,_that.id,_that.businessName,_that.ownerName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.businessType,_that.businessCategoryId,_that.businessCategoryName,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String loginId,  String email,  String phone,  String role,  String status,  int id,  String businessName,  String ownerName,  String zipCode,  String address,  String addressDetail,  String businessNumber,  String businessType,  int businessCategoryId,  String businessCategoryName,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseDto():
return $default(_that.userId,_that.loginId,_that.email,_that.phone,_that.role,_that.status,_that.id,_that.businessName,_that.ownerName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.businessType,_that.businessCategoryId,_that.businessCategoryName,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String loginId,  String email,  String phone,  String role,  String status,  int id,  String businessName,  String ownerName,  String zipCode,  String address,  String addressDetail,  String businessNumber,  String businessType,  int businessCategoryId,  String businessCategoryName,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _GetMyStoreInfoResponseDto() when $default != null:
return $default(_that.userId,_that.loginId,_that.email,_that.phone,_that.role,_that.status,_that.id,_that.businessName,_that.ownerName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.businessType,_that.businessCategoryId,_that.businessCategoryName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMyStoreInfoResponseDto implements GetMyStoreInfoResponseDto {
  const _GetMyStoreInfoResponseDto({required this.userId, required this.loginId, required this.email, required this.phone, required this.role, required this.status, required this.id, required this.businessName, required this.ownerName, required this.zipCode, required this.address, required this.addressDetail, required this.businessNumber, required this.businessType, required this.businessCategoryId, required this.businessCategoryName, required this.createdAt});
  factory _GetMyStoreInfoResponseDto.fromJson(Map<String, dynamic> json) => _$GetMyStoreInfoResponseDtoFromJson(json);

@override final  int userId;
@override final  String loginId;
@override final  String email;
@override final  String phone;
@override final  String role;
@override final  String status;
@override final  int id;
@override final  String businessName;
@override final  String ownerName;
@override final  String zipCode;
@override final  String address;
@override final  String addressDetail;
@override final  String businessNumber;
@override final  String businessType;
@override final  int businessCategoryId;
@override final  String businessCategoryName;
@override final  DateTime createdAt;

/// Create a copy of GetMyStoreInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMyStoreInfoResponseDtoCopyWith<_GetMyStoreInfoResponseDto> get copyWith => __$GetMyStoreInfoResponseDtoCopyWithImpl<_GetMyStoreInfoResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMyStoreInfoResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyStoreInfoResponseDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.id, id) || other.id == id)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.businessNumber, businessNumber) || other.businessNumber == businessNumber)&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.businessCategoryId, businessCategoryId) || other.businessCategoryId == businessCategoryId)&&(identical(other.businessCategoryName, businessCategoryName) || other.businessCategoryName == businessCategoryName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,loginId,email,phone,role,status,id,businessName,ownerName,zipCode,address,addressDetail,businessNumber,businessType,businessCategoryId,businessCategoryName,createdAt);

@override
String toString() {
  return 'GetMyStoreInfoResponseDto(userId: $userId, loginId: $loginId, email: $email, phone: $phone, role: $role, status: $status, id: $id, businessName: $businessName, ownerName: $ownerName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, businessNumber: $businessNumber, businessType: $businessType, businessCategoryId: $businessCategoryId, businessCategoryName: $businessCategoryName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GetMyStoreInfoResponseDtoCopyWith<$Res> implements $GetMyStoreInfoResponseDtoCopyWith<$Res> {
  factory _$GetMyStoreInfoResponseDtoCopyWith(_GetMyStoreInfoResponseDto value, $Res Function(_GetMyStoreInfoResponseDto) _then) = __$GetMyStoreInfoResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String loginId, String email, String phone, String role, String status, int id, String businessName, String ownerName, String zipCode, String address, String addressDetail, String businessNumber, String businessType, int businessCategoryId, String businessCategoryName, DateTime createdAt
});




}
/// @nodoc
class __$GetMyStoreInfoResponseDtoCopyWithImpl<$Res>
    implements _$GetMyStoreInfoResponseDtoCopyWith<$Res> {
  __$GetMyStoreInfoResponseDtoCopyWithImpl(this._self, this._then);

  final _GetMyStoreInfoResponseDto _self;
  final $Res Function(_GetMyStoreInfoResponseDto) _then;

/// Create a copy of GetMyStoreInfoResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? loginId = null,Object? email = null,Object? phone = null,Object? role = null,Object? status = null,Object? id = null,Object? businessName = null,Object? ownerName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? businessNumber = null,Object? businessType = null,Object? businessCategoryId = null,Object? businessCategoryName = null,Object? createdAt = null,}) {
  return _then(_GetMyStoreInfoResponseDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: null == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String,businessNumber: null == businessNumber ? _self.businessNumber : businessNumber // ignore: cast_nullable_to_non_nullable
as String,businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as String,businessCategoryId: null == businessCategoryId ? _self.businessCategoryId : businessCategoryId // ignore: cast_nullable_to_non_nullable
as int,businessCategoryName: null == businessCategoryName ? _self.businessCategoryName : businessCategoryName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
