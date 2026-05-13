// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderResponseDto {

 String? get tossCustomerKey; int get productId; String get productName; String get thumbnailImageUrl; List<OrderItemDto> get items; int get productAmount; int get deliveryFee; int get jejuDeliveryFee; int get totalAmount; bool get isWeekendShipping; int get deliveryDays; int get shippingLeadTime; bool get isSameDayShipping; String get shippingCutoffTime; AddressDto get deliveryAddress;
/// Create a copy of OrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderResponseDtoCopyWith<OrderResponseDto> get copyWith => _$OrderResponseDtoCopyWithImpl<OrderResponseDto>(this as OrderResponseDto, _$identity);

  /// Serializes this OrderResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderResponseDto&&(identical(other.tossCustomerKey, tossCustomerKey) || other.tossCustomerKey == tossCustomerKey)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.productAmount, productAmount) || other.productAmount == productAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.isWeekendShipping, isWeekendShipping) || other.isWeekendShipping == isWeekendShipping)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tossCustomerKey,productId,productName,thumbnailImageUrl,const DeepCollectionEquality().hash(items),productAmount,deliveryFee,jejuDeliveryFee,totalAmount,isWeekendShipping,deliveryDays,shippingLeadTime,isSameDayShipping,shippingCutoffTime,deliveryAddress);

@override
String toString() {
  return 'OrderResponseDto(tossCustomerKey: $tossCustomerKey, productId: $productId, productName: $productName, thumbnailImageUrl: $thumbnailImageUrl, items: $items, productAmount: $productAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, totalAmount: $totalAmount, isWeekendShipping: $isWeekendShipping, deliveryDays: $deliveryDays, shippingLeadTime: $shippingLeadTime, isSameDayShipping: $isSameDayShipping, shippingCutoffTime: $shippingCutoffTime, deliveryAddress: $deliveryAddress)';
}


}

/// @nodoc
abstract mixin class $OrderResponseDtoCopyWith<$Res>  {
  factory $OrderResponseDtoCopyWith(OrderResponseDto value, $Res Function(OrderResponseDto) _then) = _$OrderResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? tossCustomerKey, int productId, String productName, String thumbnailImageUrl, List<OrderItemDto> items, int productAmount, int deliveryFee, int jejuDeliveryFee, int totalAmount, bool isWeekendShipping, int deliveryDays, int shippingLeadTime, bool isSameDayShipping, String shippingCutoffTime, AddressDto deliveryAddress
});


$AddressDtoCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class _$OrderResponseDtoCopyWithImpl<$Res>
    implements $OrderResponseDtoCopyWith<$Res> {
  _$OrderResponseDtoCopyWithImpl(this._self, this._then);

  final OrderResponseDto _self;
  final $Res Function(OrderResponseDto) _then;

/// Create a copy of OrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tossCustomerKey = freezed,Object? productId = null,Object? productName = null,Object? thumbnailImageUrl = null,Object? items = null,Object? productAmount = null,Object? deliveryFee = null,Object? jejuDeliveryFee = null,Object? totalAmount = null,Object? isWeekendShipping = null,Object? deliveryDays = null,Object? shippingLeadTime = null,Object? isSameDayShipping = null,Object? shippingCutoffTime = null,Object? deliveryAddress = null,}) {
  return _then(_self.copyWith(
tossCustomerKey: freezed == tossCustomerKey ? _self.tossCustomerKey : tossCustomerKey // ignore: cast_nullable_to_non_nullable
as String?,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemDto>,productAmount: null == productAmount ? _self.productAmount : productAmount // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,jejuDeliveryFee: null == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,isWeekendShipping: null == isWeekendShipping ? _self.isWeekendShipping : isWeekendShipping // ignore: cast_nullable_to_non_nullable
as bool,deliveryDays: null == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int,shippingLeadTime: null == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int,isSameDayShipping: null == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool,shippingCutoffTime: null == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as AddressDto,
  ));
}
/// Create a copy of OrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res> get deliveryAddress {
  
  return $AddressDtoCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderResponseDto].
extension OrderResponseDtoPatterns on OrderResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? tossCustomerKey,  int productId,  String productName,  String thumbnailImageUrl,  List<OrderItemDto> items,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  bool isWeekendShipping,  int deliveryDays,  int shippingLeadTime,  bool isSameDayShipping,  String shippingCutoffTime,  AddressDto deliveryAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderResponseDto() when $default != null:
return $default(_that.tossCustomerKey,_that.productId,_that.productName,_that.thumbnailImageUrl,_that.items,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.isWeekendShipping,_that.deliveryDays,_that.shippingLeadTime,_that.isSameDayShipping,_that.shippingCutoffTime,_that.deliveryAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? tossCustomerKey,  int productId,  String productName,  String thumbnailImageUrl,  List<OrderItemDto> items,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  bool isWeekendShipping,  int deliveryDays,  int shippingLeadTime,  bool isSameDayShipping,  String shippingCutoffTime,  AddressDto deliveryAddress)  $default,) {final _that = this;
switch (_that) {
case _OrderResponseDto():
return $default(_that.tossCustomerKey,_that.productId,_that.productName,_that.thumbnailImageUrl,_that.items,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.isWeekendShipping,_that.deliveryDays,_that.shippingLeadTime,_that.isSameDayShipping,_that.shippingCutoffTime,_that.deliveryAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? tossCustomerKey,  int productId,  String productName,  String thumbnailImageUrl,  List<OrderItemDto> items,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  bool isWeekendShipping,  int deliveryDays,  int shippingLeadTime,  bool isSameDayShipping,  String shippingCutoffTime,  AddressDto deliveryAddress)?  $default,) {final _that = this;
switch (_that) {
case _OrderResponseDto() when $default != null:
return $default(_that.tossCustomerKey,_that.productId,_that.productName,_that.thumbnailImageUrl,_that.items,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.isWeekendShipping,_that.deliveryDays,_that.shippingLeadTime,_that.isSameDayShipping,_that.shippingCutoffTime,_that.deliveryAddress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderResponseDto implements OrderResponseDto {
  const _OrderResponseDto({this.tossCustomerKey, required this.productId, required this.productName, required this.thumbnailImageUrl, required final  List<OrderItemDto> items, required this.productAmount, required this.deliveryFee, required this.jejuDeliveryFee, required this.totalAmount, required this.isWeekendShipping, required this.deliveryDays, required this.shippingLeadTime, required this.isSameDayShipping, required this.shippingCutoffTime, required this.deliveryAddress}): _items = items;
  factory _OrderResponseDto.fromJson(Map<String, dynamic> json) => _$OrderResponseDtoFromJson(json);

@override final  String? tossCustomerKey;
@override final  int productId;
@override final  String productName;
@override final  String thumbnailImageUrl;
 final  List<OrderItemDto> _items;
@override List<OrderItemDto> get items {
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
@override final  AddressDto deliveryAddress;

/// Create a copy of OrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderResponseDtoCopyWith<_OrderResponseDto> get copyWith => __$OrderResponseDtoCopyWithImpl<_OrderResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderResponseDto&&(identical(other.tossCustomerKey, tossCustomerKey) || other.tossCustomerKey == tossCustomerKey)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.productAmount, productAmount) || other.productAmount == productAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.isWeekendShipping, isWeekendShipping) || other.isWeekendShipping == isWeekendShipping)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tossCustomerKey,productId,productName,thumbnailImageUrl,const DeepCollectionEquality().hash(_items),productAmount,deliveryFee,jejuDeliveryFee,totalAmount,isWeekendShipping,deliveryDays,shippingLeadTime,isSameDayShipping,shippingCutoffTime,deliveryAddress);

@override
String toString() {
  return 'OrderResponseDto(tossCustomerKey: $tossCustomerKey, productId: $productId, productName: $productName, thumbnailImageUrl: $thumbnailImageUrl, items: $items, productAmount: $productAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, totalAmount: $totalAmount, isWeekendShipping: $isWeekendShipping, deliveryDays: $deliveryDays, shippingLeadTime: $shippingLeadTime, isSameDayShipping: $isSameDayShipping, shippingCutoffTime: $shippingCutoffTime, deliveryAddress: $deliveryAddress)';
}


}

/// @nodoc
abstract mixin class _$OrderResponseDtoCopyWith<$Res> implements $OrderResponseDtoCopyWith<$Res> {
  factory _$OrderResponseDtoCopyWith(_OrderResponseDto value, $Res Function(_OrderResponseDto) _then) = __$OrderResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? tossCustomerKey, int productId, String productName, String thumbnailImageUrl, List<OrderItemDto> items, int productAmount, int deliveryFee, int jejuDeliveryFee, int totalAmount, bool isWeekendShipping, int deliveryDays, int shippingLeadTime, bool isSameDayShipping, String shippingCutoffTime, AddressDto deliveryAddress
});


@override $AddressDtoCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class __$OrderResponseDtoCopyWithImpl<$Res>
    implements _$OrderResponseDtoCopyWith<$Res> {
  __$OrderResponseDtoCopyWithImpl(this._self, this._then);

  final _OrderResponseDto _self;
  final $Res Function(_OrderResponseDto) _then;

/// Create a copy of OrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tossCustomerKey = freezed,Object? productId = null,Object? productName = null,Object? thumbnailImageUrl = null,Object? items = null,Object? productAmount = null,Object? deliveryFee = null,Object? jejuDeliveryFee = null,Object? totalAmount = null,Object? isWeekendShipping = null,Object? deliveryDays = null,Object? shippingLeadTime = null,Object? isSameDayShipping = null,Object? shippingCutoffTime = null,Object? deliveryAddress = null,}) {
  return _then(_OrderResponseDto(
tossCustomerKey: freezed == tossCustomerKey ? _self.tossCustomerKey : tossCustomerKey // ignore: cast_nullable_to_non_nullable
as String?,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemDto>,productAmount: null == productAmount ? _self.productAmount : productAmount // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,jejuDeliveryFee: null == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,isWeekendShipping: null == isWeekendShipping ? _self.isWeekendShipping : isWeekendShipping // ignore: cast_nullable_to_non_nullable
as bool,deliveryDays: null == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int,shippingLeadTime: null == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int,isSameDayShipping: null == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool,shippingCutoffTime: null == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as AddressDto,
  ));
}

/// Create a copy of OrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res> get deliveryAddress {
  
  return $AddressDtoCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// @nodoc
mixin _$OrderItemDto {

 int get productOptionId; String get optionName; int get quantity; int get unitPrice; int get itemAmount;
/// Create a copy of OrderItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemDtoCopyWith<OrderItemDto> get copyWith => _$OrderItemDtoCopyWithImpl<OrderItemDto>(this as OrderItemDto, _$identity);

  /// Serializes this OrderItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemDto&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.itemAmount, itemAmount) || other.itemAmount == itemAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productOptionId,optionName,quantity,unitPrice,itemAmount);

@override
String toString() {
  return 'OrderItemDto(productOptionId: $productOptionId, optionName: $optionName, quantity: $quantity, unitPrice: $unitPrice, itemAmount: $itemAmount)';
}


}

/// @nodoc
abstract mixin class $OrderItemDtoCopyWith<$Res>  {
  factory $OrderItemDtoCopyWith(OrderItemDto value, $Res Function(OrderItemDto) _then) = _$OrderItemDtoCopyWithImpl;
@useResult
$Res call({
 int productOptionId, String optionName, int quantity, int unitPrice, int itemAmount
});




}
/// @nodoc
class _$OrderItemDtoCopyWithImpl<$Res>
    implements $OrderItemDtoCopyWith<$Res> {
  _$OrderItemDtoCopyWithImpl(this._self, this._then);

  final OrderItemDto _self;
  final $Res Function(OrderItemDto) _then;

/// Create a copy of OrderItemDto
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


/// Adds pattern-matching-related methods to [OrderItemDto].
extension OrderItemDtoPatterns on OrderItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemDto() when $default != null:
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
case _OrderItemDto() when $default != null:
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
case _OrderItemDto():
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
case _OrderItemDto() when $default != null:
return $default(_that.productOptionId,_that.optionName,_that.quantity,_that.unitPrice,_that.itemAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemDto implements OrderItemDto {
  const _OrderItemDto({required this.productOptionId, required this.optionName, required this.quantity, required this.unitPrice, required this.itemAmount});
  factory _OrderItemDto.fromJson(Map<String, dynamic> json) => _$OrderItemDtoFromJson(json);

@override final  int productOptionId;
@override final  String optionName;
@override final  int quantity;
@override final  int unitPrice;
@override final  int itemAmount;

/// Create a copy of OrderItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemDtoCopyWith<_OrderItemDto> get copyWith => __$OrderItemDtoCopyWithImpl<_OrderItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemDto&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.itemAmount, itemAmount) || other.itemAmount == itemAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productOptionId,optionName,quantity,unitPrice,itemAmount);

@override
String toString() {
  return 'OrderItemDto(productOptionId: $productOptionId, optionName: $optionName, quantity: $quantity, unitPrice: $unitPrice, itemAmount: $itemAmount)';
}


}

/// @nodoc
abstract mixin class _$OrderItemDtoCopyWith<$Res> implements $OrderItemDtoCopyWith<$Res> {
  factory _$OrderItemDtoCopyWith(_OrderItemDto value, $Res Function(_OrderItemDto) _then) = __$OrderItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int productOptionId, String optionName, int quantity, int unitPrice, int itemAmount
});




}
/// @nodoc
class __$OrderItemDtoCopyWithImpl<$Res>
    implements _$OrderItemDtoCopyWith<$Res> {
  __$OrderItemDtoCopyWithImpl(this._self, this._then);

  final _OrderItemDto _self;
  final $Res Function(_OrderItemDto) _then;

/// Create a copy of OrderItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productOptionId = null,Object? optionName = null,Object? quantity = null,Object? unitPrice = null,Object? itemAmount = null,}) {
  return _then(_OrderItemDto(
productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,itemAmount: null == itemAmount ? _self.itemAmount : itemAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CreateOrderResponseWrapper {

 bool get success; CreateOrderResponseDto? get data;
/// Create a copy of CreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderResponseWrapperCopyWith<CreateOrderResponseWrapper> get copyWith => _$CreateOrderResponseWrapperCopyWithImpl<CreateOrderResponseWrapper>(this as CreateOrderResponseWrapper, _$identity);

  /// Serializes this CreateOrderResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderResponseWrapper&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CreateOrderResponseWrapper(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $CreateOrderResponseWrapperCopyWith<$Res>  {
  factory $CreateOrderResponseWrapperCopyWith(CreateOrderResponseWrapper value, $Res Function(CreateOrderResponseWrapper) _then) = _$CreateOrderResponseWrapperCopyWithImpl;
@useResult
$Res call({
 bool success, CreateOrderResponseDto? data
});


$CreateOrderResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$CreateOrderResponseWrapperCopyWithImpl<$Res>
    implements $CreateOrderResponseWrapperCopyWith<$Res> {
  _$CreateOrderResponseWrapperCopyWithImpl(this._self, this._then);

  final CreateOrderResponseWrapper _self;
  final $Res Function(CreateOrderResponseWrapper) _then;

/// Create a copy of CreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateOrderResponseDto?,
  ));
}
/// Create a copy of CreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateOrderResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateOrderResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateOrderResponseWrapper].
extension CreateOrderResponseWrapperPatterns on CreateOrderResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CreateOrderResponseDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderResponseWrapper() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CreateOrderResponseDto? data)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderResponseWrapper():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CreateOrderResponseDto? data)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderResponseWrapper() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderResponseWrapper implements CreateOrderResponseWrapper {
  const _CreateOrderResponseWrapper({required this.success, required this.data});
  factory _CreateOrderResponseWrapper.fromJson(Map<String, dynamic> json) => _$CreateOrderResponseWrapperFromJson(json);

@override final  bool success;
@override final  CreateOrderResponseDto? data;

/// Create a copy of CreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderResponseWrapperCopyWith<_CreateOrderResponseWrapper> get copyWith => __$CreateOrderResponseWrapperCopyWithImpl<_CreateOrderResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderResponseWrapper&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CreateOrderResponseWrapper(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderResponseWrapperCopyWith<$Res> implements $CreateOrderResponseWrapperCopyWith<$Res> {
  factory _$CreateOrderResponseWrapperCopyWith(_CreateOrderResponseWrapper value, $Res Function(_CreateOrderResponseWrapper) _then) = __$CreateOrderResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 bool success, CreateOrderResponseDto? data
});


@override $CreateOrderResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreateOrderResponseWrapperCopyWithImpl<$Res>
    implements _$CreateOrderResponseWrapperCopyWith<$Res> {
  __$CreateOrderResponseWrapperCopyWithImpl(this._self, this._then);

  final _CreateOrderResponseWrapper _self;
  final $Res Function(_CreateOrderResponseWrapper) _then;

/// Create a copy of CreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_CreateOrderResponseWrapper(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateOrderResponseDto?,
  ));
}

/// Create a copy of CreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateOrderResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateOrderResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
