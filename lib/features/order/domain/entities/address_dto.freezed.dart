// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressDto {

 int get id; String get name; String get recipientName; String get zipCode; String get address; String get addressDetail; String get phone; bool get isDefault;
/// Create a copy of AddressDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<AddressDto> get copyWith => _$AddressDtoCopyWithImpl<AddressDto>(this as AddressDto, _$identity);

  /// Serializes this AddressDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,recipientName,zipCode,address,addressDetail,phone,isDefault);

@override
String toString() {
  return 'AddressDto(id: $id, name: $name, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $AddressDtoCopyWith<$Res>  {
  factory $AddressDtoCopyWith(AddressDto value, $Res Function(AddressDto) _then) = _$AddressDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String recipientName, String zipCode, String address, String addressDetail, String phone, bool isDefault
});




}
/// @nodoc
class _$AddressDtoCopyWithImpl<$Res>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._self, this._then);

  final AddressDto _self;
  final $Res Function(AddressDto) _then;

/// Create a copy of AddressDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? recipientName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? phone = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [AddressDto].
extension AddressDtoPatterns on AddressDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressDto value)  $default,){
final _that = this;
switch (_that) {
case _AddressDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddressDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressDto() when $default != null:
return $default(_that.id,_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _AddressDto():
return $default(_that.id,_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _AddressDto() when $default != null:
return $default(_that.id,_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressDto implements AddressDto {
  const _AddressDto({required this.id, required this.name, required this.recipientName, required this.zipCode, required this.address, required this.addressDetail, required this.phone, this.isDefault = false});
  factory _AddressDto.fromJson(Map<String, dynamic> json) => _$AddressDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String recipientName;
@override final  String zipCode;
@override final  String address;
@override final  String addressDetail;
@override final  String phone;
@override@JsonKey() final  bool isDefault;

/// Create a copy of AddressDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressDtoCopyWith<_AddressDto> get copyWith => __$AddressDtoCopyWithImpl<_AddressDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,recipientName,zipCode,address,addressDetail,phone,isDefault);

@override
String toString() {
  return 'AddressDto(id: $id, name: $name, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$AddressDtoCopyWith<$Res> implements $AddressDtoCopyWith<$Res> {
  factory _$AddressDtoCopyWith(_AddressDto value, $Res Function(_AddressDto) _then) = __$AddressDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String recipientName, String zipCode, String address, String addressDetail, String phone, bool isDefault
});




}
/// @nodoc
class __$AddressDtoCopyWithImpl<$Res>
    implements _$AddressDtoCopyWith<$Res> {
  __$AddressDtoCopyWithImpl(this._self, this._then);

  final _AddressDto _self;
  final $Res Function(_AddressDto) _then;

/// Create a copy of AddressDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? recipientName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? phone = null,Object? isDefault = null,}) {
  return _then(_AddressDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
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


/// @nodoc
mixin _$AddressListResponse {

 List<AddressDto> get data;
/// Create a copy of AddressListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressListResponseCopyWith<AddressListResponse> get copyWith => _$AddressListResponseCopyWithImpl<AddressListResponse>(this as AddressListResponse, _$identity);

  /// Serializes this AddressListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressListResponse&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AddressListResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $AddressListResponseCopyWith<$Res>  {
  factory $AddressListResponseCopyWith(AddressListResponse value, $Res Function(AddressListResponse) _then) = _$AddressListResponseCopyWithImpl;
@useResult
$Res call({
 List<AddressDto> data
});




}
/// @nodoc
class _$AddressListResponseCopyWithImpl<$Res>
    implements $AddressListResponseCopyWith<$Res> {
  _$AddressListResponseCopyWithImpl(this._self, this._then);

  final AddressListResponse _self;
  final $Res Function(AddressListResponse) _then;

/// Create a copy of AddressListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AddressDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressListResponse].
extension AddressListResponsePatterns on AddressListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressListResponse value)  $default,){
final _that = this;
switch (_that) {
case _AddressListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AddressListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AddressDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AddressDto> data)  $default,) {final _that = this;
switch (_that) {
case _AddressListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AddressDto> data)?  $default,) {final _that = this;
switch (_that) {
case _AddressListResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressListResponse implements AddressListResponse {
  const _AddressListResponse({required final  List<AddressDto> data}): _data = data;
  factory _AddressListResponse.fromJson(Map<String, dynamic> json) => _$AddressListResponseFromJson(json);

 final  List<AddressDto> _data;
@override List<AddressDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AddressListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressListResponseCopyWith<_AddressListResponse> get copyWith => __$AddressListResponseCopyWithImpl<_AddressListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressListResponse&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AddressListResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$AddressListResponseCopyWith<$Res> implements $AddressListResponseCopyWith<$Res> {
  factory _$AddressListResponseCopyWith(_AddressListResponse value, $Res Function(_AddressListResponse) _then) = __$AddressListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<AddressDto> data
});




}
/// @nodoc
class __$AddressListResponseCopyWithImpl<$Res>
    implements _$AddressListResponseCopyWith<$Res> {
  __$AddressListResponseCopyWithImpl(this._self, this._then);

  final _AddressListResponse _self;
  final $Res Function(_AddressListResponse) _then;

/// Create a copy of AddressListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_AddressListResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AddressDto>,
  ));
}


}

// dart format on
