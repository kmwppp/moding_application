// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_create_order_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartCreateOrderResponseWrapper {

 bool get success; CartCreateOrderResponseDto? get data;
/// Create a copy of CartCreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCreateOrderResponseWrapperCopyWith<CartCreateOrderResponseWrapper> get copyWith => _$CartCreateOrderResponseWrapperCopyWithImpl<CartCreateOrderResponseWrapper>(this as CartCreateOrderResponseWrapper, _$identity);

  /// Serializes this CartCreateOrderResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCreateOrderResponseWrapper&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CartCreateOrderResponseWrapper(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $CartCreateOrderResponseWrapperCopyWith<$Res>  {
  factory $CartCreateOrderResponseWrapperCopyWith(CartCreateOrderResponseWrapper value, $Res Function(CartCreateOrderResponseWrapper) _then) = _$CartCreateOrderResponseWrapperCopyWithImpl;
@useResult
$Res call({
 bool success, CartCreateOrderResponseDto? data
});


$CartCreateOrderResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$CartCreateOrderResponseWrapperCopyWithImpl<$Res>
    implements $CartCreateOrderResponseWrapperCopyWith<$Res> {
  _$CartCreateOrderResponseWrapperCopyWithImpl(this._self, this._then);

  final CartCreateOrderResponseWrapper _self;
  final $Res Function(CartCreateOrderResponseWrapper) _then;

/// Create a copy of CartCreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartCreateOrderResponseDto?,
  ));
}
/// Create a copy of CartCreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCreateOrderResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CartCreateOrderResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartCreateOrderResponseWrapper].
extension CartCreateOrderResponseWrapperPatterns on CartCreateOrderResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCreateOrderResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCreateOrderResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCreateOrderResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCreateOrderResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CartCreateOrderResponseDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCreateOrderResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CartCreateOrderResponseDto? data)  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CartCreateOrderResponseDto? data)?  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderResponseWrapper() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCreateOrderResponseWrapper implements CartCreateOrderResponseWrapper {
  const _CartCreateOrderResponseWrapper({required this.success, required this.data});
  factory _CartCreateOrderResponseWrapper.fromJson(Map<String, dynamic> json) => _$CartCreateOrderResponseWrapperFromJson(json);

@override final  bool success;
@override final  CartCreateOrderResponseDto? data;

/// Create a copy of CartCreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCreateOrderResponseWrapperCopyWith<_CartCreateOrderResponseWrapper> get copyWith => __$CartCreateOrderResponseWrapperCopyWithImpl<_CartCreateOrderResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCreateOrderResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCreateOrderResponseWrapper&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CartCreateOrderResponseWrapper(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CartCreateOrderResponseWrapperCopyWith<$Res> implements $CartCreateOrderResponseWrapperCopyWith<$Res> {
  factory _$CartCreateOrderResponseWrapperCopyWith(_CartCreateOrderResponseWrapper value, $Res Function(_CartCreateOrderResponseWrapper) _then) = __$CartCreateOrderResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 bool success, CartCreateOrderResponseDto? data
});


@override $CartCreateOrderResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$CartCreateOrderResponseWrapperCopyWithImpl<$Res>
    implements _$CartCreateOrderResponseWrapperCopyWith<$Res> {
  __$CartCreateOrderResponseWrapperCopyWithImpl(this._self, this._then);

  final _CartCreateOrderResponseWrapper _self;
  final $Res Function(_CartCreateOrderResponseWrapper) _then;

/// Create a copy of CartCreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_CartCreateOrderResponseWrapper(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartCreateOrderResponseDto?,
  ));
}

/// Create a copy of CartCreateOrderResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCreateOrderResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CartCreateOrderResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CartCreateOrderResponseDto {

 List<CartCreateOrderDto> get orders;
/// Create a copy of CartCreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCreateOrderResponseDtoCopyWith<CartCreateOrderResponseDto> get copyWith => _$CartCreateOrderResponseDtoCopyWithImpl<CartCreateOrderResponseDto>(this as CartCreateOrderResponseDto, _$identity);

  /// Serializes this CartCreateOrderResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCreateOrderResponseDto&&const DeepCollectionEquality().equals(other.orders, orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders));

@override
String toString() {
  return 'CartCreateOrderResponseDto(orders: $orders)';
}


}

/// @nodoc
abstract mixin class $CartCreateOrderResponseDtoCopyWith<$Res>  {
  factory $CartCreateOrderResponseDtoCopyWith(CartCreateOrderResponseDto value, $Res Function(CartCreateOrderResponseDto) _then) = _$CartCreateOrderResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<CartCreateOrderDto> orders
});




}
/// @nodoc
class _$CartCreateOrderResponseDtoCopyWithImpl<$Res>
    implements $CartCreateOrderResponseDtoCopyWith<$Res> {
  _$CartCreateOrderResponseDtoCopyWithImpl(this._self, this._then);

  final CartCreateOrderResponseDto _self;
  final $Res Function(CartCreateOrderResponseDto) _then;

/// Create a copy of CartCreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = null,}) {
  return _then(_self.copyWith(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<CartCreateOrderDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CartCreateOrderResponseDto].
extension CartCreateOrderResponseDtoPatterns on CartCreateOrderResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCreateOrderResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCreateOrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCreateOrderResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCreateOrderResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartCreateOrderDto> orders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCreateOrderResponseDto() when $default != null:
return $default(_that.orders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartCreateOrderDto> orders)  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderResponseDto():
return $default(_that.orders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartCreateOrderDto> orders)?  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderResponseDto() when $default != null:
return $default(_that.orders);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCreateOrderResponseDto implements CartCreateOrderResponseDto {
  const _CartCreateOrderResponseDto({required final  List<CartCreateOrderDto> orders}): _orders = orders;
  factory _CartCreateOrderResponseDto.fromJson(Map<String, dynamic> json) => _$CartCreateOrderResponseDtoFromJson(json);

 final  List<CartCreateOrderDto> _orders;
@override List<CartCreateOrderDto> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}


/// Create a copy of CartCreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCreateOrderResponseDtoCopyWith<_CartCreateOrderResponseDto> get copyWith => __$CartCreateOrderResponseDtoCopyWithImpl<_CartCreateOrderResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCreateOrderResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCreateOrderResponseDto&&const DeepCollectionEquality().equals(other._orders, _orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders));

@override
String toString() {
  return 'CartCreateOrderResponseDto(orders: $orders)';
}


}

/// @nodoc
abstract mixin class _$CartCreateOrderResponseDtoCopyWith<$Res> implements $CartCreateOrderResponseDtoCopyWith<$Res> {
  factory _$CartCreateOrderResponseDtoCopyWith(_CartCreateOrderResponseDto value, $Res Function(_CartCreateOrderResponseDto) _then) = __$CartCreateOrderResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<CartCreateOrderDto> orders
});




}
/// @nodoc
class __$CartCreateOrderResponseDtoCopyWithImpl<$Res>
    implements _$CartCreateOrderResponseDtoCopyWith<$Res> {
  __$CartCreateOrderResponseDtoCopyWithImpl(this._self, this._then);

  final _CartCreateOrderResponseDto _self;
  final $Res Function(_CartCreateOrderResponseDto) _then;

/// Create a copy of CartCreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = null,}) {
  return _then(_CartCreateOrderResponseDto(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<CartCreateOrderDto>,
  ));
}


}


/// @nodoc
mixin _$CartCreateOrderDto {

 int get id; String get orderCode; String get idempotencyKey; int? get buyerProfileId; String? get buyerBusinessName; int? get sellerProfileId; String? get sellerBusinessName; String? get addressName; String? get recipientName; String? get zipCode; String? get address; String? get addressDetail; String? get phone; String? get deliveryRequest; String get status; int? get totalAmount; int? get deliveryFee;// ✅ 이름 수정
 int? get jejuDeliveryFee; String? get deliveryMethod; String? get rejectionReason; String? get rejectionReasonDetail; List<CartCreateOrderItemDto> get items; List<String>? get productDeliveryMethods; CartCreateOrderDeliveryDto? get delivery;// ✅ 추가
 CartCreateOrderPaymentDto? get payment;@LocalDateTimeConverter() DateTime get createdAt;@LocalDateTimeConverter() DateTime get updatedAt;
/// Create a copy of CartCreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCreateOrderDtoCopyWith<CartCreateOrderDto> get copyWith => _$CartCreateOrderDtoCopyWithImpl<CartCreateOrderDto>(this as CartCreateOrderDto, _$identity);

  /// Serializes this CartCreateOrderDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCreateOrderDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.buyerProfileId, buyerProfileId) || other.buyerProfileId == buyerProfileId)&&(identical(other.buyerBusinessName, buyerBusinessName) || other.buyerBusinessName == buyerBusinessName)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.deliveryMethod, deliveryMethod) || other.deliveryMethod == deliveryMethod)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.rejectionReasonDetail, rejectionReasonDetail) || other.rejectionReasonDetail == rejectionReasonDetail)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.productDeliveryMethods, productDeliveryMethods)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,orderCode,idempotencyKey,buyerProfileId,buyerBusinessName,sellerProfileId,sellerBusinessName,addressName,recipientName,zipCode,address,addressDetail,phone,deliveryRequest,status,totalAmount,deliveryFee,jejuDeliveryFee,deliveryMethod,rejectionReason,rejectionReasonDetail,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(productDeliveryMethods),delivery,payment,createdAt,updatedAt]);

@override
String toString() {
  return 'CartCreateOrderDto(id: $id, orderCode: $orderCode, idempotencyKey: $idempotencyKey, buyerProfileId: $buyerProfileId, buyerBusinessName: $buyerBusinessName, sellerProfileId: $sellerProfileId, sellerBusinessName: $sellerBusinessName, addressName: $addressName, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, deliveryRequest: $deliveryRequest, status: $status, totalAmount: $totalAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, deliveryMethod: $deliveryMethod, rejectionReason: $rejectionReason, rejectionReasonDetail: $rejectionReasonDetail, items: $items, productDeliveryMethods: $productDeliveryMethods, delivery: $delivery, payment: $payment, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CartCreateOrderDtoCopyWith<$Res>  {
  factory $CartCreateOrderDtoCopyWith(CartCreateOrderDto value, $Res Function(CartCreateOrderDto) _then) = _$CartCreateOrderDtoCopyWithImpl;
@useResult
$Res call({
 int id, String orderCode, String idempotencyKey, int? buyerProfileId, String? buyerBusinessName, int? sellerProfileId, String? sellerBusinessName, String? addressName, String? recipientName, String? zipCode, String? address, String? addressDetail, String? phone, String? deliveryRequest, String status, int? totalAmount, int? deliveryFee, int? jejuDeliveryFee, String? deliveryMethod, String? rejectionReason, String? rejectionReasonDetail, List<CartCreateOrderItemDto> items, List<String>? productDeliveryMethods, CartCreateOrderDeliveryDto? delivery, CartCreateOrderPaymentDto? payment,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});


$CartCreateOrderDeliveryDtoCopyWith<$Res>? get delivery;$CartCreateOrderPaymentDtoCopyWith<$Res>? get payment;

}
/// @nodoc
class _$CartCreateOrderDtoCopyWithImpl<$Res>
    implements $CartCreateOrderDtoCopyWith<$Res> {
  _$CartCreateOrderDtoCopyWithImpl(this._self, this._then);

  final CartCreateOrderDto _self;
  final $Res Function(CartCreateOrderDto) _then;

/// Create a copy of CartCreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderCode = null,Object? idempotencyKey = null,Object? buyerProfileId = freezed,Object? buyerBusinessName = freezed,Object? sellerProfileId = freezed,Object? sellerBusinessName = freezed,Object? addressName = freezed,Object? recipientName = freezed,Object? zipCode = freezed,Object? address = freezed,Object? addressDetail = freezed,Object? phone = freezed,Object? deliveryRequest = freezed,Object? status = null,Object? totalAmount = freezed,Object? deliveryFee = freezed,Object? jejuDeliveryFee = freezed,Object? deliveryMethod = freezed,Object? rejectionReason = freezed,Object? rejectionReasonDetail = freezed,Object? items = null,Object? productDeliveryMethods = freezed,Object? delivery = freezed,Object? payment = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,buyerProfileId: freezed == buyerProfileId ? _self.buyerProfileId : buyerProfileId // ignore: cast_nullable_to_non_nullable
as int?,buyerBusinessName: freezed == buyerBusinessName ? _self.buyerBusinessName : buyerBusinessName // ignore: cast_nullable_to_non_nullable
as String?,sellerProfileId: freezed == sellerProfileId ? _self.sellerProfileId : sellerProfileId // ignore: cast_nullable_to_non_nullable
as int?,sellerBusinessName: freezed == sellerBusinessName ? _self.sellerBusinessName : sellerBusinessName // ignore: cast_nullable_to_non_nullable
as String?,addressName: freezed == addressName ? _self.addressName : addressName // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,addressDetail: freezed == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,deliveryRequest: freezed == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int?,jejuDeliveryFee: freezed == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int?,deliveryMethod: freezed == deliveryMethod ? _self.deliveryMethod : deliveryMethod // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,rejectionReasonDetail: freezed == rejectionReasonDetail ? _self.rejectionReasonDetail : rejectionReasonDetail // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartCreateOrderItemDto>,productDeliveryMethods: freezed == productDeliveryMethods ? _self.productDeliveryMethods : productDeliveryMethods // ignore: cast_nullable_to_non_nullable
as List<String>?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as CartCreateOrderDeliveryDto?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as CartCreateOrderPaymentDto?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of CartCreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCreateOrderDeliveryDtoCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $CartCreateOrderDeliveryDtoCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of CartCreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCreateOrderPaymentDtoCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $CartCreateOrderPaymentDtoCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartCreateOrderDto].
extension CartCreateOrderDtoPatterns on CartCreateOrderDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCreateOrderDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCreateOrderDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCreateOrderDto value)  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCreateOrderDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest,  String status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  List<CartCreateOrderItemDto> items,  List<String>? productDeliveryMethods,  CartCreateOrderDeliveryDto? delivery,  CartCreateOrderPaymentDto? payment, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCreateOrderDto() when $default != null:
return $default(_that.id,_that.orderCode,_that.idempotencyKey,_that.buyerProfileId,_that.buyerBusinessName,_that.sellerProfileId,_that.sellerBusinessName,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.deliveryRequest,_that.status,_that.totalAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.deliveryMethod,_that.rejectionReason,_that.rejectionReasonDetail,_that.items,_that.productDeliveryMethods,_that.delivery,_that.payment,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest,  String status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  List<CartCreateOrderItemDto> items,  List<String>? productDeliveryMethods,  CartCreateOrderDeliveryDto? delivery,  CartCreateOrderPaymentDto? payment, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderDto():
return $default(_that.id,_that.orderCode,_that.idempotencyKey,_that.buyerProfileId,_that.buyerBusinessName,_that.sellerProfileId,_that.sellerBusinessName,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.deliveryRequest,_that.status,_that.totalAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.deliveryMethod,_that.rejectionReason,_that.rejectionReasonDetail,_that.items,_that.productDeliveryMethods,_that.delivery,_that.payment,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest,  String status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  List<CartCreateOrderItemDto> items,  List<String>? productDeliveryMethods,  CartCreateOrderDeliveryDto? delivery,  CartCreateOrderPaymentDto? payment, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderDto() when $default != null:
return $default(_that.id,_that.orderCode,_that.idempotencyKey,_that.buyerProfileId,_that.buyerBusinessName,_that.sellerProfileId,_that.sellerBusinessName,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.deliveryRequest,_that.status,_that.totalAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.deliveryMethod,_that.rejectionReason,_that.rejectionReasonDetail,_that.items,_that.productDeliveryMethods,_that.delivery,_that.payment,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCreateOrderDto implements CartCreateOrderDto {
  const _CartCreateOrderDto({required this.id, required this.orderCode, required this.idempotencyKey, this.buyerProfileId, this.buyerBusinessName, this.sellerProfileId, this.sellerBusinessName, this.addressName, this.recipientName, this.zipCode, this.address, this.addressDetail, this.phone, this.deliveryRequest, required this.status, this.totalAmount, this.deliveryFee, this.jejuDeliveryFee, this.deliveryMethod, this.rejectionReason, this.rejectionReasonDetail, required final  List<CartCreateOrderItemDto> items, final  List<String>? productDeliveryMethods, this.delivery, this.payment, @LocalDateTimeConverter() required this.createdAt, @LocalDateTimeConverter() required this.updatedAt}): _items = items,_productDeliveryMethods = productDeliveryMethods;
  factory _CartCreateOrderDto.fromJson(Map<String, dynamic> json) => _$CartCreateOrderDtoFromJson(json);

@override final  int id;
@override final  String orderCode;
@override final  String idempotencyKey;
@override final  int? buyerProfileId;
@override final  String? buyerBusinessName;
@override final  int? sellerProfileId;
@override final  String? sellerBusinessName;
@override final  String? addressName;
@override final  String? recipientName;
@override final  String? zipCode;
@override final  String? address;
@override final  String? addressDetail;
@override final  String? phone;
@override final  String? deliveryRequest;
@override final  String status;
@override final  int? totalAmount;
@override final  int? deliveryFee;
// ✅ 이름 수정
@override final  int? jejuDeliveryFee;
@override final  String? deliveryMethod;
@override final  String? rejectionReason;
@override final  String? rejectionReasonDetail;
 final  List<CartCreateOrderItemDto> _items;
@override List<CartCreateOrderItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<String>? _productDeliveryMethods;
@override List<String>? get productDeliveryMethods {
  final value = _productDeliveryMethods;
  if (value == null) return null;
  if (_productDeliveryMethods is EqualUnmodifiableListView) return _productDeliveryMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CartCreateOrderDeliveryDto? delivery;
// ✅ 추가
@override final  CartCreateOrderPaymentDto? payment;
@override@LocalDateTimeConverter() final  DateTime createdAt;
@override@LocalDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of CartCreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCreateOrderDtoCopyWith<_CartCreateOrderDto> get copyWith => __$CartCreateOrderDtoCopyWithImpl<_CartCreateOrderDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCreateOrderDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCreateOrderDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.buyerProfileId, buyerProfileId) || other.buyerProfileId == buyerProfileId)&&(identical(other.buyerBusinessName, buyerBusinessName) || other.buyerBusinessName == buyerBusinessName)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.deliveryMethod, deliveryMethod) || other.deliveryMethod == deliveryMethod)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.rejectionReasonDetail, rejectionReasonDetail) || other.rejectionReasonDetail == rejectionReasonDetail)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._productDeliveryMethods, _productDeliveryMethods)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,orderCode,idempotencyKey,buyerProfileId,buyerBusinessName,sellerProfileId,sellerBusinessName,addressName,recipientName,zipCode,address,addressDetail,phone,deliveryRequest,status,totalAmount,deliveryFee,jejuDeliveryFee,deliveryMethod,rejectionReason,rejectionReasonDetail,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_productDeliveryMethods),delivery,payment,createdAt,updatedAt]);

@override
String toString() {
  return 'CartCreateOrderDto(id: $id, orderCode: $orderCode, idempotencyKey: $idempotencyKey, buyerProfileId: $buyerProfileId, buyerBusinessName: $buyerBusinessName, sellerProfileId: $sellerProfileId, sellerBusinessName: $sellerBusinessName, addressName: $addressName, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, deliveryRequest: $deliveryRequest, status: $status, totalAmount: $totalAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, deliveryMethod: $deliveryMethod, rejectionReason: $rejectionReason, rejectionReasonDetail: $rejectionReasonDetail, items: $items, productDeliveryMethods: $productDeliveryMethods, delivery: $delivery, payment: $payment, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CartCreateOrderDtoCopyWith<$Res> implements $CartCreateOrderDtoCopyWith<$Res> {
  factory _$CartCreateOrderDtoCopyWith(_CartCreateOrderDto value, $Res Function(_CartCreateOrderDto) _then) = __$CartCreateOrderDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String orderCode, String idempotencyKey, int? buyerProfileId, String? buyerBusinessName, int? sellerProfileId, String? sellerBusinessName, String? addressName, String? recipientName, String? zipCode, String? address, String? addressDetail, String? phone, String? deliveryRequest, String status, int? totalAmount, int? deliveryFee, int? jejuDeliveryFee, String? deliveryMethod, String? rejectionReason, String? rejectionReasonDetail, List<CartCreateOrderItemDto> items, List<String>? productDeliveryMethods, CartCreateOrderDeliveryDto? delivery, CartCreateOrderPaymentDto? payment,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});


@override $CartCreateOrderDeliveryDtoCopyWith<$Res>? get delivery;@override $CartCreateOrderPaymentDtoCopyWith<$Res>? get payment;

}
/// @nodoc
class __$CartCreateOrderDtoCopyWithImpl<$Res>
    implements _$CartCreateOrderDtoCopyWith<$Res> {
  __$CartCreateOrderDtoCopyWithImpl(this._self, this._then);

  final _CartCreateOrderDto _self;
  final $Res Function(_CartCreateOrderDto) _then;

/// Create a copy of CartCreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderCode = null,Object? idempotencyKey = null,Object? buyerProfileId = freezed,Object? buyerBusinessName = freezed,Object? sellerProfileId = freezed,Object? sellerBusinessName = freezed,Object? addressName = freezed,Object? recipientName = freezed,Object? zipCode = freezed,Object? address = freezed,Object? addressDetail = freezed,Object? phone = freezed,Object? deliveryRequest = freezed,Object? status = null,Object? totalAmount = freezed,Object? deliveryFee = freezed,Object? jejuDeliveryFee = freezed,Object? deliveryMethod = freezed,Object? rejectionReason = freezed,Object? rejectionReasonDetail = freezed,Object? items = null,Object? productDeliveryMethods = freezed,Object? delivery = freezed,Object? payment = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_CartCreateOrderDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,buyerProfileId: freezed == buyerProfileId ? _self.buyerProfileId : buyerProfileId // ignore: cast_nullable_to_non_nullable
as int?,buyerBusinessName: freezed == buyerBusinessName ? _self.buyerBusinessName : buyerBusinessName // ignore: cast_nullable_to_non_nullable
as String?,sellerProfileId: freezed == sellerProfileId ? _self.sellerProfileId : sellerProfileId // ignore: cast_nullable_to_non_nullable
as int?,sellerBusinessName: freezed == sellerBusinessName ? _self.sellerBusinessName : sellerBusinessName // ignore: cast_nullable_to_non_nullable
as String?,addressName: freezed == addressName ? _self.addressName : addressName // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,addressDetail: freezed == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,deliveryRequest: freezed == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int?,jejuDeliveryFee: freezed == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int?,deliveryMethod: freezed == deliveryMethod ? _self.deliveryMethod : deliveryMethod // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,rejectionReasonDetail: freezed == rejectionReasonDetail ? _self.rejectionReasonDetail : rejectionReasonDetail // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartCreateOrderItemDto>,productDeliveryMethods: freezed == productDeliveryMethods ? _self._productDeliveryMethods : productDeliveryMethods // ignore: cast_nullable_to_non_nullable
as List<String>?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as CartCreateOrderDeliveryDto?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as CartCreateOrderPaymentDto?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of CartCreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCreateOrderDeliveryDtoCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $CartCreateOrderDeliveryDtoCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of CartCreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCreateOrderPaymentDtoCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $CartCreateOrderPaymentDtoCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// @nodoc
mixin _$CartCreateOrderItemDto {

 int get id; int get productId; String get productName; int get productOptionId; String get optionName; int get unitPrice; int get quantity; int get totalPrice; bool get isTaxable;
/// Create a copy of CartCreateOrderItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCreateOrderItemDtoCopyWith<CartCreateOrderItemDto> get copyWith => _$CartCreateOrderItemDtoCopyWithImpl<CartCreateOrderItemDto>(this as CartCreateOrderItemDto, _$identity);

  /// Serializes this CartCreateOrderItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCreateOrderItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isTaxable, isTaxable) || other.isTaxable == isTaxable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,productOptionId,optionName,unitPrice,quantity,totalPrice,isTaxable);

@override
String toString() {
  return 'CartCreateOrderItemDto(id: $id, productId: $productId, productName: $productName, productOptionId: $productOptionId, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, isTaxable: $isTaxable)';
}


}

/// @nodoc
abstract mixin class $CartCreateOrderItemDtoCopyWith<$Res>  {
  factory $CartCreateOrderItemDtoCopyWith(CartCreateOrderItemDto value, $Res Function(CartCreateOrderItemDto) _then) = _$CartCreateOrderItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, int productId, String productName, int productOptionId, String optionName, int unitPrice, int quantity, int totalPrice, bool isTaxable
});




}
/// @nodoc
class _$CartCreateOrderItemDtoCopyWithImpl<$Res>
    implements $CartCreateOrderItemDtoCopyWith<$Res> {
  _$CartCreateOrderItemDtoCopyWithImpl(this._self, this._then);

  final CartCreateOrderItemDto _self;
  final $Res Function(CartCreateOrderItemDto) _then;

/// Create a copy of CartCreateOrderItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productOptionId = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? isTaxable = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,isTaxable: null == isTaxable ? _self.isTaxable : isTaxable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CartCreateOrderItemDto].
extension CartCreateOrderItemDtoPatterns on CartCreateOrderItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCreateOrderItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCreateOrderItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCreateOrderItemDto value)  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCreateOrderItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int productId,  String productName,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  bool isTaxable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCreateOrderItemDto() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.isTaxable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int productId,  String productName,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  bool isTaxable)  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderItemDto():
return $default(_that.id,_that.productId,_that.productName,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.isTaxable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int productId,  String productName,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  bool isTaxable)?  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderItemDto() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.isTaxable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCreateOrderItemDto implements CartCreateOrderItemDto {
  const _CartCreateOrderItemDto({required this.id, required this.productId, required this.productName, required this.productOptionId, required this.optionName, required this.unitPrice, required this.quantity, required this.totalPrice, required this.isTaxable});
  factory _CartCreateOrderItemDto.fromJson(Map<String, dynamic> json) => _$CartCreateOrderItemDtoFromJson(json);

@override final  int id;
@override final  int productId;
@override final  String productName;
@override final  int productOptionId;
@override final  String optionName;
@override final  int unitPrice;
@override final  int quantity;
@override final  int totalPrice;
@override final  bool isTaxable;

/// Create a copy of CartCreateOrderItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCreateOrderItemDtoCopyWith<_CartCreateOrderItemDto> get copyWith => __$CartCreateOrderItemDtoCopyWithImpl<_CartCreateOrderItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCreateOrderItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCreateOrderItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isTaxable, isTaxable) || other.isTaxable == isTaxable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,productOptionId,optionName,unitPrice,quantity,totalPrice,isTaxable);

@override
String toString() {
  return 'CartCreateOrderItemDto(id: $id, productId: $productId, productName: $productName, productOptionId: $productOptionId, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, isTaxable: $isTaxable)';
}


}

/// @nodoc
abstract mixin class _$CartCreateOrderItemDtoCopyWith<$Res> implements $CartCreateOrderItemDtoCopyWith<$Res> {
  factory _$CartCreateOrderItemDtoCopyWith(_CartCreateOrderItemDto value, $Res Function(_CartCreateOrderItemDto) _then) = __$CartCreateOrderItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int productId, String productName, int productOptionId, String optionName, int unitPrice, int quantity, int totalPrice, bool isTaxable
});




}
/// @nodoc
class __$CartCreateOrderItemDtoCopyWithImpl<$Res>
    implements _$CartCreateOrderItemDtoCopyWith<$Res> {
  __$CartCreateOrderItemDtoCopyWithImpl(this._self, this._then);

  final _CartCreateOrderItemDto _self;
  final $Res Function(_CartCreateOrderItemDto) _then;

/// Create a copy of CartCreateOrderItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productOptionId = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? isTaxable = null,}) {
  return _then(_CartCreateOrderItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,isTaxable: null == isTaxable ? _self.isTaxable : isTaxable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CartCreateOrderDeliveryDto {

 String get status; String get courierCode; String get courierName; String get trackingNumber;@LocalDateTimeConverter() DateTime get shippedAt;@LocalDateTimeConverter() DateTime get deliveredAt;
/// Create a copy of CartCreateOrderDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCreateOrderDeliveryDtoCopyWith<CartCreateOrderDeliveryDto> get copyWith => _$CartCreateOrderDeliveryDtoCopyWithImpl<CartCreateOrderDeliveryDto>(this as CartCreateOrderDeliveryDto, _$identity);

  /// Serializes this CartCreateOrderDeliveryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCreateOrderDeliveryDto&&(identical(other.status, status) || other.status == status)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.shippedAt, shippedAt) || other.shippedAt == shippedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,courierCode,courierName,trackingNumber,shippedAt,deliveredAt);

@override
String toString() {
  return 'CartCreateOrderDeliveryDto(status: $status, courierCode: $courierCode, courierName: $courierName, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt)';
}


}

/// @nodoc
abstract mixin class $CartCreateOrderDeliveryDtoCopyWith<$Res>  {
  factory $CartCreateOrderDeliveryDtoCopyWith(CartCreateOrderDeliveryDto value, $Res Function(CartCreateOrderDeliveryDto) _then) = _$CartCreateOrderDeliveryDtoCopyWithImpl;
@useResult
$Res call({
 String status, String courierCode, String courierName, String trackingNumber,@LocalDateTimeConverter() DateTime shippedAt,@LocalDateTimeConverter() DateTime deliveredAt
});




}
/// @nodoc
class _$CartCreateOrderDeliveryDtoCopyWithImpl<$Res>
    implements $CartCreateOrderDeliveryDtoCopyWith<$Res> {
  _$CartCreateOrderDeliveryDtoCopyWithImpl(this._self, this._then);

  final CartCreateOrderDeliveryDto _self;
  final $Res Function(CartCreateOrderDeliveryDto) _then;

/// Create a copy of CartCreateOrderDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? courierCode = null,Object? courierName = null,Object? trackingNumber = null,Object? shippedAt = null,Object? deliveredAt = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,courierCode: null == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String,courierName: null == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,shippedAt: null == shippedAt ? _self.shippedAt : shippedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliveredAt: null == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CartCreateOrderDeliveryDto].
extension CartCreateOrderDeliveryDtoPatterns on CartCreateOrderDeliveryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCreateOrderDeliveryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCreateOrderDeliveryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCreateOrderDeliveryDto value)  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderDeliveryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCreateOrderDeliveryDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderDeliveryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String courierCode,  String courierName,  String trackingNumber, @LocalDateTimeConverter()  DateTime shippedAt, @LocalDateTimeConverter()  DateTime deliveredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCreateOrderDeliveryDto() when $default != null:
return $default(_that.status,_that.courierCode,_that.courierName,_that.trackingNumber,_that.shippedAt,_that.deliveredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String courierCode,  String courierName,  String trackingNumber, @LocalDateTimeConverter()  DateTime shippedAt, @LocalDateTimeConverter()  DateTime deliveredAt)  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderDeliveryDto():
return $default(_that.status,_that.courierCode,_that.courierName,_that.trackingNumber,_that.shippedAt,_that.deliveredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String courierCode,  String courierName,  String trackingNumber, @LocalDateTimeConverter()  DateTime shippedAt, @LocalDateTimeConverter()  DateTime deliveredAt)?  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderDeliveryDto() when $default != null:
return $default(_that.status,_that.courierCode,_that.courierName,_that.trackingNumber,_that.shippedAt,_that.deliveredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCreateOrderDeliveryDto implements CartCreateOrderDeliveryDto {
  const _CartCreateOrderDeliveryDto({required this.status, required this.courierCode, required this.courierName, required this.trackingNumber, @LocalDateTimeConverter() required this.shippedAt, @LocalDateTimeConverter() required this.deliveredAt});
  factory _CartCreateOrderDeliveryDto.fromJson(Map<String, dynamic> json) => _$CartCreateOrderDeliveryDtoFromJson(json);

@override final  String status;
@override final  String courierCode;
@override final  String courierName;
@override final  String trackingNumber;
@override@LocalDateTimeConverter() final  DateTime shippedAt;
@override@LocalDateTimeConverter() final  DateTime deliveredAt;

/// Create a copy of CartCreateOrderDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCreateOrderDeliveryDtoCopyWith<_CartCreateOrderDeliveryDto> get copyWith => __$CartCreateOrderDeliveryDtoCopyWithImpl<_CartCreateOrderDeliveryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCreateOrderDeliveryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCreateOrderDeliveryDto&&(identical(other.status, status) || other.status == status)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.shippedAt, shippedAt) || other.shippedAt == shippedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,courierCode,courierName,trackingNumber,shippedAt,deliveredAt);

@override
String toString() {
  return 'CartCreateOrderDeliveryDto(status: $status, courierCode: $courierCode, courierName: $courierName, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt)';
}


}

/// @nodoc
abstract mixin class _$CartCreateOrderDeliveryDtoCopyWith<$Res> implements $CartCreateOrderDeliveryDtoCopyWith<$Res> {
  factory _$CartCreateOrderDeliveryDtoCopyWith(_CartCreateOrderDeliveryDto value, $Res Function(_CartCreateOrderDeliveryDto) _then) = __$CartCreateOrderDeliveryDtoCopyWithImpl;
@override @useResult
$Res call({
 String status, String courierCode, String courierName, String trackingNumber,@LocalDateTimeConverter() DateTime shippedAt,@LocalDateTimeConverter() DateTime deliveredAt
});




}
/// @nodoc
class __$CartCreateOrderDeliveryDtoCopyWithImpl<$Res>
    implements _$CartCreateOrderDeliveryDtoCopyWith<$Res> {
  __$CartCreateOrderDeliveryDtoCopyWithImpl(this._self, this._then);

  final _CartCreateOrderDeliveryDto _self;
  final $Res Function(_CartCreateOrderDeliveryDto) _then;

/// Create a copy of CartCreateOrderDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? courierCode = null,Object? courierName = null,Object? trackingNumber = null,Object? shippedAt = null,Object? deliveredAt = null,}) {
  return _then(_CartCreateOrderDeliveryDto(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,courierCode: null == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String,courierName: null == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,shippedAt: null == shippedAt ? _self.shippedAt : shippedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliveredAt: null == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CartCreateOrderPaymentDto {

 String? get paymentCode; String? get paymentMethod; String? get status;@NullableLocalDateTimeConverter() DateTime? get paidAt; int? get cancelledAmount; int? get netAmount; String? get receiptUrl; String? get approvalNumber; String? get vbankNumber; String? get vbankName;@NullableLocalDateTimeConverter() DateTime? get vbankExpDate; String? get vbankHolder;
/// Create a copy of CartCreateOrderPaymentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCreateOrderPaymentDtoCopyWith<CartCreateOrderPaymentDto> get copyWith => _$CartCreateOrderPaymentDtoCopyWithImpl<CartCreateOrderPaymentDto>(this as CartCreateOrderPaymentDto, _$identity);

  /// Serializes this CartCreateOrderPaymentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCreateOrderPaymentDto&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.cancelledAmount, cancelledAmount) || other.cancelledAmount == cancelledAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.vbankNumber, vbankNumber) || other.vbankNumber == vbankNumber)&&(identical(other.vbankName, vbankName) || other.vbankName == vbankName)&&(identical(other.vbankExpDate, vbankExpDate) || other.vbankExpDate == vbankExpDate)&&(identical(other.vbankHolder, vbankHolder) || other.vbankHolder == vbankHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentCode,paymentMethod,status,paidAt,cancelledAmount,netAmount,receiptUrl,approvalNumber,vbankNumber,vbankName,vbankExpDate,vbankHolder);

@override
String toString() {
  return 'CartCreateOrderPaymentDto(paymentCode: $paymentCode, paymentMethod: $paymentMethod, status: $status, paidAt: $paidAt, cancelledAmount: $cancelledAmount, netAmount: $netAmount, receiptUrl: $receiptUrl, approvalNumber: $approvalNumber, vbankNumber: $vbankNumber, vbankName: $vbankName, vbankExpDate: $vbankExpDate, vbankHolder: $vbankHolder)';
}


}

/// @nodoc
abstract mixin class $CartCreateOrderPaymentDtoCopyWith<$Res>  {
  factory $CartCreateOrderPaymentDtoCopyWith(CartCreateOrderPaymentDto value, $Res Function(CartCreateOrderPaymentDto) _then) = _$CartCreateOrderPaymentDtoCopyWithImpl;
@useResult
$Res call({
 String? paymentCode, String? paymentMethod, String? status,@NullableLocalDateTimeConverter() DateTime? paidAt, int? cancelledAmount, int? netAmount, String? receiptUrl, String? approvalNumber, String? vbankNumber, String? vbankName,@NullableLocalDateTimeConverter() DateTime? vbankExpDate, String? vbankHolder
});




}
/// @nodoc
class _$CartCreateOrderPaymentDtoCopyWithImpl<$Res>
    implements $CartCreateOrderPaymentDtoCopyWith<$Res> {
  _$CartCreateOrderPaymentDtoCopyWithImpl(this._self, this._then);

  final CartCreateOrderPaymentDto _self;
  final $Res Function(CartCreateOrderPaymentDto) _then;

/// Create a copy of CartCreateOrderPaymentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentCode = freezed,Object? paymentMethod = freezed,Object? status = freezed,Object? paidAt = freezed,Object? cancelledAmount = freezed,Object? netAmount = freezed,Object? receiptUrl = freezed,Object? approvalNumber = freezed,Object? vbankNumber = freezed,Object? vbankName = freezed,Object? vbankExpDate = freezed,Object? vbankHolder = freezed,}) {
  return _then(_self.copyWith(
paymentCode: freezed == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAmount: freezed == cancelledAmount ? _self.cancelledAmount : cancelledAmount // ignore: cast_nullable_to_non_nullable
as int?,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,approvalNumber: freezed == approvalNumber ? _self.approvalNumber : approvalNumber // ignore: cast_nullable_to_non_nullable
as String?,vbankNumber: freezed == vbankNumber ? _self.vbankNumber : vbankNumber // ignore: cast_nullable_to_non_nullable
as String?,vbankName: freezed == vbankName ? _self.vbankName : vbankName // ignore: cast_nullable_to_non_nullable
as String?,vbankExpDate: freezed == vbankExpDate ? _self.vbankExpDate : vbankExpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vbankHolder: freezed == vbankHolder ? _self.vbankHolder : vbankHolder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartCreateOrderPaymentDto].
extension CartCreateOrderPaymentDtoPatterns on CartCreateOrderPaymentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCreateOrderPaymentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCreateOrderPaymentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCreateOrderPaymentDto value)  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderPaymentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCreateOrderPaymentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderPaymentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? paymentCode,  String? paymentMethod,  String? status, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCreateOrderPaymentDto() when $default != null:
return $default(_that.paymentCode,_that.paymentMethod,_that.status,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? paymentCode,  String? paymentMethod,  String? status, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderPaymentDto():
return $default(_that.paymentCode,_that.paymentMethod,_that.status,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? paymentCode,  String? paymentMethod,  String? status, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)?  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderPaymentDto() when $default != null:
return $default(_that.paymentCode,_that.paymentMethod,_that.status,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCreateOrderPaymentDto implements CartCreateOrderPaymentDto {
  const _CartCreateOrderPaymentDto({required this.paymentCode, required this.paymentMethod, required this.status, @NullableLocalDateTimeConverter() this.paidAt, this.cancelledAmount, this.netAmount, this.receiptUrl, this.approvalNumber, this.vbankNumber, this.vbankName, @NullableLocalDateTimeConverter() this.vbankExpDate, this.vbankHolder});
  factory _CartCreateOrderPaymentDto.fromJson(Map<String, dynamic> json) => _$CartCreateOrderPaymentDtoFromJson(json);

@override final  String? paymentCode;
@override final  String? paymentMethod;
@override final  String? status;
@override@NullableLocalDateTimeConverter() final  DateTime? paidAt;
@override final  int? cancelledAmount;
@override final  int? netAmount;
@override final  String? receiptUrl;
@override final  String? approvalNumber;
@override final  String? vbankNumber;
@override final  String? vbankName;
@override@NullableLocalDateTimeConverter() final  DateTime? vbankExpDate;
@override final  String? vbankHolder;

/// Create a copy of CartCreateOrderPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCreateOrderPaymentDtoCopyWith<_CartCreateOrderPaymentDto> get copyWith => __$CartCreateOrderPaymentDtoCopyWithImpl<_CartCreateOrderPaymentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCreateOrderPaymentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCreateOrderPaymentDto&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.cancelledAmount, cancelledAmount) || other.cancelledAmount == cancelledAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.vbankNumber, vbankNumber) || other.vbankNumber == vbankNumber)&&(identical(other.vbankName, vbankName) || other.vbankName == vbankName)&&(identical(other.vbankExpDate, vbankExpDate) || other.vbankExpDate == vbankExpDate)&&(identical(other.vbankHolder, vbankHolder) || other.vbankHolder == vbankHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentCode,paymentMethod,status,paidAt,cancelledAmount,netAmount,receiptUrl,approvalNumber,vbankNumber,vbankName,vbankExpDate,vbankHolder);

@override
String toString() {
  return 'CartCreateOrderPaymentDto(paymentCode: $paymentCode, paymentMethod: $paymentMethod, status: $status, paidAt: $paidAt, cancelledAmount: $cancelledAmount, netAmount: $netAmount, receiptUrl: $receiptUrl, approvalNumber: $approvalNumber, vbankNumber: $vbankNumber, vbankName: $vbankName, vbankExpDate: $vbankExpDate, vbankHolder: $vbankHolder)';
}


}

/// @nodoc
abstract mixin class _$CartCreateOrderPaymentDtoCopyWith<$Res> implements $CartCreateOrderPaymentDtoCopyWith<$Res> {
  factory _$CartCreateOrderPaymentDtoCopyWith(_CartCreateOrderPaymentDto value, $Res Function(_CartCreateOrderPaymentDto) _then) = __$CartCreateOrderPaymentDtoCopyWithImpl;
@override @useResult
$Res call({
 String? paymentCode, String? paymentMethod, String? status,@NullableLocalDateTimeConverter() DateTime? paidAt, int? cancelledAmount, int? netAmount, String? receiptUrl, String? approvalNumber, String? vbankNumber, String? vbankName,@NullableLocalDateTimeConverter() DateTime? vbankExpDate, String? vbankHolder
});




}
/// @nodoc
class __$CartCreateOrderPaymentDtoCopyWithImpl<$Res>
    implements _$CartCreateOrderPaymentDtoCopyWith<$Res> {
  __$CartCreateOrderPaymentDtoCopyWithImpl(this._self, this._then);

  final _CartCreateOrderPaymentDto _self;
  final $Res Function(_CartCreateOrderPaymentDto) _then;

/// Create a copy of CartCreateOrderPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentCode = freezed,Object? paymentMethod = freezed,Object? status = freezed,Object? paidAt = freezed,Object? cancelledAmount = freezed,Object? netAmount = freezed,Object? receiptUrl = freezed,Object? approvalNumber = freezed,Object? vbankNumber = freezed,Object? vbankName = freezed,Object? vbankExpDate = freezed,Object? vbankHolder = freezed,}) {
  return _then(_CartCreateOrderPaymentDto(
paymentCode: freezed == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAmount: freezed == cancelledAmount ? _self.cancelledAmount : cancelledAmount // ignore: cast_nullable_to_non_nullable
as int?,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,approvalNumber: freezed == approvalNumber ? _self.approvalNumber : approvalNumber // ignore: cast_nullable_to_non_nullable
as String?,vbankNumber: freezed == vbankNumber ? _self.vbankNumber : vbankNumber // ignore: cast_nullable_to_non_nullable
as String?,vbankName: freezed == vbankName ? _self.vbankName : vbankName // ignore: cast_nullable_to_non_nullable
as String?,vbankExpDate: freezed == vbankExpDate ? _self.vbankExpDate : vbankExpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vbankHolder: freezed == vbankHolder ? _self.vbankHolder : vbankHolder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
