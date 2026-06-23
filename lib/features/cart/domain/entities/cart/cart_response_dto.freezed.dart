// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartResponseDto {

 List<CartItemDto> get data;
/// Create a copy of CartResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartResponseDtoCopyWith<CartResponseDto> get copyWith => _$CartResponseDtoCopyWithImpl<CartResponseDto>(this as CartResponseDto, _$identity);

  /// Serializes this CartResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartResponseDto&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CartResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $CartResponseDtoCopyWith<$Res>  {
  factory $CartResponseDtoCopyWith(CartResponseDto value, $Res Function(CartResponseDto) _then) = _$CartResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<CartItemDto> data
});




}
/// @nodoc
class _$CartResponseDtoCopyWithImpl<$Res>
    implements $CartResponseDtoCopyWith<$Res> {
  _$CartResponseDtoCopyWithImpl(this._self, this._then);

  final CartResponseDto _self;
  final $Res Function(CartResponseDto) _then;

/// Create a copy of CartResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CartItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CartResponseDto].
extension CartResponseDtoPatterns on CartResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CartResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartItemDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartItemDto> data)  $default,) {final _that = this;
switch (_that) {
case _CartResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartItemDto> data)?  $default,) {final _that = this;
switch (_that) {
case _CartResponseDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartResponseDto implements CartResponseDto {
  const _CartResponseDto({required final  List<CartItemDto> data}): _data = data;
  factory _CartResponseDto.fromJson(Map<String, dynamic> json) => _$CartResponseDtoFromJson(json);

 final  List<CartItemDto> _data;
@override List<CartItemDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of CartResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartResponseDtoCopyWith<_CartResponseDto> get copyWith => __$CartResponseDtoCopyWithImpl<_CartResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartResponseDto&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CartResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CartResponseDtoCopyWith<$Res> implements $CartResponseDtoCopyWith<$Res> {
  factory _$CartResponseDtoCopyWith(_CartResponseDto value, $Res Function(_CartResponseDto) _then) = __$CartResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<CartItemDto> data
});




}
/// @nodoc
class __$CartResponseDtoCopyWithImpl<$Res>
    implements _$CartResponseDtoCopyWith<$Res> {
  __$CartResponseDtoCopyWithImpl(this._self, this._then);

  final _CartResponseDto _self;
  final $Res Function(_CartResponseDto) _then;

/// Create a copy of CartResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_CartResponseDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CartItemDto>,
  ));
}


}


/// @nodoc
mixin _$CartItemDto {

 int? get cartItemId; int? get productId; String? get productName; String? get thumbnailUrl; int? get sellerProfileId; String? get storageMethod; int? get deliveryDays; int? get shippingFee; int? get freeShippingThreshold;@NullableLocalDateTimeConverter() DateTime? get createdAt; List<CartItemOptionDto>? get options; int? get productTotalPrice; bool? get isAvailable;@JsonKey(fromJson: CartUnavailableReason.fromJson, toJson: CartUnavailableReason.toJson) CartUnavailableReason? get unavailableReason;
/// Create a copy of CartItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemDtoCopyWith<CartItemDto> get copyWith => _$CartItemDtoCopyWithImpl<CartItemDto>(this as CartItemDto, _$identity);

  /// Serializes this CartItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemDto&&(identical(other.cartItemId, cartItemId) || other.cartItemId == cartItemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.storageMethod, storageMethod) || other.storageMethod == storageMethod)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.shippingFee, shippingFee) || other.shippingFee == shippingFee)&&(identical(other.freeShippingThreshold, freeShippingThreshold) || other.freeShippingThreshold == freeShippingThreshold)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.productTotalPrice, productTotalPrice) || other.productTotalPrice == productTotalPrice)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartItemId,productId,productName,thumbnailUrl,sellerProfileId,storageMethod,deliveryDays,shippingFee,freeShippingThreshold,createdAt,const DeepCollectionEquality().hash(options),productTotalPrice,isAvailable,unavailableReason);

@override
String toString() {
  return 'CartItemDto(cartItemId: $cartItemId, productId: $productId, productName: $productName, thumbnailUrl: $thumbnailUrl, sellerProfileId: $sellerProfileId, storageMethod: $storageMethod, deliveryDays: $deliveryDays, shippingFee: $shippingFee, freeShippingThreshold: $freeShippingThreshold, createdAt: $createdAt, options: $options, productTotalPrice: $productTotalPrice, isAvailable: $isAvailable, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class $CartItemDtoCopyWith<$Res>  {
  factory $CartItemDtoCopyWith(CartItemDto value, $Res Function(CartItemDto) _then) = _$CartItemDtoCopyWithImpl;
@useResult
$Res call({
 int? cartItemId, int? productId, String? productName, String? thumbnailUrl, int? sellerProfileId, String? storageMethod, int? deliveryDays, int? shippingFee, int? freeShippingThreshold,@NullableLocalDateTimeConverter() DateTime? createdAt, List<CartItemOptionDto>? options, int? productTotalPrice, bool? isAvailable,@JsonKey(fromJson: CartUnavailableReason.fromJson, toJson: CartUnavailableReason.toJson) CartUnavailableReason? unavailableReason
});




}
/// @nodoc
class _$CartItemDtoCopyWithImpl<$Res>
    implements $CartItemDtoCopyWith<$Res> {
  _$CartItemDtoCopyWithImpl(this._self, this._then);

  final CartItemDto _self;
  final $Res Function(CartItemDto) _then;

/// Create a copy of CartItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartItemId = freezed,Object? productId = freezed,Object? productName = freezed,Object? thumbnailUrl = freezed,Object? sellerProfileId = freezed,Object? storageMethod = freezed,Object? deliveryDays = freezed,Object? shippingFee = freezed,Object? freeShippingThreshold = freezed,Object? createdAt = freezed,Object? options = freezed,Object? productTotalPrice = freezed,Object? isAvailable = freezed,Object? unavailableReason = freezed,}) {
  return _then(_self.copyWith(
cartItemId: freezed == cartItemId ? _self.cartItemId : cartItemId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,sellerProfileId: freezed == sellerProfileId ? _self.sellerProfileId : sellerProfileId // ignore: cast_nullable_to_non_nullable
as int?,storageMethod: freezed == storageMethod ? _self.storageMethod : storageMethod // ignore: cast_nullable_to_non_nullable
as String?,deliveryDays: freezed == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int?,shippingFee: freezed == shippingFee ? _self.shippingFee : shippingFee // ignore: cast_nullable_to_non_nullable
as int?,freeShippingThreshold: freezed == freeShippingThreshold ? _self.freeShippingThreshold : freeShippingThreshold // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<CartItemOptionDto>?,productTotalPrice: freezed == productTotalPrice ? _self.productTotalPrice : productTotalPrice // ignore: cast_nullable_to_non_nullable
as int?,isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as CartUnavailableReason?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItemDto].
extension CartItemDtoPatterns on CartItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemDto value)  $default,){
final _that = this;
switch (_that) {
case _CartItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? cartItemId,  int? productId,  String? productName,  String? thumbnailUrl,  int? sellerProfileId,  String? storageMethod,  int? deliveryDays,  int? shippingFee,  int? freeShippingThreshold, @NullableLocalDateTimeConverter()  DateTime? createdAt,  List<CartItemOptionDto>? options,  int? productTotalPrice,  bool? isAvailable, @JsonKey(fromJson: CartUnavailableReason.fromJson, toJson: CartUnavailableReason.toJson)  CartUnavailableReason? unavailableReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemDto() when $default != null:
return $default(_that.cartItemId,_that.productId,_that.productName,_that.thumbnailUrl,_that.sellerProfileId,_that.storageMethod,_that.deliveryDays,_that.shippingFee,_that.freeShippingThreshold,_that.createdAt,_that.options,_that.productTotalPrice,_that.isAvailable,_that.unavailableReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? cartItemId,  int? productId,  String? productName,  String? thumbnailUrl,  int? sellerProfileId,  String? storageMethod,  int? deliveryDays,  int? shippingFee,  int? freeShippingThreshold, @NullableLocalDateTimeConverter()  DateTime? createdAt,  List<CartItemOptionDto>? options,  int? productTotalPrice,  bool? isAvailable, @JsonKey(fromJson: CartUnavailableReason.fromJson, toJson: CartUnavailableReason.toJson)  CartUnavailableReason? unavailableReason)  $default,) {final _that = this;
switch (_that) {
case _CartItemDto():
return $default(_that.cartItemId,_that.productId,_that.productName,_that.thumbnailUrl,_that.sellerProfileId,_that.storageMethod,_that.deliveryDays,_that.shippingFee,_that.freeShippingThreshold,_that.createdAt,_that.options,_that.productTotalPrice,_that.isAvailable,_that.unavailableReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? cartItemId,  int? productId,  String? productName,  String? thumbnailUrl,  int? sellerProfileId,  String? storageMethod,  int? deliveryDays,  int? shippingFee,  int? freeShippingThreshold, @NullableLocalDateTimeConverter()  DateTime? createdAt,  List<CartItemOptionDto>? options,  int? productTotalPrice,  bool? isAvailable, @JsonKey(fromJson: CartUnavailableReason.fromJson, toJson: CartUnavailableReason.toJson)  CartUnavailableReason? unavailableReason)?  $default,) {final _that = this;
switch (_that) {
case _CartItemDto() when $default != null:
return $default(_that.cartItemId,_that.productId,_that.productName,_that.thumbnailUrl,_that.sellerProfileId,_that.storageMethod,_that.deliveryDays,_that.shippingFee,_that.freeShippingThreshold,_that.createdAt,_that.options,_that.productTotalPrice,_that.isAvailable,_that.unavailableReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemDto implements CartItemDto {
  const _CartItemDto({this.cartItemId, this.productId, this.productName, this.thumbnailUrl, this.sellerProfileId, this.storageMethod, this.deliveryDays, this.shippingFee, this.freeShippingThreshold, @NullableLocalDateTimeConverter() this.createdAt, final  List<CartItemOptionDto>? options, this.productTotalPrice, this.isAvailable, @JsonKey(fromJson: CartUnavailableReason.fromJson, toJson: CartUnavailableReason.toJson) this.unavailableReason}): _options = options;
  factory _CartItemDto.fromJson(Map<String, dynamic> json) => _$CartItemDtoFromJson(json);

@override final  int? cartItemId;
@override final  int? productId;
@override final  String? productName;
@override final  String? thumbnailUrl;
@override final  int? sellerProfileId;
@override final  String? storageMethod;
@override final  int? deliveryDays;
@override final  int? shippingFee;
@override final  int? freeShippingThreshold;
@override@NullableLocalDateTimeConverter() final  DateTime? createdAt;
 final  List<CartItemOptionDto>? _options;
@override List<CartItemOptionDto>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? productTotalPrice;
@override final  bool? isAvailable;
@override@JsonKey(fromJson: CartUnavailableReason.fromJson, toJson: CartUnavailableReason.toJson) final  CartUnavailableReason? unavailableReason;

/// Create a copy of CartItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemDtoCopyWith<_CartItemDto> get copyWith => __$CartItemDtoCopyWithImpl<_CartItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemDto&&(identical(other.cartItemId, cartItemId) || other.cartItemId == cartItemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.storageMethod, storageMethod) || other.storageMethod == storageMethod)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.shippingFee, shippingFee) || other.shippingFee == shippingFee)&&(identical(other.freeShippingThreshold, freeShippingThreshold) || other.freeShippingThreshold == freeShippingThreshold)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.productTotalPrice, productTotalPrice) || other.productTotalPrice == productTotalPrice)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartItemId,productId,productName,thumbnailUrl,sellerProfileId,storageMethod,deliveryDays,shippingFee,freeShippingThreshold,createdAt,const DeepCollectionEquality().hash(_options),productTotalPrice,isAvailable,unavailableReason);

@override
String toString() {
  return 'CartItemDto(cartItemId: $cartItemId, productId: $productId, productName: $productName, thumbnailUrl: $thumbnailUrl, sellerProfileId: $sellerProfileId, storageMethod: $storageMethod, deliveryDays: $deliveryDays, shippingFee: $shippingFee, freeShippingThreshold: $freeShippingThreshold, createdAt: $createdAt, options: $options, productTotalPrice: $productTotalPrice, isAvailable: $isAvailable, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class _$CartItemDtoCopyWith<$Res> implements $CartItemDtoCopyWith<$Res> {
  factory _$CartItemDtoCopyWith(_CartItemDto value, $Res Function(_CartItemDto) _then) = __$CartItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int? cartItemId, int? productId, String? productName, String? thumbnailUrl, int? sellerProfileId, String? storageMethod, int? deliveryDays, int? shippingFee, int? freeShippingThreshold,@NullableLocalDateTimeConverter() DateTime? createdAt, List<CartItemOptionDto>? options, int? productTotalPrice, bool? isAvailable,@JsonKey(fromJson: CartUnavailableReason.fromJson, toJson: CartUnavailableReason.toJson) CartUnavailableReason? unavailableReason
});




}
/// @nodoc
class __$CartItemDtoCopyWithImpl<$Res>
    implements _$CartItemDtoCopyWith<$Res> {
  __$CartItemDtoCopyWithImpl(this._self, this._then);

  final _CartItemDto _self;
  final $Res Function(_CartItemDto) _then;

/// Create a copy of CartItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartItemId = freezed,Object? productId = freezed,Object? productName = freezed,Object? thumbnailUrl = freezed,Object? sellerProfileId = freezed,Object? storageMethod = freezed,Object? deliveryDays = freezed,Object? shippingFee = freezed,Object? freeShippingThreshold = freezed,Object? createdAt = freezed,Object? options = freezed,Object? productTotalPrice = freezed,Object? isAvailable = freezed,Object? unavailableReason = freezed,}) {
  return _then(_CartItemDto(
cartItemId: freezed == cartItemId ? _self.cartItemId : cartItemId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,sellerProfileId: freezed == sellerProfileId ? _self.sellerProfileId : sellerProfileId // ignore: cast_nullable_to_non_nullable
as int?,storageMethod: freezed == storageMethod ? _self.storageMethod : storageMethod // ignore: cast_nullable_to_non_nullable
as String?,deliveryDays: freezed == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int?,shippingFee: freezed == shippingFee ? _self.shippingFee : shippingFee // ignore: cast_nullable_to_non_nullable
as int?,freeShippingThreshold: freezed == freeShippingThreshold ? _self.freeShippingThreshold : freeShippingThreshold // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<CartItemOptionDto>?,productTotalPrice: freezed == productTotalPrice ? _self.productTotalPrice : productTotalPrice // ignore: cast_nullable_to_non_nullable
as int?,isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as CartUnavailableReason?,
  ));
}


}


/// @nodoc
mixin _$CartItemOptionDto {

 int get cartItemOptionId; int get productOptionId; String get optionName; int get unitPrice; int get quantity; int get totalPrice; int get stockQuantity; bool get isUnavailable;
/// Create a copy of CartItemOptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemOptionDtoCopyWith<CartItemOptionDto> get copyWith => _$CartItemOptionDtoCopyWithImpl<CartItemOptionDto>(this as CartItemOptionDto, _$identity);

  /// Serializes this CartItemOptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemOptionDto&&(identical(other.cartItemOptionId, cartItemOptionId) || other.cartItemOptionId == cartItemOptionId)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&(identical(other.isUnavailable, isUnavailable) || other.isUnavailable == isUnavailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartItemOptionId,productOptionId,optionName,unitPrice,quantity,totalPrice,stockQuantity,isUnavailable);

@override
String toString() {
  return 'CartItemOptionDto(cartItemOptionId: $cartItemOptionId, productOptionId: $productOptionId, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, stockQuantity: $stockQuantity, isUnavailable: $isUnavailable)';
}


}

/// @nodoc
abstract mixin class $CartItemOptionDtoCopyWith<$Res>  {
  factory $CartItemOptionDtoCopyWith(CartItemOptionDto value, $Res Function(CartItemOptionDto) _then) = _$CartItemOptionDtoCopyWithImpl;
@useResult
$Res call({
 int cartItemOptionId, int productOptionId, String optionName, int unitPrice, int quantity, int totalPrice, int stockQuantity, bool isUnavailable
});




}
/// @nodoc
class _$CartItemOptionDtoCopyWithImpl<$Res>
    implements $CartItemOptionDtoCopyWith<$Res> {
  _$CartItemOptionDtoCopyWithImpl(this._self, this._then);

  final CartItemOptionDto _self;
  final $Res Function(CartItemOptionDto) _then;

/// Create a copy of CartItemOptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartItemOptionId = null,Object? productOptionId = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? stockQuantity = null,Object? isUnavailable = null,}) {
  return _then(_self.copyWith(
cartItemOptionId: null == cartItemOptionId ? _self.cartItemOptionId : cartItemOptionId // ignore: cast_nullable_to_non_nullable
as int,productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,isUnavailable: null == isUnavailable ? _self.isUnavailable : isUnavailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItemOptionDto].
extension CartItemOptionDtoPatterns on CartItemOptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemOptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemOptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemOptionDto value)  $default,){
final _that = this;
switch (_that) {
case _CartItemOptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemOptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemOptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cartItemOptionId,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  int stockQuantity,  bool isUnavailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemOptionDto() when $default != null:
return $default(_that.cartItemOptionId,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.stockQuantity,_that.isUnavailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cartItemOptionId,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  int stockQuantity,  bool isUnavailable)  $default,) {final _that = this;
switch (_that) {
case _CartItemOptionDto():
return $default(_that.cartItemOptionId,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.stockQuantity,_that.isUnavailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cartItemOptionId,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  int stockQuantity,  bool isUnavailable)?  $default,) {final _that = this;
switch (_that) {
case _CartItemOptionDto() when $default != null:
return $default(_that.cartItemOptionId,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.stockQuantity,_that.isUnavailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemOptionDto implements CartItemOptionDto {
  const _CartItemOptionDto({required this.cartItemOptionId, required this.productOptionId, required this.optionName, required this.unitPrice, required this.quantity, required this.totalPrice, required this.stockQuantity, required this.isUnavailable});
  factory _CartItemOptionDto.fromJson(Map<String, dynamic> json) => _$CartItemOptionDtoFromJson(json);

@override final  int cartItemOptionId;
@override final  int productOptionId;
@override final  String optionName;
@override final  int unitPrice;
@override final  int quantity;
@override final  int totalPrice;
@override final  int stockQuantity;
@override final  bool isUnavailable;

/// Create a copy of CartItemOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemOptionDtoCopyWith<_CartItemOptionDto> get copyWith => __$CartItemOptionDtoCopyWithImpl<_CartItemOptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemOptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemOptionDto&&(identical(other.cartItemOptionId, cartItemOptionId) || other.cartItemOptionId == cartItemOptionId)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&(identical(other.isUnavailable, isUnavailable) || other.isUnavailable == isUnavailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartItemOptionId,productOptionId,optionName,unitPrice,quantity,totalPrice,stockQuantity,isUnavailable);

@override
String toString() {
  return 'CartItemOptionDto(cartItemOptionId: $cartItemOptionId, productOptionId: $productOptionId, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, stockQuantity: $stockQuantity, isUnavailable: $isUnavailable)';
}


}

/// @nodoc
abstract mixin class _$CartItemOptionDtoCopyWith<$Res> implements $CartItemOptionDtoCopyWith<$Res> {
  factory _$CartItemOptionDtoCopyWith(_CartItemOptionDto value, $Res Function(_CartItemOptionDto) _then) = __$CartItemOptionDtoCopyWithImpl;
@override @useResult
$Res call({
 int cartItemOptionId, int productOptionId, String optionName, int unitPrice, int quantity, int totalPrice, int stockQuantity, bool isUnavailable
});




}
/// @nodoc
class __$CartItemOptionDtoCopyWithImpl<$Res>
    implements _$CartItemOptionDtoCopyWith<$Res> {
  __$CartItemOptionDtoCopyWithImpl(this._self, this._then);

  final _CartItemOptionDto _self;
  final $Res Function(_CartItemOptionDto) _then;

/// Create a copy of CartItemOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartItemOptionId = null,Object? productOptionId = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? stockQuantity = null,Object? isUnavailable = null,}) {
  return _then(_CartItemOptionDto(
cartItemOptionId: null == cartItemOptionId ? _self.cartItemOptionId : cartItemOptionId // ignore: cast_nullable_to_non_nullable
as int,productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,isUnavailable: null == isUnavailable ? _self.isUnavailable : isUnavailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
