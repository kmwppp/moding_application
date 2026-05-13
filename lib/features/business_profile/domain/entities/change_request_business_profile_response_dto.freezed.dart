// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_request_business_profile_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeRequestBusinessProfileResponseWrapper {

 ChangeRequestBusinessProfileResponseDto get data;
/// Create a copy of ChangeRequestBusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeRequestBusinessProfileResponseWrapperCopyWith<ChangeRequestBusinessProfileResponseWrapper> get copyWith => _$ChangeRequestBusinessProfileResponseWrapperCopyWithImpl<ChangeRequestBusinessProfileResponseWrapper>(this as ChangeRequestBusinessProfileResponseWrapper, _$identity);

  /// Serializes this ChangeRequestBusinessProfileResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeRequestBusinessProfileResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ChangeRequestBusinessProfileResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res>  {
  factory $ChangeRequestBusinessProfileResponseWrapperCopyWith(ChangeRequestBusinessProfileResponseWrapper value, $Res Function(ChangeRequestBusinessProfileResponseWrapper) _then) = _$ChangeRequestBusinessProfileResponseWrapperCopyWithImpl;
@useResult
$Res call({
 ChangeRequestBusinessProfileResponseDto data
});


$ChangeRequestBusinessProfileResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$ChangeRequestBusinessProfileResponseWrapperCopyWithImpl<$Res>
    implements $ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res> {
  _$ChangeRequestBusinessProfileResponseWrapperCopyWithImpl(this._self, this._then);

  final ChangeRequestBusinessProfileResponseWrapper _self;
  final $Res Function(ChangeRequestBusinessProfileResponseWrapper) _then;

/// Create a copy of ChangeRequestBusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChangeRequestBusinessProfileResponseDto,
  ));
}
/// Create a copy of ChangeRequestBusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangeRequestBusinessProfileResponseDtoCopyWith<$Res> get data {
  
  return $ChangeRequestBusinessProfileResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChangeRequestBusinessProfileResponseWrapper].
extension ChangeRequestBusinessProfileResponseWrapperPatterns on ChangeRequestBusinessProfileResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeRequestBusinessProfileResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeRequestBusinessProfileResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeRequestBusinessProfileResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChangeRequestBusinessProfileResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChangeRequestBusinessProfileResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChangeRequestBusinessProfileResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeRequestBusinessProfileResponseWrapper implements ChangeRequestBusinessProfileResponseWrapper {
  const _ChangeRequestBusinessProfileResponseWrapper({required this.data});
  factory _ChangeRequestBusinessProfileResponseWrapper.fromJson(Map<String, dynamic> json) => _$ChangeRequestBusinessProfileResponseWrapperFromJson(json);

@override final  ChangeRequestBusinessProfileResponseDto data;

/// Create a copy of ChangeRequestBusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeRequestBusinessProfileResponseWrapperCopyWith<_ChangeRequestBusinessProfileResponseWrapper> get copyWith => __$ChangeRequestBusinessProfileResponseWrapperCopyWithImpl<_ChangeRequestBusinessProfileResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeRequestBusinessProfileResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeRequestBusinessProfileResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ChangeRequestBusinessProfileResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res> implements $ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res> {
  factory _$ChangeRequestBusinessProfileResponseWrapperCopyWith(_ChangeRequestBusinessProfileResponseWrapper value, $Res Function(_ChangeRequestBusinessProfileResponseWrapper) _then) = __$ChangeRequestBusinessProfileResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 ChangeRequestBusinessProfileResponseDto data
});


@override $ChangeRequestBusinessProfileResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$ChangeRequestBusinessProfileResponseWrapperCopyWithImpl<$Res>
    implements _$ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res> {
  __$ChangeRequestBusinessProfileResponseWrapperCopyWithImpl(this._self, this._then);

  final _ChangeRequestBusinessProfileResponseWrapper _self;
  final $Res Function(_ChangeRequestBusinessProfileResponseWrapper) _then;

/// Create a copy of ChangeRequestBusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ChangeRequestBusinessProfileResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChangeRequestBusinessProfileResponseDto,
  ));
}

/// Create a copy of ChangeRequestBusinessProfileResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangeRequestBusinessProfileResponseDtoCopyWith<$Res> get data {
  
  return $ChangeRequestBusinessProfileResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ChangeRequestBusinessProfileResponseDto {

 int get id;@JsonKey(fromJson: _statusFromJson, toJson: _statusToJson) BusinessChangeRequestStatus get status; String? get rejectionReason; String? get pendingBusinessPhone; String? get pendingParentCategoryName; String? get pendingBusinessCategoryName; String? get pendingLicenseFileUrl; DateTime get createdAt; DateTime? get reviewedAt;
/// Create a copy of ChangeRequestBusinessProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeRequestBusinessProfileResponseDtoCopyWith<ChangeRequestBusinessProfileResponseDto> get copyWith => _$ChangeRequestBusinessProfileResponseDtoCopyWithImpl<ChangeRequestBusinessProfileResponseDto>(this as ChangeRequestBusinessProfileResponseDto, _$identity);

  /// Serializes this ChangeRequestBusinessProfileResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeRequestBusinessProfileResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.pendingBusinessPhone, pendingBusinessPhone) || other.pendingBusinessPhone == pendingBusinessPhone)&&(identical(other.pendingParentCategoryName, pendingParentCategoryName) || other.pendingParentCategoryName == pendingParentCategoryName)&&(identical(other.pendingBusinessCategoryName, pendingBusinessCategoryName) || other.pendingBusinessCategoryName == pendingBusinessCategoryName)&&(identical(other.pendingLicenseFileUrl, pendingLicenseFileUrl) || other.pendingLicenseFileUrl == pendingLicenseFileUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,rejectionReason,pendingBusinessPhone,pendingParentCategoryName,pendingBusinessCategoryName,pendingLicenseFileUrl,createdAt,reviewedAt);

@override
String toString() {
  return 'ChangeRequestBusinessProfileResponseDto(id: $id, status: $status, rejectionReason: $rejectionReason, pendingBusinessPhone: $pendingBusinessPhone, pendingParentCategoryName: $pendingParentCategoryName, pendingBusinessCategoryName: $pendingBusinessCategoryName, pendingLicenseFileUrl: $pendingLicenseFileUrl, createdAt: $createdAt, reviewedAt: $reviewedAt)';
}


}

/// @nodoc
abstract mixin class $ChangeRequestBusinessProfileResponseDtoCopyWith<$Res>  {
  factory $ChangeRequestBusinessProfileResponseDtoCopyWith(ChangeRequestBusinessProfileResponseDto value, $Res Function(ChangeRequestBusinessProfileResponseDto) _then) = _$ChangeRequestBusinessProfileResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(fromJson: _statusFromJson, toJson: _statusToJson) BusinessChangeRequestStatus status, String? rejectionReason, String? pendingBusinessPhone, String? pendingParentCategoryName, String? pendingBusinessCategoryName, String? pendingLicenseFileUrl, DateTime createdAt, DateTime? reviewedAt
});




}
/// @nodoc
class _$ChangeRequestBusinessProfileResponseDtoCopyWithImpl<$Res>
    implements $ChangeRequestBusinessProfileResponseDtoCopyWith<$Res> {
  _$ChangeRequestBusinessProfileResponseDtoCopyWithImpl(this._self, this._then);

  final ChangeRequestBusinessProfileResponseDto _self;
  final $Res Function(ChangeRequestBusinessProfileResponseDto) _then;

/// Create a copy of ChangeRequestBusinessProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? rejectionReason = freezed,Object? pendingBusinessPhone = freezed,Object? pendingParentCategoryName = freezed,Object? pendingBusinessCategoryName = freezed,Object? pendingLicenseFileUrl = freezed,Object? createdAt = null,Object? reviewedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BusinessChangeRequestStatus,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,pendingBusinessPhone: freezed == pendingBusinessPhone ? _self.pendingBusinessPhone : pendingBusinessPhone // ignore: cast_nullable_to_non_nullable
as String?,pendingParentCategoryName: freezed == pendingParentCategoryName ? _self.pendingParentCategoryName : pendingParentCategoryName // ignore: cast_nullable_to_non_nullable
as String?,pendingBusinessCategoryName: freezed == pendingBusinessCategoryName ? _self.pendingBusinessCategoryName : pendingBusinessCategoryName // ignore: cast_nullable_to_non_nullable
as String?,pendingLicenseFileUrl: freezed == pendingLicenseFileUrl ? _self.pendingLicenseFileUrl : pendingLicenseFileUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeRequestBusinessProfileResponseDto].
extension ChangeRequestBusinessProfileResponseDtoPatterns on ChangeRequestBusinessProfileResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeRequestBusinessProfileResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeRequestBusinessProfileResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeRequestBusinessProfileResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(fromJson: _statusFromJson, toJson: _statusToJson)  BusinessChangeRequestStatus status,  String? rejectionReason,  String? pendingBusinessPhone,  String? pendingParentCategoryName,  String? pendingBusinessCategoryName,  String? pendingLicenseFileUrl,  DateTime createdAt,  DateTime? reviewedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseDto() when $default != null:
return $default(_that.id,_that.status,_that.rejectionReason,_that.pendingBusinessPhone,_that.pendingParentCategoryName,_that.pendingBusinessCategoryName,_that.pendingLicenseFileUrl,_that.createdAt,_that.reviewedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(fromJson: _statusFromJson, toJson: _statusToJson)  BusinessChangeRequestStatus status,  String? rejectionReason,  String? pendingBusinessPhone,  String? pendingParentCategoryName,  String? pendingBusinessCategoryName,  String? pendingLicenseFileUrl,  DateTime createdAt,  DateTime? reviewedAt)  $default,) {final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseDto():
return $default(_that.id,_that.status,_that.rejectionReason,_that.pendingBusinessPhone,_that.pendingParentCategoryName,_that.pendingBusinessCategoryName,_that.pendingLicenseFileUrl,_that.createdAt,_that.reviewedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(fromJson: _statusFromJson, toJson: _statusToJson)  BusinessChangeRequestStatus status,  String? rejectionReason,  String? pendingBusinessPhone,  String? pendingParentCategoryName,  String? pendingBusinessCategoryName,  String? pendingLicenseFileUrl,  DateTime createdAt,  DateTime? reviewedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChangeRequestBusinessProfileResponseDto() when $default != null:
return $default(_that.id,_that.status,_that.rejectionReason,_that.pendingBusinessPhone,_that.pendingParentCategoryName,_that.pendingBusinessCategoryName,_that.pendingLicenseFileUrl,_that.createdAt,_that.reviewedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeRequestBusinessProfileResponseDto implements ChangeRequestBusinessProfileResponseDto {
  const _ChangeRequestBusinessProfileResponseDto({required this.id, @JsonKey(fromJson: _statusFromJson, toJson: _statusToJson) required this.status, this.rejectionReason, this.pendingBusinessPhone, this.pendingParentCategoryName, this.pendingBusinessCategoryName, this.pendingLicenseFileUrl, required this.createdAt, this.reviewedAt});
  factory _ChangeRequestBusinessProfileResponseDto.fromJson(Map<String, dynamic> json) => _$ChangeRequestBusinessProfileResponseDtoFromJson(json);

@override final  int id;
@override@JsonKey(fromJson: _statusFromJson, toJson: _statusToJson) final  BusinessChangeRequestStatus status;
@override final  String? rejectionReason;
@override final  String? pendingBusinessPhone;
@override final  String? pendingParentCategoryName;
@override final  String? pendingBusinessCategoryName;
@override final  String? pendingLicenseFileUrl;
@override final  DateTime createdAt;
@override final  DateTime? reviewedAt;

/// Create a copy of ChangeRequestBusinessProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeRequestBusinessProfileResponseDtoCopyWith<_ChangeRequestBusinessProfileResponseDto> get copyWith => __$ChangeRequestBusinessProfileResponseDtoCopyWithImpl<_ChangeRequestBusinessProfileResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeRequestBusinessProfileResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeRequestBusinessProfileResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.pendingBusinessPhone, pendingBusinessPhone) || other.pendingBusinessPhone == pendingBusinessPhone)&&(identical(other.pendingParentCategoryName, pendingParentCategoryName) || other.pendingParentCategoryName == pendingParentCategoryName)&&(identical(other.pendingBusinessCategoryName, pendingBusinessCategoryName) || other.pendingBusinessCategoryName == pendingBusinessCategoryName)&&(identical(other.pendingLicenseFileUrl, pendingLicenseFileUrl) || other.pendingLicenseFileUrl == pendingLicenseFileUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,rejectionReason,pendingBusinessPhone,pendingParentCategoryName,pendingBusinessCategoryName,pendingLicenseFileUrl,createdAt,reviewedAt);

@override
String toString() {
  return 'ChangeRequestBusinessProfileResponseDto(id: $id, status: $status, rejectionReason: $rejectionReason, pendingBusinessPhone: $pendingBusinessPhone, pendingParentCategoryName: $pendingParentCategoryName, pendingBusinessCategoryName: $pendingBusinessCategoryName, pendingLicenseFileUrl: $pendingLicenseFileUrl, createdAt: $createdAt, reviewedAt: $reviewedAt)';
}


}

/// @nodoc
abstract mixin class _$ChangeRequestBusinessProfileResponseDtoCopyWith<$Res> implements $ChangeRequestBusinessProfileResponseDtoCopyWith<$Res> {
  factory _$ChangeRequestBusinessProfileResponseDtoCopyWith(_ChangeRequestBusinessProfileResponseDto value, $Res Function(_ChangeRequestBusinessProfileResponseDto) _then) = __$ChangeRequestBusinessProfileResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(fromJson: _statusFromJson, toJson: _statusToJson) BusinessChangeRequestStatus status, String? rejectionReason, String? pendingBusinessPhone, String? pendingParentCategoryName, String? pendingBusinessCategoryName, String? pendingLicenseFileUrl, DateTime createdAt, DateTime? reviewedAt
});




}
/// @nodoc
class __$ChangeRequestBusinessProfileResponseDtoCopyWithImpl<$Res>
    implements _$ChangeRequestBusinessProfileResponseDtoCopyWith<$Res> {
  __$ChangeRequestBusinessProfileResponseDtoCopyWithImpl(this._self, this._then);

  final _ChangeRequestBusinessProfileResponseDto _self;
  final $Res Function(_ChangeRequestBusinessProfileResponseDto) _then;

/// Create a copy of ChangeRequestBusinessProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? rejectionReason = freezed,Object? pendingBusinessPhone = freezed,Object? pendingParentCategoryName = freezed,Object? pendingBusinessCategoryName = freezed,Object? pendingLicenseFileUrl = freezed,Object? createdAt = null,Object? reviewedAt = freezed,}) {
  return _then(_ChangeRequestBusinessProfileResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BusinessChangeRequestStatus,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,pendingBusinessPhone: freezed == pendingBusinessPhone ? _self.pendingBusinessPhone : pendingBusinessPhone // ignore: cast_nullable_to_non_nullable
as String?,pendingParentCategoryName: freezed == pendingParentCategoryName ? _self.pendingParentCategoryName : pendingParentCategoryName // ignore: cast_nullable_to_non_nullable
as String?,pendingBusinessCategoryName: freezed == pendingBusinessCategoryName ? _self.pendingBusinessCategoryName : pendingBusinessCategoryName // ignore: cast_nullable_to_non_nullable
as String?,pendingLicenseFileUrl: freezed == pendingLicenseFileUrl ? _self.pendingLicenseFileUrl : pendingLicenseFileUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
