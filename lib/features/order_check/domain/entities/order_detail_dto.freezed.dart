// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetailWrapper {

 OrderDetailDto get data;
/// Create a copy of OrderDetailWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailWrapperCopyWith<OrderDetailWrapper> get copyWith => _$OrderDetailWrapperCopyWithImpl<OrderDetailWrapper>(this as OrderDetailWrapper, _$identity);

  /// Serializes this OrderDetailWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'OrderDetailWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $OrderDetailWrapperCopyWith<$Res>  {
  factory $OrderDetailWrapperCopyWith(OrderDetailWrapper value, $Res Function(OrderDetailWrapper) _then) = _$OrderDetailWrapperCopyWithImpl;
@useResult
$Res call({
 OrderDetailDto data
});


$OrderDetailDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$OrderDetailWrapperCopyWithImpl<$Res>
    implements $OrderDetailWrapperCopyWith<$Res> {
  _$OrderDetailWrapperCopyWithImpl(this._self, this._then);

  final OrderDetailWrapper _self;
  final $Res Function(OrderDetailWrapper) _then;

/// Create a copy of OrderDetailWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OrderDetailDto,
  ));
}
/// Create a copy of OrderDetailWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailDtoCopyWith<$Res> get data {
  
  return $OrderDetailDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailWrapper].
extension OrderDetailWrapperPatterns on OrderDetailWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailWrapper value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderDetailDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderDetailDto data)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderDetailDto data)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailWrapper implements OrderDetailWrapper {
  const _OrderDetailWrapper({required this.data});
  factory _OrderDetailWrapper.fromJson(Map<String, dynamic> json) => _$OrderDetailWrapperFromJson(json);

@override final  OrderDetailDto data;

/// Create a copy of OrderDetailWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailWrapperCopyWith<_OrderDetailWrapper> get copyWith => __$OrderDetailWrapperCopyWithImpl<_OrderDetailWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'OrderDetailWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailWrapperCopyWith<$Res> implements $OrderDetailWrapperCopyWith<$Res> {
  factory _$OrderDetailWrapperCopyWith(_OrderDetailWrapper value, $Res Function(_OrderDetailWrapper) _then) = __$OrderDetailWrapperCopyWithImpl;
@override @useResult
$Res call({
 OrderDetailDto data
});


@override $OrderDetailDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$OrderDetailWrapperCopyWithImpl<$Res>
    implements _$OrderDetailWrapperCopyWith<$Res> {
  __$OrderDetailWrapperCopyWithImpl(this._self, this._then);

  final _OrderDetailWrapper _self;
  final $Res Function(_OrderDetailWrapper) _then;

/// Create a copy of OrderDetailWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_OrderDetailWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OrderDetailDto,
  ));
}

/// Create a copy of OrderDetailWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailDtoCopyWith<$Res> get data {
  
  return $OrderDetailDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$OrderDetailDto {

 int get id; String get orderCode; String get idempotencyKey; int? get buyerProfileId; String? get buyerBusinessName; int? get sellerProfileId; String? get sellerBusinessName; String? get addressName; String? get recipientName; String? get zipCode; String? get address; String? get addressDetail; String? get phone; String? get deliveryRequest;@JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson) OrderStatus get status; int? get totalAmount; int? get deliveryFee; int? get jejuDeliveryFee; String? get deliveryMethod; String? get rejectionReason; String? get rejectionReasonDetail; int? get claimId; List<OrderDetailItemDto> get items; OrderDetailDeliveryDto? get delivery; OrderDetailPaymentDto? get payment; bool? get isReviewable;@LocalDateTimeConverter() DateTime get createdAt;@LocalDateTimeConverter() DateTime get updatedAt;
/// Create a copy of OrderDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailDtoCopyWith<OrderDetailDto> get copyWith => _$OrderDetailDtoCopyWithImpl<OrderDetailDto>(this as OrderDetailDto, _$identity);

  /// Serializes this OrderDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.buyerProfileId, buyerProfileId) || other.buyerProfileId == buyerProfileId)&&(identical(other.buyerBusinessName, buyerBusinessName) || other.buyerBusinessName == buyerBusinessName)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.deliveryMethod, deliveryMethod) || other.deliveryMethod == deliveryMethod)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.rejectionReasonDetail, rejectionReasonDetail) || other.rejectionReasonDetail == rejectionReasonDetail)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.isReviewable, isReviewable) || other.isReviewable == isReviewable)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,orderCode,idempotencyKey,buyerProfileId,buyerBusinessName,sellerProfileId,sellerBusinessName,addressName,recipientName,zipCode,address,addressDetail,phone,deliveryRequest,status,totalAmount,deliveryFee,jejuDeliveryFee,deliveryMethod,rejectionReason,rejectionReasonDetail,claimId,const DeepCollectionEquality().hash(items),delivery,payment,isReviewable,createdAt,updatedAt]);

@override
String toString() {
  return 'OrderDetailDto(id: $id, orderCode: $orderCode, idempotencyKey: $idempotencyKey, buyerProfileId: $buyerProfileId, buyerBusinessName: $buyerBusinessName, sellerProfileId: $sellerProfileId, sellerBusinessName: $sellerBusinessName, addressName: $addressName, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, deliveryRequest: $deliveryRequest, status: $status, totalAmount: $totalAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, deliveryMethod: $deliveryMethod, rejectionReason: $rejectionReason, rejectionReasonDetail: $rejectionReasonDetail, claimId: $claimId, items: $items, delivery: $delivery, payment: $payment, isReviewable: $isReviewable, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $OrderDetailDtoCopyWith<$Res>  {
  factory $OrderDetailDtoCopyWith(OrderDetailDto value, $Res Function(OrderDetailDto) _then) = _$OrderDetailDtoCopyWithImpl;
@useResult
$Res call({
 int id, String orderCode, String idempotencyKey, int? buyerProfileId, String? buyerBusinessName, int? sellerProfileId, String? sellerBusinessName, String? addressName, String? recipientName, String? zipCode, String? address, String? addressDetail, String? phone, String? deliveryRequest,@JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson) OrderStatus status, int? totalAmount, int? deliveryFee, int? jejuDeliveryFee, String? deliveryMethod, String? rejectionReason, String? rejectionReasonDetail, int? claimId, List<OrderDetailItemDto> items, OrderDetailDeliveryDto? delivery, OrderDetailPaymentDto? payment, bool? isReviewable,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});


$OrderDetailDeliveryDtoCopyWith<$Res>? get delivery;$OrderDetailPaymentDtoCopyWith<$Res>? get payment;

}
/// @nodoc
class _$OrderDetailDtoCopyWithImpl<$Res>
    implements $OrderDetailDtoCopyWith<$Res> {
  _$OrderDetailDtoCopyWithImpl(this._self, this._then);

  final OrderDetailDto _self;
  final $Res Function(OrderDetailDto) _then;

/// Create a copy of OrderDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderCode = null,Object? idempotencyKey = null,Object? buyerProfileId = freezed,Object? buyerBusinessName = freezed,Object? sellerProfileId = freezed,Object? sellerBusinessName = freezed,Object? addressName = freezed,Object? recipientName = freezed,Object? zipCode = freezed,Object? address = freezed,Object? addressDetail = freezed,Object? phone = freezed,Object? deliveryRequest = freezed,Object? status = null,Object? totalAmount = freezed,Object? deliveryFee = freezed,Object? jejuDeliveryFee = freezed,Object? deliveryMethod = freezed,Object? rejectionReason = freezed,Object? rejectionReasonDetail = freezed,Object? claimId = freezed,Object? items = null,Object? delivery = freezed,Object? payment = freezed,Object? isReviewable = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
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
as OrderStatus,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int?,jejuDeliveryFee: freezed == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int?,deliveryMethod: freezed == deliveryMethod ? _self.deliveryMethod : deliveryMethod // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,rejectionReasonDetail: freezed == rejectionReasonDetail ? _self.rejectionReasonDetail : rejectionReasonDetail // ignore: cast_nullable_to_non_nullable
as String?,claimId: freezed == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as int?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderDetailItemDto>,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as OrderDetailDeliveryDto?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as OrderDetailPaymentDto?,isReviewable: freezed == isReviewable ? _self.isReviewable : isReviewable // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of OrderDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailDeliveryDtoCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $OrderDetailDeliveryDtoCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of OrderDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailPaymentDtoCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $OrderDetailPaymentDtoCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailDto].
extension OrderDetailDtoPatterns on OrderDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest, @JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson)  OrderStatus status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  int? claimId,  List<OrderDetailItemDto> items,  OrderDetailDeliveryDto? delivery,  OrderDetailPaymentDto? payment,  bool? isReviewable, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailDto() when $default != null:
return $default(_that.id,_that.orderCode,_that.idempotencyKey,_that.buyerProfileId,_that.buyerBusinessName,_that.sellerProfileId,_that.sellerBusinessName,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.deliveryRequest,_that.status,_that.totalAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.deliveryMethod,_that.rejectionReason,_that.rejectionReasonDetail,_that.claimId,_that.items,_that.delivery,_that.payment,_that.isReviewable,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest, @JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson)  OrderStatus status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  int? claimId,  List<OrderDetailItemDto> items,  OrderDetailDeliveryDto? delivery,  OrderDetailPaymentDto? payment,  bool? isReviewable, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailDto():
return $default(_that.id,_that.orderCode,_that.idempotencyKey,_that.buyerProfileId,_that.buyerBusinessName,_that.sellerProfileId,_that.sellerBusinessName,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.deliveryRequest,_that.status,_that.totalAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.deliveryMethod,_that.rejectionReason,_that.rejectionReasonDetail,_that.claimId,_that.items,_that.delivery,_that.payment,_that.isReviewable,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest, @JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson)  OrderStatus status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  int? claimId,  List<OrderDetailItemDto> items,  OrderDetailDeliveryDto? delivery,  OrderDetailPaymentDto? payment,  bool? isReviewable, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailDto() when $default != null:
return $default(_that.id,_that.orderCode,_that.idempotencyKey,_that.buyerProfileId,_that.buyerBusinessName,_that.sellerProfileId,_that.sellerBusinessName,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.deliveryRequest,_that.status,_that.totalAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.deliveryMethod,_that.rejectionReason,_that.rejectionReasonDetail,_that.claimId,_that.items,_that.delivery,_that.payment,_that.isReviewable,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailDto implements OrderDetailDto {
  const _OrderDetailDto({required this.id, required this.orderCode, required this.idempotencyKey, this.buyerProfileId, this.buyerBusinessName, this.sellerProfileId, this.sellerBusinessName, this.addressName, this.recipientName, this.zipCode, this.address, this.addressDetail, this.phone, this.deliveryRequest, @JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson) required this.status, this.totalAmount, this.deliveryFee, this.jejuDeliveryFee, this.deliveryMethod, this.rejectionReason, this.rejectionReasonDetail, this.claimId, required final  List<OrderDetailItemDto> items, this.delivery, this.payment, this.isReviewable, @LocalDateTimeConverter() required this.createdAt, @LocalDateTimeConverter() required this.updatedAt}): _items = items;
  factory _OrderDetailDto.fromJson(Map<String, dynamic> json) => _$OrderDetailDtoFromJson(json);

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
@override@JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson) final  OrderStatus status;
@override final  int? totalAmount;
@override final  int? deliveryFee;
@override final  int? jejuDeliveryFee;
@override final  String? deliveryMethod;
@override final  String? rejectionReason;
@override final  String? rejectionReasonDetail;
@override final  int? claimId;
 final  List<OrderDetailItemDto> _items;
@override List<OrderDetailItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  OrderDetailDeliveryDto? delivery;
@override final  OrderDetailPaymentDto? payment;
@override final  bool? isReviewable;
@override@LocalDateTimeConverter() final  DateTime createdAt;
@override@LocalDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of OrderDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailDtoCopyWith<_OrderDetailDto> get copyWith => __$OrderDetailDtoCopyWithImpl<_OrderDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.buyerProfileId, buyerProfileId) || other.buyerProfileId == buyerProfileId)&&(identical(other.buyerBusinessName, buyerBusinessName) || other.buyerBusinessName == buyerBusinessName)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.deliveryMethod, deliveryMethod) || other.deliveryMethod == deliveryMethod)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.rejectionReasonDetail, rejectionReasonDetail) || other.rejectionReasonDetail == rejectionReasonDetail)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.isReviewable, isReviewable) || other.isReviewable == isReviewable)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,orderCode,idempotencyKey,buyerProfileId,buyerBusinessName,sellerProfileId,sellerBusinessName,addressName,recipientName,zipCode,address,addressDetail,phone,deliveryRequest,status,totalAmount,deliveryFee,jejuDeliveryFee,deliveryMethod,rejectionReason,rejectionReasonDetail,claimId,const DeepCollectionEquality().hash(_items),delivery,payment,isReviewable,createdAt,updatedAt]);

@override
String toString() {
  return 'OrderDetailDto(id: $id, orderCode: $orderCode, idempotencyKey: $idempotencyKey, buyerProfileId: $buyerProfileId, buyerBusinessName: $buyerBusinessName, sellerProfileId: $sellerProfileId, sellerBusinessName: $sellerBusinessName, addressName: $addressName, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, deliveryRequest: $deliveryRequest, status: $status, totalAmount: $totalAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, deliveryMethod: $deliveryMethod, rejectionReason: $rejectionReason, rejectionReasonDetail: $rejectionReasonDetail, claimId: $claimId, items: $items, delivery: $delivery, payment: $payment, isReviewable: $isReviewable, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailDtoCopyWith<$Res> implements $OrderDetailDtoCopyWith<$Res> {
  factory _$OrderDetailDtoCopyWith(_OrderDetailDto value, $Res Function(_OrderDetailDto) _then) = __$OrderDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String orderCode, String idempotencyKey, int? buyerProfileId, String? buyerBusinessName, int? sellerProfileId, String? sellerBusinessName, String? addressName, String? recipientName, String? zipCode, String? address, String? addressDetail, String? phone, String? deliveryRequest,@JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson) OrderStatus status, int? totalAmount, int? deliveryFee, int? jejuDeliveryFee, String? deliveryMethod, String? rejectionReason, String? rejectionReasonDetail, int? claimId, List<OrderDetailItemDto> items, OrderDetailDeliveryDto? delivery, OrderDetailPaymentDto? payment, bool? isReviewable,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});


@override $OrderDetailDeliveryDtoCopyWith<$Res>? get delivery;@override $OrderDetailPaymentDtoCopyWith<$Res>? get payment;

}
/// @nodoc
class __$OrderDetailDtoCopyWithImpl<$Res>
    implements _$OrderDetailDtoCopyWith<$Res> {
  __$OrderDetailDtoCopyWithImpl(this._self, this._then);

  final _OrderDetailDto _self;
  final $Res Function(_OrderDetailDto) _then;

/// Create a copy of OrderDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderCode = null,Object? idempotencyKey = null,Object? buyerProfileId = freezed,Object? buyerBusinessName = freezed,Object? sellerProfileId = freezed,Object? sellerBusinessName = freezed,Object? addressName = freezed,Object? recipientName = freezed,Object? zipCode = freezed,Object? address = freezed,Object? addressDetail = freezed,Object? phone = freezed,Object? deliveryRequest = freezed,Object? status = null,Object? totalAmount = freezed,Object? deliveryFee = freezed,Object? jejuDeliveryFee = freezed,Object? deliveryMethod = freezed,Object? rejectionReason = freezed,Object? rejectionReasonDetail = freezed,Object? claimId = freezed,Object? items = null,Object? delivery = freezed,Object? payment = freezed,Object? isReviewable = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_OrderDetailDto(
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
as OrderStatus,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int?,jejuDeliveryFee: freezed == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int?,deliveryMethod: freezed == deliveryMethod ? _self.deliveryMethod : deliveryMethod // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,rejectionReasonDetail: freezed == rejectionReasonDetail ? _self.rejectionReasonDetail : rejectionReasonDetail // ignore: cast_nullable_to_non_nullable
as String?,claimId: freezed == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as int?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderDetailItemDto>,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as OrderDetailDeliveryDto?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as OrderDetailPaymentDto?,isReviewable: freezed == isReviewable ? _self.isReviewable : isReviewable // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of OrderDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailDeliveryDtoCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $OrderDetailDeliveryDtoCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of OrderDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailPaymentDtoCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $OrderDetailPaymentDtoCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// @nodoc
mixin _$OrderDetailItemDto {

 int get id; int get productId; String get thumbnailImageUrl; String get productName; int get productOptionId; String get optionName; int get unitPrice; int get quantity; int get totalPrice; bool get isTaxable;
/// Create a copy of OrderDetailItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailItemDtoCopyWith<OrderDetailItemDto> get copyWith => _$OrderDetailItemDtoCopyWithImpl<OrderDetailItemDto>(this as OrderDetailItemDto, _$identity);

  /// Serializes this OrderDetailItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isTaxable, isTaxable) || other.isTaxable == isTaxable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,thumbnailImageUrl,productName,productOptionId,optionName,unitPrice,quantity,totalPrice,isTaxable);

@override
String toString() {
  return 'OrderDetailItemDto(id: $id, productId: $productId, thumbnailImageUrl: $thumbnailImageUrl, productName: $productName, productOptionId: $productOptionId, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, isTaxable: $isTaxable)';
}


}

/// @nodoc
abstract mixin class $OrderDetailItemDtoCopyWith<$Res>  {
  factory $OrderDetailItemDtoCopyWith(OrderDetailItemDto value, $Res Function(OrderDetailItemDto) _then) = _$OrderDetailItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, int productId, String thumbnailImageUrl, String productName, int productOptionId, String optionName, int unitPrice, int quantity, int totalPrice, bool isTaxable
});




}
/// @nodoc
class _$OrderDetailItemDtoCopyWithImpl<$Res>
    implements $OrderDetailItemDtoCopyWith<$Res> {
  _$OrderDetailItemDtoCopyWithImpl(this._self, this._then);

  final OrderDetailItemDto _self;
  final $Res Function(OrderDetailItemDto) _then;

/// Create a copy of OrderDetailItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? thumbnailImageUrl = null,Object? productName = null,Object? productOptionId = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? isTaxable = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [OrderDetailItemDto].
extension OrderDetailItemDtoPatterns on OrderDetailItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailItemDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int productId,  String thumbnailImageUrl,  String productName,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  bool isTaxable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailItemDto() when $default != null:
return $default(_that.id,_that.productId,_that.thumbnailImageUrl,_that.productName,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.isTaxable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int productId,  String thumbnailImageUrl,  String productName,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  bool isTaxable)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailItemDto():
return $default(_that.id,_that.productId,_that.thumbnailImageUrl,_that.productName,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.isTaxable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int productId,  String thumbnailImageUrl,  String productName,  int productOptionId,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  bool isTaxable)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailItemDto() when $default != null:
return $default(_that.id,_that.productId,_that.thumbnailImageUrl,_that.productName,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.isTaxable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailItemDto implements OrderDetailItemDto {
  const _OrderDetailItemDto({required this.id, required this.productId, required this.thumbnailImageUrl, required this.productName, required this.productOptionId, required this.optionName, required this.unitPrice, required this.quantity, required this.totalPrice, required this.isTaxable});
  factory _OrderDetailItemDto.fromJson(Map<String, dynamic> json) => _$OrderDetailItemDtoFromJson(json);

@override final  int id;
@override final  int productId;
@override final  String thumbnailImageUrl;
@override final  String productName;
@override final  int productOptionId;
@override final  String optionName;
@override final  int unitPrice;
@override final  int quantity;
@override final  int totalPrice;
@override final  bool isTaxable;

/// Create a copy of OrderDetailItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailItemDtoCopyWith<_OrderDetailItemDto> get copyWith => __$OrderDetailItemDtoCopyWithImpl<_OrderDetailItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isTaxable, isTaxable) || other.isTaxable == isTaxable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,thumbnailImageUrl,productName,productOptionId,optionName,unitPrice,quantity,totalPrice,isTaxable);

@override
String toString() {
  return 'OrderDetailItemDto(id: $id, productId: $productId, thumbnailImageUrl: $thumbnailImageUrl, productName: $productName, productOptionId: $productOptionId, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, isTaxable: $isTaxable)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailItemDtoCopyWith<$Res> implements $OrderDetailItemDtoCopyWith<$Res> {
  factory _$OrderDetailItemDtoCopyWith(_OrderDetailItemDto value, $Res Function(_OrderDetailItemDto) _then) = __$OrderDetailItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int productId, String thumbnailImageUrl, String productName, int productOptionId, String optionName, int unitPrice, int quantity, int totalPrice, bool isTaxable
});




}
/// @nodoc
class __$OrderDetailItemDtoCopyWithImpl<$Res>
    implements _$OrderDetailItemDtoCopyWith<$Res> {
  __$OrderDetailItemDtoCopyWithImpl(this._self, this._then);

  final _OrderDetailItemDto _self;
  final $Res Function(_OrderDetailItemDto) _then;

/// Create a copy of OrderDetailItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? thumbnailImageUrl = null,Object? productName = null,Object? productOptionId = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? isTaxable = null,}) {
  return _then(_OrderDetailItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
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
mixin _$OrderDetailDeliveryDto {

@JsonKey(fromJson: OrderDeliveryStatus.fromJson, toJson: OrderDeliveryStatus.toJson) OrderDeliveryStatus get status; String? get courierCode; String? get courierName; String? get trackingNumber;@NullableLocalDateTimeConverter() DateTime? get shippedAt;@NullableLocalDateTimeConverter() DateTime? get deliveredAt;
/// Create a copy of OrderDetailDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailDeliveryDtoCopyWith<OrderDetailDeliveryDto> get copyWith => _$OrderDetailDeliveryDtoCopyWithImpl<OrderDetailDeliveryDto>(this as OrderDetailDeliveryDto, _$identity);

  /// Serializes this OrderDetailDeliveryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailDeliveryDto&&(identical(other.status, status) || other.status == status)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.shippedAt, shippedAt) || other.shippedAt == shippedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,courierCode,courierName,trackingNumber,shippedAt,deliveredAt);

@override
String toString() {
  return 'OrderDetailDeliveryDto(status: $status, courierCode: $courierCode, courierName: $courierName, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt)';
}


}

/// @nodoc
abstract mixin class $OrderDetailDeliveryDtoCopyWith<$Res>  {
  factory $OrderDetailDeliveryDtoCopyWith(OrderDetailDeliveryDto value, $Res Function(OrderDetailDeliveryDto) _then) = _$OrderDetailDeliveryDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: OrderDeliveryStatus.fromJson, toJson: OrderDeliveryStatus.toJson) OrderDeliveryStatus status, String? courierCode, String? courierName, String? trackingNumber,@NullableLocalDateTimeConverter() DateTime? shippedAt,@NullableLocalDateTimeConverter() DateTime? deliveredAt
});




}
/// @nodoc
class _$OrderDetailDeliveryDtoCopyWithImpl<$Res>
    implements $OrderDetailDeliveryDtoCopyWith<$Res> {
  _$OrderDetailDeliveryDtoCopyWithImpl(this._self, this._then);

  final OrderDetailDeliveryDto _self;
  final $Res Function(OrderDetailDeliveryDto) _then;

/// Create a copy of OrderDetailDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? courierCode = freezed,Object? courierName = freezed,Object? trackingNumber = freezed,Object? shippedAt = freezed,Object? deliveredAt = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDeliveryStatus,courierCode: freezed == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String?,courierName: freezed == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String?,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,shippedAt: freezed == shippedAt ? _self.shippedAt : shippedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDetailDeliveryDto].
extension OrderDetailDeliveryDtoPatterns on OrderDetailDeliveryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailDeliveryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailDeliveryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailDeliveryDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailDeliveryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailDeliveryDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailDeliveryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: OrderDeliveryStatus.fromJson, toJson: OrderDeliveryStatus.toJson)  OrderDeliveryStatus status,  String? courierCode,  String? courierName,  String? trackingNumber, @NullableLocalDateTimeConverter()  DateTime? shippedAt, @NullableLocalDateTimeConverter()  DateTime? deliveredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailDeliveryDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: OrderDeliveryStatus.fromJson, toJson: OrderDeliveryStatus.toJson)  OrderDeliveryStatus status,  String? courierCode,  String? courierName,  String? trackingNumber, @NullableLocalDateTimeConverter()  DateTime? shippedAt, @NullableLocalDateTimeConverter()  DateTime? deliveredAt)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailDeliveryDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: OrderDeliveryStatus.fromJson, toJson: OrderDeliveryStatus.toJson)  OrderDeliveryStatus status,  String? courierCode,  String? courierName,  String? trackingNumber, @NullableLocalDateTimeConverter()  DateTime? shippedAt, @NullableLocalDateTimeConverter()  DateTime? deliveredAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailDeliveryDto() when $default != null:
return $default(_that.status,_that.courierCode,_that.courierName,_that.trackingNumber,_that.shippedAt,_that.deliveredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailDeliveryDto implements OrderDetailDeliveryDto {
  const _OrderDetailDeliveryDto({@JsonKey(fromJson: OrderDeliveryStatus.fromJson, toJson: OrderDeliveryStatus.toJson) required this.status, this.courierCode, this.courierName, this.trackingNumber, @NullableLocalDateTimeConverter() this.shippedAt, @NullableLocalDateTimeConverter() this.deliveredAt});
  factory _OrderDetailDeliveryDto.fromJson(Map<String, dynamic> json) => _$OrderDetailDeliveryDtoFromJson(json);

@override@JsonKey(fromJson: OrderDeliveryStatus.fromJson, toJson: OrderDeliveryStatus.toJson) final  OrderDeliveryStatus status;
@override final  String? courierCode;
@override final  String? courierName;
@override final  String? trackingNumber;
@override@NullableLocalDateTimeConverter() final  DateTime? shippedAt;
@override@NullableLocalDateTimeConverter() final  DateTime? deliveredAt;

/// Create a copy of OrderDetailDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailDeliveryDtoCopyWith<_OrderDetailDeliveryDto> get copyWith => __$OrderDetailDeliveryDtoCopyWithImpl<_OrderDetailDeliveryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailDeliveryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailDeliveryDto&&(identical(other.status, status) || other.status == status)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.shippedAt, shippedAt) || other.shippedAt == shippedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,courierCode,courierName,trackingNumber,shippedAt,deliveredAt);

@override
String toString() {
  return 'OrderDetailDeliveryDto(status: $status, courierCode: $courierCode, courierName: $courierName, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailDeliveryDtoCopyWith<$Res> implements $OrderDetailDeliveryDtoCopyWith<$Res> {
  factory _$OrderDetailDeliveryDtoCopyWith(_OrderDetailDeliveryDto value, $Res Function(_OrderDetailDeliveryDto) _then) = __$OrderDetailDeliveryDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: OrderDeliveryStatus.fromJson, toJson: OrderDeliveryStatus.toJson) OrderDeliveryStatus status, String? courierCode, String? courierName, String? trackingNumber,@NullableLocalDateTimeConverter() DateTime? shippedAt,@NullableLocalDateTimeConverter() DateTime? deliveredAt
});




}
/// @nodoc
class __$OrderDetailDeliveryDtoCopyWithImpl<$Res>
    implements _$OrderDetailDeliveryDtoCopyWith<$Res> {
  __$OrderDetailDeliveryDtoCopyWithImpl(this._self, this._then);

  final _OrderDetailDeliveryDto _self;
  final $Res Function(_OrderDetailDeliveryDto) _then;

/// Create a copy of OrderDetailDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? courierCode = freezed,Object? courierName = freezed,Object? trackingNumber = freezed,Object? shippedAt = freezed,Object? deliveredAt = freezed,}) {
  return _then(_OrderDetailDeliveryDto(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDeliveryStatus,courierCode: freezed == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String?,courierName: freezed == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String?,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,shippedAt: freezed == shippedAt ? _self.shippedAt : shippedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$OrderDetailPaymentDto {

 int get paymentId; String get paymentCode;@JsonKey(fromJson: OrderPaymentMethod.fromJson, toJson: OrderPaymentMethod.toJson) OrderPaymentMethod get paymentMethod;@JsonKey(fromJson: OrderPaymentStatus.fromJson, toJson: OrderPaymentStatus.toJson) OrderPaymentStatus get status;@NullableLocalDateTimeConverter() DateTime? get paidAt; int? get cancelledAmount; int? get netAmount; String? get receiptUrl; String? get approvalNumber; String? get cardType; String? get cardName; String? get cardNum; int? get cardQuota; bool? get isInterestFree; String? get vbankNumber; String? get vbankName;@NullableLocalDateTimeConverter() DateTime? get vbankExpDate; String? get vbankHolder;
/// Create a copy of OrderDetailPaymentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailPaymentDtoCopyWith<OrderDetailPaymentDto> get copyWith => _$OrderDetailPaymentDtoCopyWithImpl<OrderDetailPaymentDto>(this as OrderDetailPaymentDto, _$identity);

  /// Serializes this OrderDetailPaymentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailPaymentDto&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.cancelledAmount, cancelledAmount) || other.cancelledAmount == cancelledAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.cardName, cardName) || other.cardName == cardName)&&(identical(other.cardNum, cardNum) || other.cardNum == cardNum)&&(identical(other.cardQuota, cardQuota) || other.cardQuota == cardQuota)&&(identical(other.isInterestFree, isInterestFree) || other.isInterestFree == isInterestFree)&&(identical(other.vbankNumber, vbankNumber) || other.vbankNumber == vbankNumber)&&(identical(other.vbankName, vbankName) || other.vbankName == vbankName)&&(identical(other.vbankExpDate, vbankExpDate) || other.vbankExpDate == vbankExpDate)&&(identical(other.vbankHolder, vbankHolder) || other.vbankHolder == vbankHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentId,paymentCode,paymentMethod,status,paidAt,cancelledAmount,netAmount,receiptUrl,approvalNumber,cardType,cardName,cardNum,cardQuota,isInterestFree,vbankNumber,vbankName,vbankExpDate,vbankHolder);

@override
String toString() {
  return 'OrderDetailPaymentDto(paymentId: $paymentId, paymentCode: $paymentCode, paymentMethod: $paymentMethod, status: $status, paidAt: $paidAt, cancelledAmount: $cancelledAmount, netAmount: $netAmount, receiptUrl: $receiptUrl, approvalNumber: $approvalNumber, cardType: $cardType, cardName: $cardName, cardNum: $cardNum, cardQuota: $cardQuota, isInterestFree: $isInterestFree, vbankNumber: $vbankNumber, vbankName: $vbankName, vbankExpDate: $vbankExpDate, vbankHolder: $vbankHolder)';
}


}

/// @nodoc
abstract mixin class $OrderDetailPaymentDtoCopyWith<$Res>  {
  factory $OrderDetailPaymentDtoCopyWith(OrderDetailPaymentDto value, $Res Function(OrderDetailPaymentDto) _then) = _$OrderDetailPaymentDtoCopyWithImpl;
@useResult
$Res call({
 int paymentId, String paymentCode,@JsonKey(fromJson: OrderPaymentMethod.fromJson, toJson: OrderPaymentMethod.toJson) OrderPaymentMethod paymentMethod,@JsonKey(fromJson: OrderPaymentStatus.fromJson, toJson: OrderPaymentStatus.toJson) OrderPaymentStatus status,@NullableLocalDateTimeConverter() DateTime? paidAt, int? cancelledAmount, int? netAmount, String? receiptUrl, String? approvalNumber, String? cardType, String? cardName, String? cardNum, int? cardQuota, bool? isInterestFree, String? vbankNumber, String? vbankName,@NullableLocalDateTimeConverter() DateTime? vbankExpDate, String? vbankHolder
});




}
/// @nodoc
class _$OrderDetailPaymentDtoCopyWithImpl<$Res>
    implements $OrderDetailPaymentDtoCopyWith<$Res> {
  _$OrderDetailPaymentDtoCopyWithImpl(this._self, this._then);

  final OrderDetailPaymentDto _self;
  final $Res Function(OrderDetailPaymentDto) _then;

/// Create a copy of OrderDetailPaymentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,Object? paymentCode = null,Object? paymentMethod = null,Object? status = null,Object? paidAt = freezed,Object? cancelledAmount = freezed,Object? netAmount = freezed,Object? receiptUrl = freezed,Object? approvalNumber = freezed,Object? cardType = freezed,Object? cardName = freezed,Object? cardNum = freezed,Object? cardQuota = freezed,Object? isInterestFree = freezed,Object? vbankNumber = freezed,Object? vbankName = freezed,Object? vbankExpDate = freezed,Object? vbankHolder = freezed,}) {
  return _then(_self.copyWith(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as int,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as OrderPaymentMethod,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderPaymentStatus,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAmount: freezed == cancelledAmount ? _self.cancelledAmount : cancelledAmount // ignore: cast_nullable_to_non_nullable
as int?,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,approvalNumber: freezed == approvalNumber ? _self.approvalNumber : approvalNumber // ignore: cast_nullable_to_non_nullable
as String?,cardType: freezed == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String?,cardName: freezed == cardName ? _self.cardName : cardName // ignore: cast_nullable_to_non_nullable
as String?,cardNum: freezed == cardNum ? _self.cardNum : cardNum // ignore: cast_nullable_to_non_nullable
as String?,cardQuota: freezed == cardQuota ? _self.cardQuota : cardQuota // ignore: cast_nullable_to_non_nullable
as int?,isInterestFree: freezed == isInterestFree ? _self.isInterestFree : isInterestFree // ignore: cast_nullable_to_non_nullable
as bool?,vbankNumber: freezed == vbankNumber ? _self.vbankNumber : vbankNumber // ignore: cast_nullable_to_non_nullable
as String?,vbankName: freezed == vbankName ? _self.vbankName : vbankName // ignore: cast_nullable_to_non_nullable
as String?,vbankExpDate: freezed == vbankExpDate ? _self.vbankExpDate : vbankExpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vbankHolder: freezed == vbankHolder ? _self.vbankHolder : vbankHolder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDetailPaymentDto].
extension OrderDetailPaymentDtoPatterns on OrderDetailPaymentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailPaymentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailPaymentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailPaymentDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailPaymentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailPaymentDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailPaymentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int paymentId,  String paymentCode, @JsonKey(fromJson: OrderPaymentMethod.fromJson, toJson: OrderPaymentMethod.toJson)  OrderPaymentMethod paymentMethod, @JsonKey(fromJson: OrderPaymentStatus.fromJson, toJson: OrderPaymentStatus.toJson)  OrderPaymentStatus status, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? cardType,  String? cardName,  String? cardNum,  int? cardQuota,  bool? isInterestFree,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailPaymentDto() when $default != null:
return $default(_that.paymentId,_that.paymentCode,_that.paymentMethod,_that.status,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.cardType,_that.cardName,_that.cardNum,_that.cardQuota,_that.isInterestFree,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int paymentId,  String paymentCode, @JsonKey(fromJson: OrderPaymentMethod.fromJson, toJson: OrderPaymentMethod.toJson)  OrderPaymentMethod paymentMethod, @JsonKey(fromJson: OrderPaymentStatus.fromJson, toJson: OrderPaymentStatus.toJson)  OrderPaymentStatus status, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? cardType,  String? cardName,  String? cardNum,  int? cardQuota,  bool? isInterestFree,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailPaymentDto():
return $default(_that.paymentId,_that.paymentCode,_that.paymentMethod,_that.status,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.cardType,_that.cardName,_that.cardNum,_that.cardQuota,_that.isInterestFree,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int paymentId,  String paymentCode, @JsonKey(fromJson: OrderPaymentMethod.fromJson, toJson: OrderPaymentMethod.toJson)  OrderPaymentMethod paymentMethod, @JsonKey(fromJson: OrderPaymentStatus.fromJson, toJson: OrderPaymentStatus.toJson)  OrderPaymentStatus status, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? cardType,  String? cardName,  String? cardNum,  int? cardQuota,  bool? isInterestFree,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailPaymentDto() when $default != null:
return $default(_that.paymentId,_that.paymentCode,_that.paymentMethod,_that.status,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.cardType,_that.cardName,_that.cardNum,_that.cardQuota,_that.isInterestFree,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailPaymentDto implements OrderDetailPaymentDto {
  const _OrderDetailPaymentDto({required this.paymentId, required this.paymentCode, @JsonKey(fromJson: OrderPaymentMethod.fromJson, toJson: OrderPaymentMethod.toJson) required this.paymentMethod, @JsonKey(fromJson: OrderPaymentStatus.fromJson, toJson: OrderPaymentStatus.toJson) required this.status, @NullableLocalDateTimeConverter() this.paidAt, this.cancelledAmount, this.netAmount, this.receiptUrl, this.approvalNumber, this.cardType, this.cardName, this.cardNum, this.cardQuota, this.isInterestFree, this.vbankNumber, this.vbankName, @NullableLocalDateTimeConverter() this.vbankExpDate, this.vbankHolder});
  factory _OrderDetailPaymentDto.fromJson(Map<String, dynamic> json) => _$OrderDetailPaymentDtoFromJson(json);

@override final  int paymentId;
@override final  String paymentCode;
@override@JsonKey(fromJson: OrderPaymentMethod.fromJson, toJson: OrderPaymentMethod.toJson) final  OrderPaymentMethod paymentMethod;
@override@JsonKey(fromJson: OrderPaymentStatus.fromJson, toJson: OrderPaymentStatus.toJson) final  OrderPaymentStatus status;
@override@NullableLocalDateTimeConverter() final  DateTime? paidAt;
@override final  int? cancelledAmount;
@override final  int? netAmount;
@override final  String? receiptUrl;
@override final  String? approvalNumber;
@override final  String? cardType;
@override final  String? cardName;
@override final  String? cardNum;
@override final  int? cardQuota;
@override final  bool? isInterestFree;
@override final  String? vbankNumber;
@override final  String? vbankName;
@override@NullableLocalDateTimeConverter() final  DateTime? vbankExpDate;
@override final  String? vbankHolder;

/// Create a copy of OrderDetailPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailPaymentDtoCopyWith<_OrderDetailPaymentDto> get copyWith => __$OrderDetailPaymentDtoCopyWithImpl<_OrderDetailPaymentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailPaymentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailPaymentDto&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.cancelledAmount, cancelledAmount) || other.cancelledAmount == cancelledAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.cardName, cardName) || other.cardName == cardName)&&(identical(other.cardNum, cardNum) || other.cardNum == cardNum)&&(identical(other.cardQuota, cardQuota) || other.cardQuota == cardQuota)&&(identical(other.isInterestFree, isInterestFree) || other.isInterestFree == isInterestFree)&&(identical(other.vbankNumber, vbankNumber) || other.vbankNumber == vbankNumber)&&(identical(other.vbankName, vbankName) || other.vbankName == vbankName)&&(identical(other.vbankExpDate, vbankExpDate) || other.vbankExpDate == vbankExpDate)&&(identical(other.vbankHolder, vbankHolder) || other.vbankHolder == vbankHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentId,paymentCode,paymentMethod,status,paidAt,cancelledAmount,netAmount,receiptUrl,approvalNumber,cardType,cardName,cardNum,cardQuota,isInterestFree,vbankNumber,vbankName,vbankExpDate,vbankHolder);

@override
String toString() {
  return 'OrderDetailPaymentDto(paymentId: $paymentId, paymentCode: $paymentCode, paymentMethod: $paymentMethod, status: $status, paidAt: $paidAt, cancelledAmount: $cancelledAmount, netAmount: $netAmount, receiptUrl: $receiptUrl, approvalNumber: $approvalNumber, cardType: $cardType, cardName: $cardName, cardNum: $cardNum, cardQuota: $cardQuota, isInterestFree: $isInterestFree, vbankNumber: $vbankNumber, vbankName: $vbankName, vbankExpDate: $vbankExpDate, vbankHolder: $vbankHolder)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailPaymentDtoCopyWith<$Res> implements $OrderDetailPaymentDtoCopyWith<$Res> {
  factory _$OrderDetailPaymentDtoCopyWith(_OrderDetailPaymentDto value, $Res Function(_OrderDetailPaymentDto) _then) = __$OrderDetailPaymentDtoCopyWithImpl;
@override @useResult
$Res call({
 int paymentId, String paymentCode,@JsonKey(fromJson: OrderPaymentMethod.fromJson, toJson: OrderPaymentMethod.toJson) OrderPaymentMethod paymentMethod,@JsonKey(fromJson: OrderPaymentStatus.fromJson, toJson: OrderPaymentStatus.toJson) OrderPaymentStatus status,@NullableLocalDateTimeConverter() DateTime? paidAt, int? cancelledAmount, int? netAmount, String? receiptUrl, String? approvalNumber, String? cardType, String? cardName, String? cardNum, int? cardQuota, bool? isInterestFree, String? vbankNumber, String? vbankName,@NullableLocalDateTimeConverter() DateTime? vbankExpDate, String? vbankHolder
});




}
/// @nodoc
class __$OrderDetailPaymentDtoCopyWithImpl<$Res>
    implements _$OrderDetailPaymentDtoCopyWith<$Res> {
  __$OrderDetailPaymentDtoCopyWithImpl(this._self, this._then);

  final _OrderDetailPaymentDto _self;
  final $Res Function(_OrderDetailPaymentDto) _then;

/// Create a copy of OrderDetailPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? paymentCode = null,Object? paymentMethod = null,Object? status = null,Object? paidAt = freezed,Object? cancelledAmount = freezed,Object? netAmount = freezed,Object? receiptUrl = freezed,Object? approvalNumber = freezed,Object? cardType = freezed,Object? cardName = freezed,Object? cardNum = freezed,Object? cardQuota = freezed,Object? isInterestFree = freezed,Object? vbankNumber = freezed,Object? vbankName = freezed,Object? vbankExpDate = freezed,Object? vbankHolder = freezed,}) {
  return _then(_OrderDetailPaymentDto(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as int,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as OrderPaymentMethod,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderPaymentStatus,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAmount: freezed == cancelledAmount ? _self.cancelledAmount : cancelledAmount // ignore: cast_nullable_to_non_nullable
as int?,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,approvalNumber: freezed == approvalNumber ? _self.approvalNumber : approvalNumber // ignore: cast_nullable_to_non_nullable
as String?,cardType: freezed == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String?,cardName: freezed == cardName ? _self.cardName : cardName // ignore: cast_nullable_to_non_nullable
as String?,cardNum: freezed == cardNum ? _self.cardNum : cardNum // ignore: cast_nullable_to_non_nullable
as String?,cardQuota: freezed == cardQuota ? _self.cardQuota : cardQuota // ignore: cast_nullable_to_non_nullable
as int?,isInterestFree: freezed == isInterestFree ? _self.isInterestFree : isInterestFree // ignore: cast_nullable_to_non_nullable
as bool?,vbankNumber: freezed == vbankNumber ? _self.vbankNumber : vbankNumber // ignore: cast_nullable_to_non_nullable
as String?,vbankName: freezed == vbankName ? _self.vbankName : vbankName // ignore: cast_nullable_to_non_nullable
as String?,vbankExpDate: freezed == vbankExpDate ? _self.vbankExpDate : vbankExpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vbankHolder: freezed == vbankHolder ? _self.vbankHolder : vbankHolder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
