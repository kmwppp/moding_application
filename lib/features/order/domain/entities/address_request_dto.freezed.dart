// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressRequestDto {

 String get name; String get recipientName; String get zipCode; String get address; String get addressDetail; String get phone; bool get isDefault;
/// Create a copy of AddressRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressRequestDtoCopyWith<AddressRequestDto> get copyWith => _$AddressRequestDtoCopyWithImpl<AddressRequestDto>(this as AddressRequestDto, _$identity);

  /// Serializes this AddressRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,recipientName,zipCode,address,addressDetail,phone,isDefault);

@override
String toString() {
  return 'AddressRequestDto(name: $name, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $AddressRequestDtoCopyWith<$Res>  {
  factory $AddressRequestDtoCopyWith(AddressRequestDto value, $Res Function(AddressRequestDto) _then) = _$AddressRequestDtoCopyWithImpl;
@useResult
$Res call({
 String name, String recipientName, String zipCode, String address, String addressDetail, String phone, bool isDefault
});




}
/// @nodoc
class _$AddressRequestDtoCopyWithImpl<$Res>
    implements $AddressRequestDtoCopyWith<$Res> {
  _$AddressRequestDtoCopyWithImpl(this._self, this._then);

  final AddressRequestDto _self;
  final $Res Function(AddressRequestDto) _then;

/// Create a copy of AddressRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? recipientName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? phone = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: null == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressRequestDto].
extension AddressRequestDtoPatterns on AddressRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _AddressRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddressRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressRequestDto() when $default != null:
return $default(_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _AddressRequestDto():
return $default(_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _AddressRequestDto() when $default != null:
return $default(_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressRequestDto implements AddressRequestDto {
  const _AddressRequestDto({required this.name, required this.recipientName, required this.zipCode, required this.address, required this.addressDetail, required this.phone, this.isDefault = false});
  factory _AddressRequestDto.fromJson(Map<String, dynamic> json) => _$AddressRequestDtoFromJson(json);

@override final  String name;
@override final  String recipientName;
@override final  String zipCode;
@override final  String address;
@override final  String addressDetail;
@override final  String phone;
@override@JsonKey() final  bool isDefault;

/// Create a copy of AddressRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressRequestDtoCopyWith<_AddressRequestDto> get copyWith => __$AddressRequestDtoCopyWithImpl<_AddressRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,recipientName,zipCode,address,addressDetail,phone,isDefault);

@override
String toString() {
  return 'AddressRequestDto(name: $name, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$AddressRequestDtoCopyWith<$Res> implements $AddressRequestDtoCopyWith<$Res> {
  factory _$AddressRequestDtoCopyWith(_AddressRequestDto value, $Res Function(_AddressRequestDto) _then) = __$AddressRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String recipientName, String zipCode, String address, String addressDetail, String phone, bool isDefault
});




}
/// @nodoc
class __$AddressRequestDtoCopyWithImpl<$Res>
    implements _$AddressRequestDtoCopyWith<$Res> {
  __$AddressRequestDtoCopyWithImpl(this._self, this._then);

  final _AddressRequestDto _self;
  final $Res Function(_AddressRequestDto) _then;

/// Create a copy of AddressRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? recipientName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? phone = null,Object? isDefault = null,}) {
  return _then(_AddressRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: null == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
