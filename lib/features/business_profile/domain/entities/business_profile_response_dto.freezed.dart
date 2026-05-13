// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessProfileResponseWrapper {

 BusinessProfileResponseDto get data;
/// Create a copy of BusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessProfileResponseWrapperCopyWith<BusinessProfileResponseWrapper> get copyWith => _$BusinessProfileResponseWrapperCopyWithImpl<BusinessProfileResponseWrapper>(this as BusinessProfileResponseWrapper, _$identity);

  /// Serializes this BusinessProfileResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessProfileResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'BusinessProfileResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $BusinessProfileResponseWrapperCopyWith<$Res>  {
  factory $BusinessProfileResponseWrapperCopyWith(BusinessProfileResponseWrapper value, $Res Function(BusinessProfileResponseWrapper) _then) = _$BusinessProfileResponseWrapperCopyWithImpl;
@useResult
$Res call({
 BusinessProfileResponseDto data
});


$BusinessProfileResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$BusinessProfileResponseWrapperCopyWithImpl<$Res>
    implements $BusinessProfileResponseWrapperCopyWith<$Res> {
  _$BusinessProfileResponseWrapperCopyWithImpl(this._self, this._then);

  final BusinessProfileResponseWrapper _self;
  final $Res Function(BusinessProfileResponseWrapper) _then;

/// Create a copy of BusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BusinessProfileResponseDto,
  ));
}
/// Create a copy of BusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessProfileResponseDtoCopyWith<$Res> get data {
  
  return $BusinessProfileResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BusinessProfileResponseWrapper].
extension BusinessProfileResponseWrapperPatterns on BusinessProfileResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessProfileResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessProfileResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessProfileResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _BusinessProfileResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessProfileResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessProfileResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BusinessProfileResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessProfileResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BusinessProfileResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _BusinessProfileResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BusinessProfileResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _BusinessProfileResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessProfileResponseWrapper implements BusinessProfileResponseWrapper {
  const _BusinessProfileResponseWrapper({required this.data});
  factory _BusinessProfileResponseWrapper.fromJson(Map<String, dynamic> json) => _$BusinessProfileResponseWrapperFromJson(json);

@override final  BusinessProfileResponseDto data;

/// Create a copy of BusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessProfileResponseWrapperCopyWith<_BusinessProfileResponseWrapper> get copyWith => __$BusinessProfileResponseWrapperCopyWithImpl<_BusinessProfileResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessProfileResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessProfileResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'BusinessProfileResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$BusinessProfileResponseWrapperCopyWith<$Res> implements $BusinessProfileResponseWrapperCopyWith<$Res> {
  factory _$BusinessProfileResponseWrapperCopyWith(_BusinessProfileResponseWrapper value, $Res Function(_BusinessProfileResponseWrapper) _then) = __$BusinessProfileResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 BusinessProfileResponseDto data
});


@override $BusinessProfileResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$BusinessProfileResponseWrapperCopyWithImpl<$Res>
    implements _$BusinessProfileResponseWrapperCopyWith<$Res> {
  __$BusinessProfileResponseWrapperCopyWithImpl(this._self, this._then);

  final _BusinessProfileResponseWrapper _self;
  final $Res Function(_BusinessProfileResponseWrapper) _then;

/// Create a copy of BusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_BusinessProfileResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BusinessProfileResponseDto,
  ));
}

/// Create a copy of BusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessProfileResponseDtoCopyWith<$Res> get data {
  
  return $BusinessProfileResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BusinessProfileResponseDto {

 int get id; String? get businessName; String? get ownerName; String? get zipCode; String? get address; String? get addressDetail; String? get businessNumber; String? get businessPhone; String? get industry; String? get industryClass; String? get parentCategoryName; String? get businessCategoryName;@JsonKey(fromJson: _latestChangeRequestStatusFromJson, toJson: _latestChangeRequestStatusToJson) BusinessChangeRequestStatus? get latestChangeRequestStatus; DateTime get createdAt;
/// Create a copy of BusinessProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessProfileResponseDtoCopyWith<BusinessProfileResponseDto> get copyWith => _$BusinessProfileResponseDtoCopyWithImpl<BusinessProfileResponseDto>(this as BusinessProfileResponseDto, _$identity);

  /// Serializes this BusinessProfileResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessProfileResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.businessNumber, businessNumber) || other.businessNumber == businessNumber)&&(identical(other.businessPhone, businessPhone) || other.businessPhone == businessPhone)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.industryClass, industryClass) || other.industryClass == industryClass)&&(identical(other.parentCategoryName, parentCategoryName) || other.parentCategoryName == parentCategoryName)&&(identical(other.businessCategoryName, businessCategoryName) || other.businessCategoryName == businessCategoryName)&&(identical(other.latestChangeRequestStatus, latestChangeRequestStatus) || other.latestChangeRequestStatus == latestChangeRequestStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,businessName,ownerName,zipCode,address,addressDetail,businessNumber,businessPhone,industry,industryClass,parentCategoryName,businessCategoryName,latestChangeRequestStatus,createdAt);

@override
String toString() {
  return 'BusinessProfileResponseDto(id: $id, businessName: $businessName, ownerName: $ownerName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, businessNumber: $businessNumber, businessPhone: $businessPhone, industry: $industry, industryClass: $industryClass, parentCategoryName: $parentCategoryName, businessCategoryName: $businessCategoryName, latestChangeRequestStatus: $latestChangeRequestStatus, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BusinessProfileResponseDtoCopyWith<$Res>  {
  factory $BusinessProfileResponseDtoCopyWith(BusinessProfileResponseDto value, $Res Function(BusinessProfileResponseDto) _then) = _$BusinessProfileResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? businessName, String? ownerName, String? zipCode, String? address, String? addressDetail, String? businessNumber, String? businessPhone, String? industry, String? industryClass, String? parentCategoryName, String? businessCategoryName,@JsonKey(fromJson: _latestChangeRequestStatusFromJson, toJson: _latestChangeRequestStatusToJson) BusinessChangeRequestStatus? latestChangeRequestStatus, DateTime createdAt
});




}
/// @nodoc
class _$BusinessProfileResponseDtoCopyWithImpl<$Res>
    implements $BusinessProfileResponseDtoCopyWith<$Res> {
  _$BusinessProfileResponseDtoCopyWithImpl(this._self, this._then);

  final BusinessProfileResponseDto _self;
  final $Res Function(BusinessProfileResponseDto) _then;

/// Create a copy of BusinessProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? businessName = freezed,Object? ownerName = freezed,Object? zipCode = freezed,Object? address = freezed,Object? addressDetail = freezed,Object? businessNumber = freezed,Object? businessPhone = freezed,Object? industry = freezed,Object? industryClass = freezed,Object? parentCategoryName = freezed,Object? businessCategoryName = freezed,Object? latestChangeRequestStatus = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessName: freezed == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,addressDetail: freezed == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String?,businessNumber: freezed == businessNumber ? _self.businessNumber : businessNumber // ignore: cast_nullable_to_non_nullable
as String?,businessPhone: freezed == businessPhone ? _self.businessPhone : businessPhone // ignore: cast_nullable_to_non_nullable
as String?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,industryClass: freezed == industryClass ? _self.industryClass : industryClass // ignore: cast_nullable_to_non_nullable
as String?,parentCategoryName: freezed == parentCategoryName ? _self.parentCategoryName : parentCategoryName // ignore: cast_nullable_to_non_nullable
as String?,businessCategoryName: freezed == businessCategoryName ? _self.businessCategoryName : businessCategoryName // ignore: cast_nullable_to_non_nullable
as String?,latestChangeRequestStatus: freezed == latestChangeRequestStatus ? _self.latestChangeRequestStatus : latestChangeRequestStatus // ignore: cast_nullable_to_non_nullable
as BusinessChangeRequestStatus?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessProfileResponseDto].
extension BusinessProfileResponseDtoPatterns on BusinessProfileResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessProfileResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessProfileResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _BusinessProfileResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessProfileResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? businessName,  String? ownerName,  String? zipCode,  String? address,  String? addressDetail,  String? businessNumber,  String? businessPhone,  String? industry,  String? industryClass,  String? parentCategoryName,  String? businessCategoryName, @JsonKey(fromJson: _latestChangeRequestStatusFromJson, toJson: _latestChangeRequestStatusToJson)  BusinessChangeRequestStatus? latestChangeRequestStatus,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessProfileResponseDto() when $default != null:
return $default(_that.id,_that.businessName,_that.ownerName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.businessPhone,_that.industry,_that.industryClass,_that.parentCategoryName,_that.businessCategoryName,_that.latestChangeRequestStatus,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? businessName,  String? ownerName,  String? zipCode,  String? address,  String? addressDetail,  String? businessNumber,  String? businessPhone,  String? industry,  String? industryClass,  String? parentCategoryName,  String? businessCategoryName, @JsonKey(fromJson: _latestChangeRequestStatusFromJson, toJson: _latestChangeRequestStatusToJson)  BusinessChangeRequestStatus? latestChangeRequestStatus,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _BusinessProfileResponseDto():
return $default(_that.id,_that.businessName,_that.ownerName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.businessPhone,_that.industry,_that.industryClass,_that.parentCategoryName,_that.businessCategoryName,_that.latestChangeRequestStatus,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? businessName,  String? ownerName,  String? zipCode,  String? address,  String? addressDetail,  String? businessNumber,  String? businessPhone,  String? industry,  String? industryClass,  String? parentCategoryName,  String? businessCategoryName, @JsonKey(fromJson: _latestChangeRequestStatusFromJson, toJson: _latestChangeRequestStatusToJson)  BusinessChangeRequestStatus? latestChangeRequestStatus,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BusinessProfileResponseDto() when $default != null:
return $default(_that.id,_that.businessName,_that.ownerName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.businessPhone,_that.industry,_that.industryClass,_that.parentCategoryName,_that.businessCategoryName,_that.latestChangeRequestStatus,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessProfileResponseDto implements BusinessProfileResponseDto {
  const _BusinessProfileResponseDto({required this.id, this.businessName, this.ownerName, this.zipCode, this.address, this.addressDetail, this.businessNumber, this.businessPhone, this.industry, this.industryClass, this.parentCategoryName, this.businessCategoryName, @JsonKey(fromJson: _latestChangeRequestStatusFromJson, toJson: _latestChangeRequestStatusToJson) this.latestChangeRequestStatus, required this.createdAt});
  factory _BusinessProfileResponseDto.fromJson(Map<String, dynamic> json) => _$BusinessProfileResponseDtoFromJson(json);

@override final  int id;
@override final  String? businessName;
@override final  String? ownerName;
@override final  String? zipCode;
@override final  String? address;
@override final  String? addressDetail;
@override final  String? businessNumber;
@override final  String? businessPhone;
@override final  String? industry;
@override final  String? industryClass;
@override final  String? parentCategoryName;
@override final  String? businessCategoryName;
@override@JsonKey(fromJson: _latestChangeRequestStatusFromJson, toJson: _latestChangeRequestStatusToJson) final  BusinessChangeRequestStatus? latestChangeRequestStatus;
@override final  DateTime createdAt;

/// Create a copy of BusinessProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessProfileResponseDtoCopyWith<_BusinessProfileResponseDto> get copyWith => __$BusinessProfileResponseDtoCopyWithImpl<_BusinessProfileResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessProfileResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessProfileResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.businessNumber, businessNumber) || other.businessNumber == businessNumber)&&(identical(other.businessPhone, businessPhone) || other.businessPhone == businessPhone)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.industryClass, industryClass) || other.industryClass == industryClass)&&(identical(other.parentCategoryName, parentCategoryName) || other.parentCategoryName == parentCategoryName)&&(identical(other.businessCategoryName, businessCategoryName) || other.businessCategoryName == businessCategoryName)&&(identical(other.latestChangeRequestStatus, latestChangeRequestStatus) || other.latestChangeRequestStatus == latestChangeRequestStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,businessName,ownerName,zipCode,address,addressDetail,businessNumber,businessPhone,industry,industryClass,parentCategoryName,businessCategoryName,latestChangeRequestStatus,createdAt);

@override
String toString() {
  return 'BusinessProfileResponseDto(id: $id, businessName: $businessName, ownerName: $ownerName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, businessNumber: $businessNumber, businessPhone: $businessPhone, industry: $industry, industryClass: $industryClass, parentCategoryName: $parentCategoryName, businessCategoryName: $businessCategoryName, latestChangeRequestStatus: $latestChangeRequestStatus, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BusinessProfileResponseDtoCopyWith<$Res> implements $BusinessProfileResponseDtoCopyWith<$Res> {
  factory _$BusinessProfileResponseDtoCopyWith(_BusinessProfileResponseDto value, $Res Function(_BusinessProfileResponseDto) _then) = __$BusinessProfileResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? businessName, String? ownerName, String? zipCode, String? address, String? addressDetail, String? businessNumber, String? businessPhone, String? industry, String? industryClass, String? parentCategoryName, String? businessCategoryName,@JsonKey(fromJson: _latestChangeRequestStatusFromJson, toJson: _latestChangeRequestStatusToJson) BusinessChangeRequestStatus? latestChangeRequestStatus, DateTime createdAt
});




}
/// @nodoc
class __$BusinessProfileResponseDtoCopyWithImpl<$Res>
    implements _$BusinessProfileResponseDtoCopyWith<$Res> {
  __$BusinessProfileResponseDtoCopyWithImpl(this._self, this._then);

  final _BusinessProfileResponseDto _self;
  final $Res Function(_BusinessProfileResponseDto) _then;

/// Create a copy of BusinessProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? businessName = freezed,Object? ownerName = freezed,Object? zipCode = freezed,Object? address = freezed,Object? addressDetail = freezed,Object? businessNumber = freezed,Object? businessPhone = freezed,Object? industry = freezed,Object? industryClass = freezed,Object? parentCategoryName = freezed,Object? businessCategoryName = freezed,Object? latestChangeRequestStatus = freezed,Object? createdAt = null,}) {
  return _then(_BusinessProfileResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessName: freezed == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,addressDetail: freezed == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String?,businessNumber: freezed == businessNumber ? _self.businessNumber : businessNumber // ignore: cast_nullable_to_non_nullable
as String?,businessPhone: freezed == businessPhone ? _self.businessPhone : businessPhone // ignore: cast_nullable_to_non_nullable
as String?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,industryClass: freezed == industryClass ? _self.industryClass : industryClass // ignore: cast_nullable_to_non_nullable
as String?,parentCategoryName: freezed == parentCategoryName ? _self.parentCategoryName : parentCategoryName // ignore: cast_nullable_to_non_nullable
as String?,businessCategoryName: freezed == businessCategoryName ? _self.businessCategoryName : businessCategoryName // ignore: cast_nullable_to_non_nullable
as String?,latestChangeRequestStatus: freezed == latestChangeRequestStatus ? _self.latestChangeRequestStatus : latestChangeRequestStatus // ignore: cast_nullable_to_non_nullable
as BusinessChangeRequestStatus?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
