// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_order_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartOrderResponseDto {

 CartOrderData get data;
/// Create a copy of CartOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartOrderResponseDtoCopyWith<CartOrderResponseDto> get copyWith => _$CartOrderResponseDtoCopyWithImpl<CartOrderResponseDto>(this as CartOrderResponseDto, _$identity);

  /// Serializes this CartOrderResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartOrderResponseDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CartOrderResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $CartOrderResponseDtoCopyWith<$Res>  {
  factory $CartOrderResponseDtoCopyWith(CartOrderResponseDto value, $Res Function(CartOrderResponseDto) _then) = _$CartOrderResponseDtoCopyWithImpl;
@useResult
$Res call({
 CartOrderData data
});


$CartOrderDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CartOrderResponseDtoCopyWithImpl<$Res>
    implements $CartOrderResponseDtoCopyWith<$Res> {
  _$CartOrderResponseDtoCopyWithImpl(this._self, this._then);

  final CartOrderResponseDto _self;
  final $Res Function(CartOrderResponseDto) _then;

/// Create a copy of CartOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartOrderData,
  ));
}
/// Create a copy of CartOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartOrderDataCopyWith<$Res> get data {
  
  return $CartOrderDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartOrderResponseDto].
extension CartOrderResponseDtoPatterns on CartOrderResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartOrderResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartOrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartOrderResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CartOrderResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartOrderResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartOrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartOrderData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartOrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartOrderData data)  $default,) {final _that = this;
switch (_that) {
case _CartOrderResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartOrderData data)?  $default,) {final _that = this;
switch (_that) {
case _CartOrderResponseDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartOrderResponseDto implements CartOrderResponseDto {
  const _CartOrderResponseDto({required this.data});
  factory _CartOrderResponseDto.fromJson(Map<String, dynamic> json) => _$CartOrderResponseDtoFromJson(json);

@override final  CartOrderData data;

/// Create a copy of CartOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartOrderResponseDtoCopyWith<_CartOrderResponseDto> get copyWith => __$CartOrderResponseDtoCopyWithImpl<_CartOrderResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartOrderResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartOrderResponseDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CartOrderResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CartOrderResponseDtoCopyWith<$Res> implements $CartOrderResponseDtoCopyWith<$Res> {
  factory _$CartOrderResponseDtoCopyWith(_CartOrderResponseDto value, $Res Function(_CartOrderResponseDto) _then) = __$CartOrderResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 CartOrderData data
});


@override $CartOrderDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CartOrderResponseDtoCopyWithImpl<$Res>
    implements _$CartOrderResponseDtoCopyWith<$Res> {
  __$CartOrderResponseDtoCopyWithImpl(this._self, this._then);

  final _CartOrderResponseDto _self;
  final $Res Function(_CartOrderResponseDto) _then;

/// Create a copy of CartOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_CartOrderResponseDto(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartOrderData,
  ));
}

/// Create a copy of CartOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartOrderDataCopyWith<$Res> get data {
  
  return $CartOrderDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CartOrderData {

 String? get customerKey; String? get customerName; DeliveryAddress get deliveryAddress; int get totalProductAmount; int get totalDeliveryFee; int get totalJejuDeliveryFee; int get totalAmount; List<ProductDto> get products;
/// Create a copy of CartOrderData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartOrderDataCopyWith<CartOrderData> get copyWith => _$CartOrderDataCopyWithImpl<CartOrderData>(this as CartOrderData, _$identity);

  /// Serializes this CartOrderData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartOrderData&&(identical(other.customerKey, customerKey) || other.customerKey == customerKey)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.totalProductAmount, totalProductAmount) || other.totalProductAmount == totalProductAmount)&&(identical(other.totalDeliveryFee, totalDeliveryFee) || other.totalDeliveryFee == totalDeliveryFee)&&(identical(other.totalJejuDeliveryFee, totalJejuDeliveryFee) || other.totalJejuDeliveryFee == totalJejuDeliveryFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerKey,customerName,deliveryAddress,totalProductAmount,totalDeliveryFee,totalJejuDeliveryFee,totalAmount,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'CartOrderData(customerKey: $customerKey, customerName: $customerName, deliveryAddress: $deliveryAddress, totalProductAmount: $totalProductAmount, totalDeliveryFee: $totalDeliveryFee, totalJejuDeliveryFee: $totalJejuDeliveryFee, totalAmount: $totalAmount, products: $products)';
}


}

/// @nodoc
abstract mixin class $CartOrderDataCopyWith<$Res>  {
  factory $CartOrderDataCopyWith(CartOrderData value, $Res Function(CartOrderData) _then) = _$CartOrderDataCopyWithImpl;
@useResult
$Res call({
 String? customerKey, String? customerName, DeliveryAddress deliveryAddress, int totalProductAmount, int totalDeliveryFee, int totalJejuDeliveryFee, int totalAmount, List<ProductDto> products
});


$DeliveryAddressCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class _$CartOrderDataCopyWithImpl<$Res>
    implements $CartOrderDataCopyWith<$Res> {
  _$CartOrderDataCopyWithImpl(this._self, this._then);

  final CartOrderData _self;
  final $Res Function(CartOrderData) _then;

/// Create a copy of CartOrderData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerKey = freezed,Object? customerName = freezed,Object? deliveryAddress = null,Object? totalProductAmount = null,Object? totalDeliveryFee = null,Object? totalJejuDeliveryFee = null,Object? totalAmount = null,Object? products = null,}) {
  return _then(_self.copyWith(
customerKey: freezed == customerKey ? _self.customerKey : customerKey // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as DeliveryAddress,totalProductAmount: null == totalProductAmount ? _self.totalProductAmount : totalProductAmount // ignore: cast_nullable_to_non_nullable
as int,totalDeliveryFee: null == totalDeliveryFee ? _self.totalDeliveryFee : totalDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalJejuDeliveryFee: null == totalJejuDeliveryFee ? _self.totalJejuDeliveryFee : totalJejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDto>,
  ));
}
/// Create a copy of CartOrderData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<$Res> get deliveryAddress {
  
  return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartOrderData].
extension CartOrderDataPatterns on CartOrderData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartOrderData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartOrderData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartOrderData value)  $default,){
final _that = this;
switch (_that) {
case _CartOrderData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartOrderData value)?  $default,){
final _that = this;
switch (_that) {
case _CartOrderData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? customerKey,  String? customerName,  DeliveryAddress deliveryAddress,  int totalProductAmount,  int totalDeliveryFee,  int totalJejuDeliveryFee,  int totalAmount,  List<ProductDto> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartOrderData() when $default != null:
return $default(_that.customerKey,_that.customerName,_that.deliveryAddress,_that.totalProductAmount,_that.totalDeliveryFee,_that.totalJejuDeliveryFee,_that.totalAmount,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? customerKey,  String? customerName,  DeliveryAddress deliveryAddress,  int totalProductAmount,  int totalDeliveryFee,  int totalJejuDeliveryFee,  int totalAmount,  List<ProductDto> products)  $default,) {final _that = this;
switch (_that) {
case _CartOrderData():
return $default(_that.customerKey,_that.customerName,_that.deliveryAddress,_that.totalProductAmount,_that.totalDeliveryFee,_that.totalJejuDeliveryFee,_that.totalAmount,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? customerKey,  String? customerName,  DeliveryAddress deliveryAddress,  int totalProductAmount,  int totalDeliveryFee,  int totalJejuDeliveryFee,  int totalAmount,  List<ProductDto> products)?  $default,) {final _that = this;
switch (_that) {
case _CartOrderData() when $default != null:
return $default(_that.customerKey,_that.customerName,_that.deliveryAddress,_that.totalProductAmount,_that.totalDeliveryFee,_that.totalJejuDeliveryFee,_that.totalAmount,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartOrderData implements CartOrderData {
  const _CartOrderData({this.customerKey, this.customerName, required this.deliveryAddress, required this.totalProductAmount, required this.totalDeliveryFee, required this.totalJejuDeliveryFee, required this.totalAmount, required final  List<ProductDto> products}): _products = products;
  factory _CartOrderData.fromJson(Map<String, dynamic> json) => _$CartOrderDataFromJson(json);

@override final  String? customerKey;
@override final  String? customerName;
@override final  DeliveryAddress deliveryAddress;
@override final  int totalProductAmount;
@override final  int totalDeliveryFee;
@override final  int totalJejuDeliveryFee;
@override final  int totalAmount;
 final  List<ProductDto> _products;
@override List<ProductDto> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of CartOrderData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartOrderDataCopyWith<_CartOrderData> get copyWith => __$CartOrderDataCopyWithImpl<_CartOrderData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartOrderDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartOrderData&&(identical(other.customerKey, customerKey) || other.customerKey == customerKey)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.totalProductAmount, totalProductAmount) || other.totalProductAmount == totalProductAmount)&&(identical(other.totalDeliveryFee, totalDeliveryFee) || other.totalDeliveryFee == totalDeliveryFee)&&(identical(other.totalJejuDeliveryFee, totalJejuDeliveryFee) || other.totalJejuDeliveryFee == totalJejuDeliveryFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerKey,customerName,deliveryAddress,totalProductAmount,totalDeliveryFee,totalJejuDeliveryFee,totalAmount,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'CartOrderData(customerKey: $customerKey, customerName: $customerName, deliveryAddress: $deliveryAddress, totalProductAmount: $totalProductAmount, totalDeliveryFee: $totalDeliveryFee, totalJejuDeliveryFee: $totalJejuDeliveryFee, totalAmount: $totalAmount, products: $products)';
}


}

/// @nodoc
abstract mixin class _$CartOrderDataCopyWith<$Res> implements $CartOrderDataCopyWith<$Res> {
  factory _$CartOrderDataCopyWith(_CartOrderData value, $Res Function(_CartOrderData) _then) = __$CartOrderDataCopyWithImpl;
@override @useResult
$Res call({
 String? customerKey, String? customerName, DeliveryAddress deliveryAddress, int totalProductAmount, int totalDeliveryFee, int totalJejuDeliveryFee, int totalAmount, List<ProductDto> products
});


@override $DeliveryAddressCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class __$CartOrderDataCopyWithImpl<$Res>
    implements _$CartOrderDataCopyWith<$Res> {
  __$CartOrderDataCopyWithImpl(this._self, this._then);

  final _CartOrderData _self;
  final $Res Function(_CartOrderData) _then;

/// Create a copy of CartOrderData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerKey = freezed,Object? customerName = freezed,Object? deliveryAddress = null,Object? totalProductAmount = null,Object? totalDeliveryFee = null,Object? totalJejuDeliveryFee = null,Object? totalAmount = null,Object? products = null,}) {
  return _then(_CartOrderData(
customerKey: freezed == customerKey ? _self.customerKey : customerKey // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as DeliveryAddress,totalProductAmount: null == totalProductAmount ? _self.totalProductAmount : totalProductAmount // ignore: cast_nullable_to_non_nullable
as int,totalDeliveryFee: null == totalDeliveryFee ? _self.totalDeliveryFee : totalDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalJejuDeliveryFee: null == totalJejuDeliveryFee ? _self.totalJejuDeliveryFee : totalJejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDto>,
  ));
}

/// Create a copy of CartOrderData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<$Res> get deliveryAddress {
  
  return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// @nodoc
mixin _$DeliveryAddress {

 int get id; String get name; String get recipientName; String get zipCode; String get address; String get addressDetail; String get phone;
/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<DeliveryAddress> get copyWith => _$DeliveryAddressCopyWithImpl<DeliveryAddress>(this as DeliveryAddress, _$identity);

  /// Serializes this DeliveryAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,recipientName,zipCode,address,addressDetail,phone);

@override
String toString() {
  return 'DeliveryAddress(id: $id, name: $name, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $DeliveryAddressCopyWith<$Res>  {
  factory $DeliveryAddressCopyWith(DeliveryAddress value, $Res Function(DeliveryAddress) _then) = _$DeliveryAddressCopyWithImpl;
@useResult
$Res call({
 int id, String name, String recipientName, String zipCode, String address, String addressDetail, String phone
});




}
/// @nodoc
class _$DeliveryAddressCopyWithImpl<$Res>
    implements $DeliveryAddressCopyWith<$Res> {
  _$DeliveryAddressCopyWithImpl(this._self, this._then);

  final DeliveryAddress _self;
  final $Res Function(DeliveryAddress) _then;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? recipientName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? phone = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: null == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryAddress].
extension DeliveryAddressPatterns on DeliveryAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryAddress value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryAddress value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
return $default(_that.id,_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone)  $default,) {final _that = this;
switch (_that) {
case _DeliveryAddress():
return $default(_that.id,_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
return $default(_that.id,_that.name,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryAddress implements DeliveryAddress {
  const _DeliveryAddress({required this.id, required this.name, required this.recipientName, required this.zipCode, required this.address, required this.addressDetail, required this.phone});
  factory _DeliveryAddress.fromJson(Map<String, dynamic> json) => _$DeliveryAddressFromJson(json);

@override final  int id;
@override final  String name;
@override final  String recipientName;
@override final  String zipCode;
@override final  String address;
@override final  String addressDetail;
@override final  String phone;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryAddressCopyWith<_DeliveryAddress> get copyWith => __$DeliveryAddressCopyWithImpl<_DeliveryAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,recipientName,zipCode,address,addressDetail,phone);

@override
String toString() {
  return 'DeliveryAddress(id: $id, name: $name, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$DeliveryAddressCopyWith<$Res> implements $DeliveryAddressCopyWith<$Res> {
  factory _$DeliveryAddressCopyWith(_DeliveryAddress value, $Res Function(_DeliveryAddress) _then) = __$DeliveryAddressCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String recipientName, String zipCode, String address, String addressDetail, String phone
});




}
/// @nodoc
class __$DeliveryAddressCopyWithImpl<$Res>
    implements _$DeliveryAddressCopyWith<$Res> {
  __$DeliveryAddressCopyWithImpl(this._self, this._then);

  final _DeliveryAddress _self;
  final $Res Function(_DeliveryAddress) _then;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? recipientName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? phone = null,}) {
  return _then(_DeliveryAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: null == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductDto {

 int get productId; String get productName; String get thumbnailImageUrl; List<ProductItemDto> get items; int get productAmount; int get deliveryFee; int get jejuDeliveryFee; int get totalAmount; bool get isWeekendShipping; int get deliveryDays; int get shippingLeadTime; bool get isSameDayShipping; String get shippingCutoffTime;
/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<ProductDto> get copyWith => _$ProductDtoCopyWithImpl<ProductDto>(this as ProductDto, _$identity);

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.productAmount, productAmount) || other.productAmount == productAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.isWeekendShipping, isWeekendShipping) || other.isWeekendShipping == isWeekendShipping)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productName,thumbnailImageUrl,const DeepCollectionEquality().hash(items),productAmount,deliveryFee,jejuDeliveryFee,totalAmount,isWeekendShipping,deliveryDays,shippingLeadTime,isSameDayShipping,shippingCutoffTime);

@override
String toString() {
  return 'ProductDto(productId: $productId, productName: $productName, thumbnailImageUrl: $thumbnailImageUrl, items: $items, productAmount: $productAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, totalAmount: $totalAmount, isWeekendShipping: $isWeekendShipping, deliveryDays: $deliveryDays, shippingLeadTime: $shippingLeadTime, isSameDayShipping: $isSameDayShipping, shippingCutoffTime: $shippingCutoffTime)';
}


}

/// @nodoc
abstract mixin class $ProductDtoCopyWith<$Res>  {
  factory $ProductDtoCopyWith(ProductDto value, $Res Function(ProductDto) _then) = _$ProductDtoCopyWithImpl;
@useResult
$Res call({
 int productId, String productName, String thumbnailImageUrl, List<ProductItemDto> items, int productAmount, int deliveryFee, int jejuDeliveryFee, int totalAmount, bool isWeekendShipping, int deliveryDays, int shippingLeadTime, bool isSameDayShipping, String shippingCutoffTime
});




}
/// @nodoc
class _$ProductDtoCopyWithImpl<$Res>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._self, this._then);

  final ProductDto _self;
  final $Res Function(ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? productName = null,Object? thumbnailImageUrl = null,Object? items = null,Object? productAmount = null,Object? deliveryFee = null,Object? jejuDeliveryFee = null,Object? totalAmount = null,Object? isWeekendShipping = null,Object? deliveryDays = null,Object? shippingLeadTime = null,Object? isSameDayShipping = null,Object? shippingCutoffTime = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductItemDto>,productAmount: null == productAmount ? _self.productAmount : productAmount // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,jejuDeliveryFee: null == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,isWeekendShipping: null == isWeekendShipping ? _self.isWeekendShipping : isWeekendShipping // ignore: cast_nullable_to_non_nullable
as bool,deliveryDays: null == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int,shippingLeadTime: null == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int,isSameDayShipping: null == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool,shippingCutoffTime: null == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDto].
extension ProductDtoPatterns on ProductDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productId,  String productName,  String thumbnailImageUrl,  List<ProductItemDto> items,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  bool isWeekendShipping,  int deliveryDays,  int shippingLeadTime,  bool isSameDayShipping,  String shippingCutoffTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.productId,_that.productName,_that.thumbnailImageUrl,_that.items,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.isWeekendShipping,_that.deliveryDays,_that.shippingLeadTime,_that.isSameDayShipping,_that.shippingCutoffTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productId,  String productName,  String thumbnailImageUrl,  List<ProductItemDto> items,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  bool isWeekendShipping,  int deliveryDays,  int shippingLeadTime,  bool isSameDayShipping,  String shippingCutoffTime)  $default,) {final _that = this;
switch (_that) {
case _ProductDto():
return $default(_that.productId,_that.productName,_that.thumbnailImageUrl,_that.items,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.isWeekendShipping,_that.deliveryDays,_that.shippingLeadTime,_that.isSameDayShipping,_that.shippingCutoffTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productId,  String productName,  String thumbnailImageUrl,  List<ProductItemDto> items,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  bool isWeekendShipping,  int deliveryDays,  int shippingLeadTime,  bool isSameDayShipping,  String shippingCutoffTime)?  $default,) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.productId,_that.productName,_that.thumbnailImageUrl,_that.items,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.isWeekendShipping,_that.deliveryDays,_that.shippingLeadTime,_that.isSameDayShipping,_that.shippingCutoffTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDto implements ProductDto {
  const _ProductDto({required this.productId, required this.productName, required this.thumbnailImageUrl, required final  List<ProductItemDto> items, required this.productAmount, required this.deliveryFee, required this.jejuDeliveryFee, required this.totalAmount, required this.isWeekendShipping, required this.deliveryDays, required this.shippingLeadTime, required this.isSameDayShipping, required this.shippingCutoffTime}): _items = items;
  factory _ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

@override final  int productId;
@override final  String productName;
@override final  String thumbnailImageUrl;
 final  List<ProductItemDto> _items;
@override List<ProductItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int productAmount;
@override final  int deliveryFee;
@override final  int jejuDeliveryFee;
@override final  int totalAmount;
@override final  bool isWeekendShipping;
@override final  int deliveryDays;
@override final  int shippingLeadTime;
@override final  bool isSameDayShipping;
@override final  String shippingCutoffTime;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDtoCopyWith<_ProductDto> get copyWith => __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.productAmount, productAmount) || other.productAmount == productAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.isWeekendShipping, isWeekendShipping) || other.isWeekendShipping == isWeekendShipping)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productName,thumbnailImageUrl,const DeepCollectionEquality().hash(_items),productAmount,deliveryFee,jejuDeliveryFee,totalAmount,isWeekendShipping,deliveryDays,shippingLeadTime,isSameDayShipping,shippingCutoffTime);

@override
String toString() {
  return 'ProductDto(productId: $productId, productName: $productName, thumbnailImageUrl: $thumbnailImageUrl, items: $items, productAmount: $productAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, totalAmount: $totalAmount, isWeekendShipping: $isWeekendShipping, deliveryDays: $deliveryDays, shippingLeadTime: $shippingLeadTime, isSameDayShipping: $isSameDayShipping, shippingCutoffTime: $shippingCutoffTime)';
}


}

/// @nodoc
abstract mixin class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(_ProductDto value, $Res Function(_ProductDto) _then) = __$ProductDtoCopyWithImpl;
@override @useResult
$Res call({
 int productId, String productName, String thumbnailImageUrl, List<ProductItemDto> items, int productAmount, int deliveryFee, int jejuDeliveryFee, int totalAmount, bool isWeekendShipping, int deliveryDays, int shippingLeadTime, bool isSameDayShipping, String shippingCutoffTime
});




}
/// @nodoc
class __$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(this._self, this._then);

  final _ProductDto _self;
  final $Res Function(_ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productName = null,Object? thumbnailImageUrl = null,Object? items = null,Object? productAmount = null,Object? deliveryFee = null,Object? jejuDeliveryFee = null,Object? totalAmount = null,Object? isWeekendShipping = null,Object? deliveryDays = null,Object? shippingLeadTime = null,Object? isSameDayShipping = null,Object? shippingCutoffTime = null,}) {
  return _then(_ProductDto(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductItemDto>,productAmount: null == productAmount ? _self.productAmount : productAmount // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,jejuDeliveryFee: null == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,isWeekendShipping: null == isWeekendShipping ? _self.isWeekendShipping : isWeekendShipping // ignore: cast_nullable_to_non_nullable
as bool,deliveryDays: null == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int,shippingLeadTime: null == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int,isSameDayShipping: null == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool,shippingCutoffTime: null == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductItemDto {

 int get productOptionId; String get optionName; int get quantity; int get unitPrice; int get itemAmount;
/// Create a copy of ProductItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductItemDtoCopyWith<ProductItemDto> get copyWith => _$ProductItemDtoCopyWithImpl<ProductItemDto>(this as ProductItemDto, _$identity);

  /// Serializes this ProductItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductItemDto&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.itemAmount, itemAmount) || other.itemAmount == itemAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productOptionId,optionName,quantity,unitPrice,itemAmount);

@override
String toString() {
  return 'ProductItemDto(productOptionId: $productOptionId, optionName: $optionName, quantity: $quantity, unitPrice: $unitPrice, itemAmount: $itemAmount)';
}


}

/// @nodoc
abstract mixin class $ProductItemDtoCopyWith<$Res>  {
  factory $ProductItemDtoCopyWith(ProductItemDto value, $Res Function(ProductItemDto) _then) = _$ProductItemDtoCopyWithImpl;
@useResult
$Res call({
 int productOptionId, String optionName, int quantity, int unitPrice, int itemAmount
});




}
/// @nodoc
class _$ProductItemDtoCopyWithImpl<$Res>
    implements $ProductItemDtoCopyWith<$Res> {
  _$ProductItemDtoCopyWithImpl(this._self, this._then);

  final ProductItemDto _self;
  final $Res Function(ProductItemDto) _then;

/// Create a copy of ProductItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productOptionId = null,Object? optionName = null,Object? quantity = null,Object? unitPrice = null,Object? itemAmount = null,}) {
  return _then(_self.copyWith(
productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,itemAmount: null == itemAmount ? _self.itemAmount : itemAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductItemDto].
extension ProductItemDtoPatterns on ProductItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductItemDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productOptionId,  String optionName,  int quantity,  int unitPrice,  int itemAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductItemDto() when $default != null:
return $default(_that.productOptionId,_that.optionName,_that.quantity,_that.unitPrice,_that.itemAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productOptionId,  String optionName,  int quantity,  int unitPrice,  int itemAmount)  $default,) {final _that = this;
switch (_that) {
case _ProductItemDto():
return $default(_that.productOptionId,_that.optionName,_that.quantity,_that.unitPrice,_that.itemAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productOptionId,  String optionName,  int quantity,  int unitPrice,  int itemAmount)?  $default,) {final _that = this;
switch (_that) {
case _ProductItemDto() when $default != null:
return $default(_that.productOptionId,_that.optionName,_that.quantity,_that.unitPrice,_that.itemAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductItemDto implements ProductItemDto {
  const _ProductItemDto({required this.productOptionId, required this.optionName, required this.quantity, required this.unitPrice, required this.itemAmount});
  factory _ProductItemDto.fromJson(Map<String, dynamic> json) => _$ProductItemDtoFromJson(json);

@override final  int productOptionId;
@override final  String optionName;
@override final  int quantity;
@override final  int unitPrice;
@override final  int itemAmount;

/// Create a copy of ProductItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductItemDtoCopyWith<_ProductItemDto> get copyWith => __$ProductItemDtoCopyWithImpl<_ProductItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductItemDto&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.itemAmount, itemAmount) || other.itemAmount == itemAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productOptionId,optionName,quantity,unitPrice,itemAmount);

@override
String toString() {
  return 'ProductItemDto(productOptionId: $productOptionId, optionName: $optionName, quantity: $quantity, unitPrice: $unitPrice, itemAmount: $itemAmount)';
}


}

/// @nodoc
abstract mixin class _$ProductItemDtoCopyWith<$Res> implements $ProductItemDtoCopyWith<$Res> {
  factory _$ProductItemDtoCopyWith(_ProductItemDto value, $Res Function(_ProductItemDto) _then) = __$ProductItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int productOptionId, String optionName, int quantity, int unitPrice, int itemAmount
});




}
/// @nodoc
class __$ProductItemDtoCopyWithImpl<$Res>
    implements _$ProductItemDtoCopyWith<$Res> {
  __$ProductItemDtoCopyWithImpl(this._self, this._then);

  final _ProductItemDto _self;
  final $Res Function(_ProductItemDto) _then;

/// Create a copy of ProductItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productOptionId = null,Object? optionName = null,Object? quantity = null,Object? unitPrice = null,Object? itemAmount = null,}) {
  return _then(_ProductItemDto(
productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,itemAmount: null == itemAmount ? _self.itemAmount : itemAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
