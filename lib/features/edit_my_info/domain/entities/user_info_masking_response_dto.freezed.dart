// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_masking_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfoMaskingResponseWrapper {

 UserInfoMaskingResponseDto get data;
/// Create a copy of UserInfoMaskingResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoMaskingResponseWrapperCopyWith<UserInfoMaskingResponseWrapper> get copyWith => _$UserInfoMaskingResponseWrapperCopyWithImpl<UserInfoMaskingResponseWrapper>(this as UserInfoMaskingResponseWrapper, _$identity);

  /// Serializes this UserInfoMaskingResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoMaskingResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UserInfoMaskingResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $UserInfoMaskingResponseWrapperCopyWith<$Res>  {
  factory $UserInfoMaskingResponseWrapperCopyWith(UserInfoMaskingResponseWrapper value, $Res Function(UserInfoMaskingResponseWrapper) _then) = _$UserInfoMaskingResponseWrapperCopyWithImpl;
@useResult
$Res call({
 UserInfoMaskingResponseDto data
});


$UserInfoMaskingResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$UserInfoMaskingResponseWrapperCopyWithImpl<$Res>
    implements $UserInfoMaskingResponseWrapperCopyWith<$Res> {
  _$UserInfoMaskingResponseWrapperCopyWithImpl(this._self, this._then);

  final UserInfoMaskingResponseWrapper _self;
  final $Res Function(UserInfoMaskingResponseWrapper) _then;

/// Create a copy of UserInfoMaskingResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserInfoMaskingResponseDto,
  ));
}
/// Create a copy of UserInfoMaskingResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoMaskingResponseDtoCopyWith<$Res> get data {
  
  return $UserInfoMaskingResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserInfoMaskingResponseWrapper].
extension UserInfoMaskingResponseWrapperPatterns on UserInfoMaskingResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoMaskingResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoMaskingResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoMaskingResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoMaskingResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoMaskingResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoMaskingResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserInfoMaskingResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoMaskingResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserInfoMaskingResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _UserInfoMaskingResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserInfoMaskingResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoMaskingResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfoMaskingResponseWrapper implements UserInfoMaskingResponseWrapper {
  const _UserInfoMaskingResponseWrapper({required this.data});
  factory _UserInfoMaskingResponseWrapper.fromJson(Map<String, dynamic> json) => _$UserInfoMaskingResponseWrapperFromJson(json);

@override final  UserInfoMaskingResponseDto data;

/// Create a copy of UserInfoMaskingResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoMaskingResponseWrapperCopyWith<_UserInfoMaskingResponseWrapper> get copyWith => __$UserInfoMaskingResponseWrapperCopyWithImpl<_UserInfoMaskingResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoMaskingResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoMaskingResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UserInfoMaskingResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$UserInfoMaskingResponseWrapperCopyWith<$Res> implements $UserInfoMaskingResponseWrapperCopyWith<$Res> {
  factory _$UserInfoMaskingResponseWrapperCopyWith(_UserInfoMaskingResponseWrapper value, $Res Function(_UserInfoMaskingResponseWrapper) _then) = __$UserInfoMaskingResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 UserInfoMaskingResponseDto data
});


@override $UserInfoMaskingResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$UserInfoMaskingResponseWrapperCopyWithImpl<$Res>
    implements _$UserInfoMaskingResponseWrapperCopyWith<$Res> {
  __$UserInfoMaskingResponseWrapperCopyWithImpl(this._self, this._then);

  final _UserInfoMaskingResponseWrapper _self;
  final $Res Function(_UserInfoMaskingResponseWrapper) _then;

/// Create a copy of UserInfoMaskingResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_UserInfoMaskingResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserInfoMaskingResponseDto,
  ));
}

/// Create a copy of UserInfoMaskingResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoMaskingResponseDtoCopyWith<$Res> get data {
  
  return $UserInfoMaskingResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UserInfoMaskingResponseDto {

 String get loginId; String get name; String get email; String get phone; BusinessProfileDto? get businessProfile; RefundAccountDto? get refundAccount; bool get isNotificationEnabled;
/// Create a copy of UserInfoMaskingResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoMaskingResponseDtoCopyWith<UserInfoMaskingResponseDto> get copyWith => _$UserInfoMaskingResponseDtoCopyWithImpl<UserInfoMaskingResponseDto>(this as UserInfoMaskingResponseDto, _$identity);

  /// Serializes this UserInfoMaskingResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoMaskingResponseDto&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.businessProfile, businessProfile) || other.businessProfile == businessProfile)&&(identical(other.refundAccount, refundAccount) || other.refundAccount == refundAccount)&&(identical(other.isNotificationEnabled, isNotificationEnabled) || other.isNotificationEnabled == isNotificationEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,loginId,name,email,phone,businessProfile,refundAccount,isNotificationEnabled);

@override
String toString() {
  return 'UserInfoMaskingResponseDto(loginId: $loginId, name: $name, email: $email, phone: $phone, businessProfile: $businessProfile, refundAccount: $refundAccount, isNotificationEnabled: $isNotificationEnabled)';
}


}

/// @nodoc
abstract mixin class $UserInfoMaskingResponseDtoCopyWith<$Res>  {
  factory $UserInfoMaskingResponseDtoCopyWith(UserInfoMaskingResponseDto value, $Res Function(UserInfoMaskingResponseDto) _then) = _$UserInfoMaskingResponseDtoCopyWithImpl;
@useResult
$Res call({
 String loginId, String name, String email, String phone, BusinessProfileDto? businessProfile, RefundAccountDto? refundAccount, bool isNotificationEnabled
});


$BusinessProfileDtoCopyWith<$Res>? get businessProfile;$RefundAccountDtoCopyWith<$Res>? get refundAccount;

}
/// @nodoc
class _$UserInfoMaskingResponseDtoCopyWithImpl<$Res>
    implements $UserInfoMaskingResponseDtoCopyWith<$Res> {
  _$UserInfoMaskingResponseDtoCopyWithImpl(this._self, this._then);

  final UserInfoMaskingResponseDto _self;
  final $Res Function(UserInfoMaskingResponseDto) _then;

/// Create a copy of UserInfoMaskingResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loginId = null,Object? name = null,Object? email = null,Object? phone = null,Object? businessProfile = freezed,Object? refundAccount = freezed,Object? isNotificationEnabled = null,}) {
  return _then(_self.copyWith(
loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,businessProfile: freezed == businessProfile ? _self.businessProfile : businessProfile // ignore: cast_nullable_to_non_nullable
as BusinessProfileDto?,refundAccount: freezed == refundAccount ? _self.refundAccount : refundAccount // ignore: cast_nullable_to_non_nullable
as RefundAccountDto?,isNotificationEnabled: null == isNotificationEnabled ? _self.isNotificationEnabled : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of UserInfoMaskingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessProfileDtoCopyWith<$Res>? get businessProfile {
    if (_self.businessProfile == null) {
    return null;
  }

  return $BusinessProfileDtoCopyWith<$Res>(_self.businessProfile!, (value) {
    return _then(_self.copyWith(businessProfile: value));
  });
}/// Create a copy of UserInfoMaskingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefundAccountDtoCopyWith<$Res>? get refundAccount {
    if (_self.refundAccount == null) {
    return null;
  }

  return $RefundAccountDtoCopyWith<$Res>(_self.refundAccount!, (value) {
    return _then(_self.copyWith(refundAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserInfoMaskingResponseDto].
extension UserInfoMaskingResponseDtoPatterns on UserInfoMaskingResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoMaskingResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoMaskingResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoMaskingResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoMaskingResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoMaskingResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoMaskingResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String loginId,  String name,  String email,  String phone,  BusinessProfileDto? businessProfile,  RefundAccountDto? refundAccount,  bool isNotificationEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoMaskingResponseDto() when $default != null:
return $default(_that.loginId,_that.name,_that.email,_that.phone,_that.businessProfile,_that.refundAccount,_that.isNotificationEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String loginId,  String name,  String email,  String phone,  BusinessProfileDto? businessProfile,  RefundAccountDto? refundAccount,  bool isNotificationEnabled)  $default,) {final _that = this;
switch (_that) {
case _UserInfoMaskingResponseDto():
return $default(_that.loginId,_that.name,_that.email,_that.phone,_that.businessProfile,_that.refundAccount,_that.isNotificationEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String loginId,  String name,  String email,  String phone,  BusinessProfileDto? businessProfile,  RefundAccountDto? refundAccount,  bool isNotificationEnabled)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoMaskingResponseDto() when $default != null:
return $default(_that.loginId,_that.name,_that.email,_that.phone,_that.businessProfile,_that.refundAccount,_that.isNotificationEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfoMaskingResponseDto implements UserInfoMaskingResponseDto {
  const _UserInfoMaskingResponseDto({required this.loginId, required this.name, required this.email, required this.phone, this.businessProfile, this.refundAccount, required this.isNotificationEnabled});
  factory _UserInfoMaskingResponseDto.fromJson(Map<String, dynamic> json) => _$UserInfoMaskingResponseDtoFromJson(json);

@override final  String loginId;
@override final  String name;
@override final  String email;
@override final  String phone;
@override final  BusinessProfileDto? businessProfile;
@override final  RefundAccountDto? refundAccount;
@override final  bool isNotificationEnabled;

/// Create a copy of UserInfoMaskingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoMaskingResponseDtoCopyWith<_UserInfoMaskingResponseDto> get copyWith => __$UserInfoMaskingResponseDtoCopyWithImpl<_UserInfoMaskingResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoMaskingResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoMaskingResponseDto&&(identical(other.loginId, loginId) || other.loginId == loginId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.businessProfile, businessProfile) || other.businessProfile == businessProfile)&&(identical(other.refundAccount, refundAccount) || other.refundAccount == refundAccount)&&(identical(other.isNotificationEnabled, isNotificationEnabled) || other.isNotificationEnabled == isNotificationEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,loginId,name,email,phone,businessProfile,refundAccount,isNotificationEnabled);

@override
String toString() {
  return 'UserInfoMaskingResponseDto(loginId: $loginId, name: $name, email: $email, phone: $phone, businessProfile: $businessProfile, refundAccount: $refundAccount, isNotificationEnabled: $isNotificationEnabled)';
}


}

/// @nodoc
abstract mixin class _$UserInfoMaskingResponseDtoCopyWith<$Res> implements $UserInfoMaskingResponseDtoCopyWith<$Res> {
  factory _$UserInfoMaskingResponseDtoCopyWith(_UserInfoMaskingResponseDto value, $Res Function(_UserInfoMaskingResponseDto) _then) = __$UserInfoMaskingResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String loginId, String name, String email, String phone, BusinessProfileDto? businessProfile, RefundAccountDto? refundAccount, bool isNotificationEnabled
});


@override $BusinessProfileDtoCopyWith<$Res>? get businessProfile;@override $RefundAccountDtoCopyWith<$Res>? get refundAccount;

}
/// @nodoc
class __$UserInfoMaskingResponseDtoCopyWithImpl<$Res>
    implements _$UserInfoMaskingResponseDtoCopyWith<$Res> {
  __$UserInfoMaskingResponseDtoCopyWithImpl(this._self, this._then);

  final _UserInfoMaskingResponseDto _self;
  final $Res Function(_UserInfoMaskingResponseDto) _then;

/// Create a copy of UserInfoMaskingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loginId = null,Object? name = null,Object? email = null,Object? phone = null,Object? businessProfile = freezed,Object? refundAccount = freezed,Object? isNotificationEnabled = null,}) {
  return _then(_UserInfoMaskingResponseDto(
loginId: null == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,businessProfile: freezed == businessProfile ? _self.businessProfile : businessProfile // ignore: cast_nullable_to_non_nullable
as BusinessProfileDto?,refundAccount: freezed == refundAccount ? _self.refundAccount : refundAccount // ignore: cast_nullable_to_non_nullable
as RefundAccountDto?,isNotificationEnabled: null == isNotificationEnabled ? _self.isNotificationEnabled : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UserInfoMaskingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessProfileDtoCopyWith<$Res>? get businessProfile {
    if (_self.businessProfile == null) {
    return null;
  }

  return $BusinessProfileDtoCopyWith<$Res>(_self.businessProfile!, (value) {
    return _then(_self.copyWith(businessProfile: value));
  });
}/// Create a copy of UserInfoMaskingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefundAccountDtoCopyWith<$Res>? get refundAccount {
    if (_self.refundAccount == null) {
    return null;
  }

  return $RefundAccountDtoCopyWith<$Res>(_self.refundAccount!, (value) {
    return _then(_self.copyWith(refundAccount: value));
  });
}
}


/// @nodoc
mixin _$BusinessProfileDto {

 String get businessName; String get zipCode; String get address; String? get addressDetail; String get businessNumber; String get ownerName; String get parentCategoryName; String get businessCategoryName; String? get businessPhone; String? get industry; String? get industryClass;
/// Create a copy of BusinessProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessProfileDtoCopyWith<BusinessProfileDto> get copyWith => _$BusinessProfileDtoCopyWithImpl<BusinessProfileDto>(this as BusinessProfileDto, _$identity);

  /// Serializes this BusinessProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessProfileDto&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.businessNumber, businessNumber) || other.businessNumber == businessNumber)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.parentCategoryName, parentCategoryName) || other.parentCategoryName == parentCategoryName)&&(identical(other.businessCategoryName, businessCategoryName) || other.businessCategoryName == businessCategoryName)&&(identical(other.businessPhone, businessPhone) || other.businessPhone == businessPhone)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.industryClass, industryClass) || other.industryClass == industryClass));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessName,zipCode,address,addressDetail,businessNumber,ownerName,parentCategoryName,businessCategoryName,businessPhone,industry,industryClass);

@override
String toString() {
  return 'BusinessProfileDto(businessName: $businessName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, businessNumber: $businessNumber, ownerName: $ownerName, parentCategoryName: $parentCategoryName, businessCategoryName: $businessCategoryName, businessPhone: $businessPhone, industry: $industry, industryClass: $industryClass)';
}


}

/// @nodoc
abstract mixin class $BusinessProfileDtoCopyWith<$Res>  {
  factory $BusinessProfileDtoCopyWith(BusinessProfileDto value, $Res Function(BusinessProfileDto) _then) = _$BusinessProfileDtoCopyWithImpl;
@useResult
$Res call({
 String businessName, String zipCode, String address, String? addressDetail, String businessNumber, String ownerName, String parentCategoryName, String businessCategoryName, String? businessPhone, String? industry, String? industryClass
});




}
/// @nodoc
class _$BusinessProfileDtoCopyWithImpl<$Res>
    implements $BusinessProfileDtoCopyWith<$Res> {
  _$BusinessProfileDtoCopyWithImpl(this._self, this._then);

  final BusinessProfileDto _self;
  final $Res Function(BusinessProfileDto) _then;

/// Create a copy of BusinessProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = freezed,Object? businessNumber = null,Object? ownerName = null,Object? parentCategoryName = null,Object? businessCategoryName = null,Object? businessPhone = freezed,Object? industry = freezed,Object? industryClass = freezed,}) {
  return _then(_self.copyWith(
businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: freezed == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String?,businessNumber: null == businessNumber ? _self.businessNumber : businessNumber // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,parentCategoryName: null == parentCategoryName ? _self.parentCategoryName : parentCategoryName // ignore: cast_nullable_to_non_nullable
as String,businessCategoryName: null == businessCategoryName ? _self.businessCategoryName : businessCategoryName // ignore: cast_nullable_to_non_nullable
as String,businessPhone: freezed == businessPhone ? _self.businessPhone : businessPhone // ignore: cast_nullable_to_non_nullable
as String?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,industryClass: freezed == industryClass ? _self.industryClass : industryClass // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessProfileDto].
extension BusinessProfileDtoPatterns on BusinessProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _BusinessProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String businessName,  String zipCode,  String address,  String? addressDetail,  String businessNumber,  String ownerName,  String parentCategoryName,  String businessCategoryName,  String? businessPhone,  String? industry,  String? industryClass)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessProfileDto() when $default != null:
return $default(_that.businessName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.ownerName,_that.parentCategoryName,_that.businessCategoryName,_that.businessPhone,_that.industry,_that.industryClass);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String businessName,  String zipCode,  String address,  String? addressDetail,  String businessNumber,  String ownerName,  String parentCategoryName,  String businessCategoryName,  String? businessPhone,  String? industry,  String? industryClass)  $default,) {final _that = this;
switch (_that) {
case _BusinessProfileDto():
return $default(_that.businessName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.ownerName,_that.parentCategoryName,_that.businessCategoryName,_that.businessPhone,_that.industry,_that.industryClass);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String businessName,  String zipCode,  String address,  String? addressDetail,  String businessNumber,  String ownerName,  String parentCategoryName,  String businessCategoryName,  String? businessPhone,  String? industry,  String? industryClass)?  $default,) {final _that = this;
switch (_that) {
case _BusinessProfileDto() when $default != null:
return $default(_that.businessName,_that.zipCode,_that.address,_that.addressDetail,_that.businessNumber,_that.ownerName,_that.parentCategoryName,_that.businessCategoryName,_that.businessPhone,_that.industry,_that.industryClass);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessProfileDto implements BusinessProfileDto {
  const _BusinessProfileDto({required this.businessName, required this.zipCode, required this.address, this.addressDetail, required this.businessNumber, required this.ownerName, required this.parentCategoryName, required this.businessCategoryName, this.businessPhone, this.industry, this.industryClass});
  factory _BusinessProfileDto.fromJson(Map<String, dynamic> json) => _$BusinessProfileDtoFromJson(json);

@override final  String businessName;
@override final  String zipCode;
@override final  String address;
@override final  String? addressDetail;
@override final  String businessNumber;
@override final  String ownerName;
@override final  String parentCategoryName;
@override final  String businessCategoryName;
@override final  String? businessPhone;
@override final  String? industry;
@override final  String? industryClass;

/// Create a copy of BusinessProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessProfileDtoCopyWith<_BusinessProfileDto> get copyWith => __$BusinessProfileDtoCopyWithImpl<_BusinessProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessProfileDto&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.businessNumber, businessNumber) || other.businessNumber == businessNumber)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.parentCategoryName, parentCategoryName) || other.parentCategoryName == parentCategoryName)&&(identical(other.businessCategoryName, businessCategoryName) || other.businessCategoryName == businessCategoryName)&&(identical(other.businessPhone, businessPhone) || other.businessPhone == businessPhone)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.industryClass, industryClass) || other.industryClass == industryClass));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessName,zipCode,address,addressDetail,businessNumber,ownerName,parentCategoryName,businessCategoryName,businessPhone,industry,industryClass);

@override
String toString() {
  return 'BusinessProfileDto(businessName: $businessName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, businessNumber: $businessNumber, ownerName: $ownerName, parentCategoryName: $parentCategoryName, businessCategoryName: $businessCategoryName, businessPhone: $businessPhone, industry: $industry, industryClass: $industryClass)';
}


}

/// @nodoc
abstract mixin class _$BusinessProfileDtoCopyWith<$Res> implements $BusinessProfileDtoCopyWith<$Res> {
  factory _$BusinessProfileDtoCopyWith(_BusinessProfileDto value, $Res Function(_BusinessProfileDto) _then) = __$BusinessProfileDtoCopyWithImpl;
@override @useResult
$Res call({
 String businessName, String zipCode, String address, String? addressDetail, String businessNumber, String ownerName, String parentCategoryName, String businessCategoryName, String? businessPhone, String? industry, String? industryClass
});




}
/// @nodoc
class __$BusinessProfileDtoCopyWithImpl<$Res>
    implements _$BusinessProfileDtoCopyWith<$Res> {
  __$BusinessProfileDtoCopyWithImpl(this._self, this._then);

  final _BusinessProfileDto _self;
  final $Res Function(_BusinessProfileDto) _then;

/// Create a copy of BusinessProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = freezed,Object? businessNumber = null,Object? ownerName = null,Object? parentCategoryName = null,Object? businessCategoryName = null,Object? businessPhone = freezed,Object? industry = freezed,Object? industryClass = freezed,}) {
  return _then(_BusinessProfileDto(
businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: freezed == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String?,businessNumber: null == businessNumber ? _self.businessNumber : businessNumber // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,parentCategoryName: null == parentCategoryName ? _self.parentCategoryName : parentCategoryName // ignore: cast_nullable_to_non_nullable
as String,businessCategoryName: null == businessCategoryName ? _self.businessCategoryName : businessCategoryName // ignore: cast_nullable_to_non_nullable
as String,businessPhone: freezed == businessPhone ? _self.businessPhone : businessPhone // ignore: cast_nullable_to_non_nullable
as String?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,industryClass: freezed == industryClass ? _self.industryClass : industryClass // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RefundAccountDto {

 String get bankName; String get accountNumber;
/// Create a copy of RefundAccountDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundAccountDtoCopyWith<RefundAccountDto> get copyWith => _$RefundAccountDtoCopyWithImpl<RefundAccountDto>(this as RefundAccountDto, _$identity);

  /// Serializes this RefundAccountDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundAccountDto&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankName,accountNumber);

@override
String toString() {
  return 'RefundAccountDto(bankName: $bankName, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class $RefundAccountDtoCopyWith<$Res>  {
  factory $RefundAccountDtoCopyWith(RefundAccountDto value, $Res Function(RefundAccountDto) _then) = _$RefundAccountDtoCopyWithImpl;
@useResult
$Res call({
 String bankName, String accountNumber
});




}
/// @nodoc
class _$RefundAccountDtoCopyWithImpl<$Res>
    implements $RefundAccountDtoCopyWith<$Res> {
  _$RefundAccountDtoCopyWithImpl(this._self, this._then);

  final RefundAccountDto _self;
  final $Res Function(RefundAccountDto) _then;

/// Create a copy of RefundAccountDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankName = null,Object? accountNumber = null,}) {
  return _then(_self.copyWith(
bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundAccountDto].
extension RefundAccountDtoPatterns on RefundAccountDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundAccountDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundAccountDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundAccountDto value)  $default,){
final _that = this;
switch (_that) {
case _RefundAccountDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundAccountDto value)?  $default,){
final _that = this;
switch (_that) {
case _RefundAccountDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bankName,  String accountNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundAccountDto() when $default != null:
return $default(_that.bankName,_that.accountNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bankName,  String accountNumber)  $default,) {final _that = this;
switch (_that) {
case _RefundAccountDto():
return $default(_that.bankName,_that.accountNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bankName,  String accountNumber)?  $default,) {final _that = this;
switch (_that) {
case _RefundAccountDto() when $default != null:
return $default(_that.bankName,_that.accountNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundAccountDto implements RefundAccountDto {
  const _RefundAccountDto({required this.bankName, required this.accountNumber});
  factory _RefundAccountDto.fromJson(Map<String, dynamic> json) => _$RefundAccountDtoFromJson(json);

@override final  String bankName;
@override final  String accountNumber;

/// Create a copy of RefundAccountDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundAccountDtoCopyWith<_RefundAccountDto> get copyWith => __$RefundAccountDtoCopyWithImpl<_RefundAccountDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundAccountDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundAccountDto&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankName,accountNumber);

@override
String toString() {
  return 'RefundAccountDto(bankName: $bankName, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class _$RefundAccountDtoCopyWith<$Res> implements $RefundAccountDtoCopyWith<$Res> {
  factory _$RefundAccountDtoCopyWith(_RefundAccountDto value, $Res Function(_RefundAccountDto) _then) = __$RefundAccountDtoCopyWithImpl;
@override @useResult
$Res call({
 String bankName, String accountNumber
});




}
/// @nodoc
class __$RefundAccountDtoCopyWithImpl<$Res>
    implements _$RefundAccountDtoCopyWith<$Res> {
  __$RefundAccountDtoCopyWithImpl(this._self, this._then);

  final _RefundAccountDto _self;
  final $Res Function(_RefundAccountDto) _then;

/// Create a copy of RefundAccountDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankName = null,Object? accountNumber = null,}) {
  return _then(_RefundAccountDto(
bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
