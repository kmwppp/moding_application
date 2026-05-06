// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellerInfoDto {

 int get sellerProfileId; String get businessName; String get ownerName; String get businessNumber; String get address; String get phone;
/// Create a copy of SellerInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerInfoDtoCopyWith<SellerInfoDto> get copyWith => _$SellerInfoDtoCopyWithImpl<SellerInfoDto>(this as SellerInfoDto, _$identity);

  /// Serializes this SellerInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerInfoDto&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.businessNumber, businessNumber) || other.businessNumber == businessNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sellerProfileId,businessName,ownerName,businessNumber,address,phone);

@override
String toString() {
  return 'SellerInfoDto(sellerProfileId: $sellerProfileId, businessName: $businessName, ownerName: $ownerName, businessNumber: $businessNumber, address: $address, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $SellerInfoDtoCopyWith<$Res>  {
  factory $SellerInfoDtoCopyWith(SellerInfoDto value, $Res Function(SellerInfoDto) _then) = _$SellerInfoDtoCopyWithImpl;
@useResult
$Res call({
 int sellerProfileId, String businessName, String ownerName, String businessNumber, String address, String phone
});




}
/// @nodoc
class _$SellerInfoDtoCopyWithImpl<$Res>
    implements $SellerInfoDtoCopyWith<$Res> {
  _$SellerInfoDtoCopyWithImpl(this._self, this._then);

  final SellerInfoDto _self;
  final $Res Function(SellerInfoDto) _then;

/// Create a copy of SellerInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sellerProfileId = null,Object? businessName = null,Object? ownerName = null,Object? businessNumber = null,Object? address = null,Object? phone = null,}) {
  return _then(_self.copyWith(
sellerProfileId: null == sellerProfileId ? _self.sellerProfileId : sellerProfileId // ignore: cast_nullable_to_non_nullable
as int,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,businessNumber: null == businessNumber ? _self.businessNumber : businessNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellerInfoDto].
extension SellerInfoDtoPatterns on SellerInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _SellerInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellerInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int sellerProfileId,  String businessName,  String ownerName,  String businessNumber,  String address,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerInfoDto() when $default != null:
return $default(_that.sellerProfileId,_that.businessName,_that.ownerName,_that.businessNumber,_that.address,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int sellerProfileId,  String businessName,  String ownerName,  String businessNumber,  String address,  String phone)  $default,) {final _that = this;
switch (_that) {
case _SellerInfoDto():
return $default(_that.sellerProfileId,_that.businessName,_that.ownerName,_that.businessNumber,_that.address,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int sellerProfileId,  String businessName,  String ownerName,  String businessNumber,  String address,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _SellerInfoDto() when $default != null:
return $default(_that.sellerProfileId,_that.businessName,_that.ownerName,_that.businessNumber,_that.address,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellerInfoDto implements SellerInfoDto {
  const _SellerInfoDto({required this.sellerProfileId, required this.businessName, required this.ownerName, required this.businessNumber, required this.address, required this.phone});
  factory _SellerInfoDto.fromJson(Map<String, dynamic> json) => _$SellerInfoDtoFromJson(json);

@override final  int sellerProfileId;
@override final  String businessName;
@override final  String ownerName;
@override final  String businessNumber;
@override final  String address;
@override final  String phone;

/// Create a copy of SellerInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerInfoDtoCopyWith<_SellerInfoDto> get copyWith => __$SellerInfoDtoCopyWithImpl<_SellerInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellerInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerInfoDto&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.businessNumber, businessNumber) || other.businessNumber == businessNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sellerProfileId,businessName,ownerName,businessNumber,address,phone);

@override
String toString() {
  return 'SellerInfoDto(sellerProfileId: $sellerProfileId, businessName: $businessName, ownerName: $ownerName, businessNumber: $businessNumber, address: $address, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$SellerInfoDtoCopyWith<$Res> implements $SellerInfoDtoCopyWith<$Res> {
  factory _$SellerInfoDtoCopyWith(_SellerInfoDto value, $Res Function(_SellerInfoDto) _then) = __$SellerInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 int sellerProfileId, String businessName, String ownerName, String businessNumber, String address, String phone
});




}
/// @nodoc
class __$SellerInfoDtoCopyWithImpl<$Res>
    implements _$SellerInfoDtoCopyWith<$Res> {
  __$SellerInfoDtoCopyWithImpl(this._self, this._then);

  final _SellerInfoDto _self;
  final $Res Function(_SellerInfoDto) _then;

/// Create a copy of SellerInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sellerProfileId = null,Object? businessName = null,Object? ownerName = null,Object? businessNumber = null,Object? address = null,Object? phone = null,}) {
  return _then(_SellerInfoDto(
sellerProfileId: null == sellerProfileId ? _self.sellerProfileId : sellerProfileId // ignore: cast_nullable_to_non_nullable
as int,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,businessNumber: null == businessNumber ? _self.businessNumber : businessNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
