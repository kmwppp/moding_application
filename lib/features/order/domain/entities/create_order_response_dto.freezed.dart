// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderResponseDto {

 int get id; String get orderCode; String get idempotencyKey; int? get buyerProfileId; String? get buyerBusinessName; int? get sellerProfileId; String? get sellerBusinessName; String? get addressName; String? get recipientName; String? get zipCode; String? get address; String? get addressDetail; String? get phone; String? get deliveryRequest; String get status; int? get totalAmount; int? get deliveryFee; int? get jejuDeliveryFee; String? get deliveryMethod; String? get rejectionReason; String? get rejectionReasonDetail; List<CreateOrderItemResponseDto> get items; List<String>? get productDeliveryMethods; CreateOrderDeliveryDto? get delivery; CreateOrderPaymentDto? get payment;@LocalDateTimeConverter() DateTime get createdAt;@LocalDateTimeConverter() DateTime get updatedAt;
/// Create a copy of CreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderResponseDtoCopyWith<CreateOrderResponseDto> get copyWith => _$CreateOrderResponseDtoCopyWithImpl<CreateOrderResponseDto>(this as CreateOrderResponseDto, _$identity);

  /// Serializes this CreateOrderResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.buyerProfileId, buyerProfileId) || other.buyerProfileId == buyerProfileId)&&(identical(other.buyerBusinessName, buyerBusinessName) || other.buyerBusinessName == buyerBusinessName)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.deliveryMethod, deliveryMethod) || other.deliveryMethod == deliveryMethod)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.rejectionReasonDetail, rejectionReasonDetail) || other.rejectionReasonDetail == rejectionReasonDetail)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.productDeliveryMethods, productDeliveryMethods)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,orderCode,idempotencyKey,buyerProfileId,buyerBusinessName,sellerProfileId,sellerBusinessName,addressName,recipientName,zipCode,address,addressDetail,phone,deliveryRequest,status,totalAmount,deliveryFee,jejuDeliveryFee,deliveryMethod,rejectionReason,rejectionReasonDetail,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(productDeliveryMethods),delivery,payment,createdAt,updatedAt]);

@override
String toString() {
  return 'CreateOrderResponseDto(id: $id, orderCode: $orderCode, idempotencyKey: $idempotencyKey, buyerProfileId: $buyerProfileId, buyerBusinessName: $buyerBusinessName, sellerProfileId: $sellerProfileId, sellerBusinessName: $sellerBusinessName, addressName: $addressName, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, deliveryRequest: $deliveryRequest, status: $status, totalAmount: $totalAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, deliveryMethod: $deliveryMethod, rejectionReason: $rejectionReason, rejectionReasonDetail: $rejectionReasonDetail, items: $items, productDeliveryMethods: $productDeliveryMethods, delivery: $delivery, payment: $payment, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CreateOrderResponseDtoCopyWith<$Res>  {
  factory $CreateOrderResponseDtoCopyWith(CreateOrderResponseDto value, $Res Function(CreateOrderResponseDto) _then) = _$CreateOrderResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, String orderCode, String idempotencyKey, int? buyerProfileId, String? buyerBusinessName, int? sellerProfileId, String? sellerBusinessName, String? addressName, String? recipientName, String? zipCode, String? address, String? addressDetail, String? phone, String? deliveryRequest, String status, int? totalAmount, int? deliveryFee, int? jejuDeliveryFee, String? deliveryMethod, String? rejectionReason, String? rejectionReasonDetail, List<CreateOrderItemResponseDto> items, List<String>? productDeliveryMethods, CreateOrderDeliveryDto? delivery, CreateOrderPaymentDto? payment,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});


$CreateOrderDeliveryDtoCopyWith<$Res>? get delivery;$CreateOrderPaymentDtoCopyWith<$Res>? get payment;

}
/// @nodoc
class _$CreateOrderResponseDtoCopyWithImpl<$Res>
    implements $CreateOrderResponseDtoCopyWith<$Res> {
  _$CreateOrderResponseDtoCopyWithImpl(this._self, this._then);

  final CreateOrderResponseDto _self;
  final $Res Function(CreateOrderResponseDto) _then;

/// Create a copy of CreateOrderResponseDto
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
as List<CreateOrderItemResponseDto>,productDeliveryMethods: freezed == productDeliveryMethods ? _self.productDeliveryMethods : productDeliveryMethods // ignore: cast_nullable_to_non_nullable
as List<String>?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as CreateOrderDeliveryDto?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as CreateOrderPaymentDto?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of CreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateOrderDeliveryDtoCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $CreateOrderDeliveryDtoCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of CreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateOrderPaymentDtoCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $CreateOrderPaymentDtoCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateOrderResponseDto].
extension CreateOrderResponseDtoPatterns on CreateOrderResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest,  String status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  List<CreateOrderItemResponseDto> items,  List<String>? productDeliveryMethods,  CreateOrderDeliveryDto? delivery,  CreateOrderPaymentDto? payment, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest,  String status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  List<CreateOrderItemResponseDto> items,  List<String>? productDeliveryMethods,  CreateOrderDeliveryDto? delivery,  CreateOrderPaymentDto? payment, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String orderCode,  String idempotencyKey,  int? buyerProfileId,  String? buyerBusinessName,  int? sellerProfileId,  String? sellerBusinessName,  String? addressName,  String? recipientName,  String? zipCode,  String? address,  String? addressDetail,  String? phone,  String? deliveryRequest,  String status,  int? totalAmount,  int? deliveryFee,  int? jejuDeliveryFee,  String? deliveryMethod,  String? rejectionReason,  String? rejectionReasonDetail,  List<CreateOrderItemResponseDto> items,  List<String>? productDeliveryMethods,  CreateOrderDeliveryDto? delivery,  CreateOrderPaymentDto? payment, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderResponseDto() when $default != null:
return $default(_that.id,_that.orderCode,_that.idempotencyKey,_that.buyerProfileId,_that.buyerBusinessName,_that.sellerProfileId,_that.sellerBusinessName,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone,_that.deliveryRequest,_that.status,_that.totalAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.deliveryMethod,_that.rejectionReason,_that.rejectionReasonDetail,_that.items,_that.productDeliveryMethods,_that.delivery,_that.payment,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderResponseDto implements CreateOrderResponseDto {
  const _CreateOrderResponseDto({required this.id, required this.orderCode, required this.idempotencyKey, this.buyerProfileId, this.buyerBusinessName, this.sellerProfileId, this.sellerBusinessName, this.addressName, this.recipientName, this.zipCode, this.address, this.addressDetail, this.phone, this.deliveryRequest, required this.status, this.totalAmount, this.deliveryFee, this.jejuDeliveryFee, this.deliveryMethod, this.rejectionReason, this.rejectionReasonDetail, required final  List<CreateOrderItemResponseDto> items, final  List<String>? productDeliveryMethods, this.delivery, this.payment, @LocalDateTimeConverter() required this.createdAt, @LocalDateTimeConverter() required this.updatedAt}): _items = items,_productDeliveryMethods = productDeliveryMethods;
  factory _CreateOrderResponseDto.fromJson(Map<String, dynamic> json) => _$CreateOrderResponseDtoFromJson(json);

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
@override final  int? jejuDeliveryFee;
@override final  String? deliveryMethod;
@override final  String? rejectionReason;
@override final  String? rejectionReasonDetail;
 final  List<CreateOrderItemResponseDto> _items;
@override List<CreateOrderItemResponseDto> get items {
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

@override final  CreateOrderDeliveryDto? delivery;
@override final  CreateOrderPaymentDto? payment;
@override@LocalDateTimeConverter() final  DateTime createdAt;
@override@LocalDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of CreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderResponseDtoCopyWith<_CreateOrderResponseDto> get copyWith => __$CreateOrderResponseDtoCopyWithImpl<_CreateOrderResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.buyerProfileId, buyerProfileId) || other.buyerProfileId == buyerProfileId)&&(identical(other.buyerBusinessName, buyerBusinessName) || other.buyerBusinessName == buyerBusinessName)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.deliveryMethod, deliveryMethod) || other.deliveryMethod == deliveryMethod)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.rejectionReasonDetail, rejectionReasonDetail) || other.rejectionReasonDetail == rejectionReasonDetail)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._productDeliveryMethods, _productDeliveryMethods)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,orderCode,idempotencyKey,buyerProfileId,buyerBusinessName,sellerProfileId,sellerBusinessName,addressName,recipientName,zipCode,address,addressDetail,phone,deliveryRequest,status,totalAmount,deliveryFee,jejuDeliveryFee,deliveryMethod,rejectionReason,rejectionReasonDetail,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_productDeliveryMethods),delivery,payment,createdAt,updatedAt]);

@override
String toString() {
  return 'CreateOrderResponseDto(id: $id, orderCode: $orderCode, idempotencyKey: $idempotencyKey, buyerProfileId: $buyerProfileId, buyerBusinessName: $buyerBusinessName, sellerProfileId: $sellerProfileId, sellerBusinessName: $sellerBusinessName, addressName: $addressName, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone, deliveryRequest: $deliveryRequest, status: $status, totalAmount: $totalAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, deliveryMethod: $deliveryMethod, rejectionReason: $rejectionReason, rejectionReasonDetail: $rejectionReasonDetail, items: $items, productDeliveryMethods: $productDeliveryMethods, delivery: $delivery, payment: $payment, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderResponseDtoCopyWith<$Res> implements $CreateOrderResponseDtoCopyWith<$Res> {
  factory _$CreateOrderResponseDtoCopyWith(_CreateOrderResponseDto value, $Res Function(_CreateOrderResponseDto) _then) = __$CreateOrderResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String orderCode, String idempotencyKey, int? buyerProfileId, String? buyerBusinessName, int? sellerProfileId, String? sellerBusinessName, String? addressName, String? recipientName, String? zipCode, String? address, String? addressDetail, String? phone, String? deliveryRequest, String status, int? totalAmount, int? deliveryFee, int? jejuDeliveryFee, String? deliveryMethod, String? rejectionReason, String? rejectionReasonDetail, List<CreateOrderItemResponseDto> items, List<String>? productDeliveryMethods, CreateOrderDeliveryDto? delivery, CreateOrderPaymentDto? payment,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});


@override $CreateOrderDeliveryDtoCopyWith<$Res>? get delivery;@override $CreateOrderPaymentDtoCopyWith<$Res>? get payment;

}
/// @nodoc
class __$CreateOrderResponseDtoCopyWithImpl<$Res>
    implements _$CreateOrderResponseDtoCopyWith<$Res> {
  __$CreateOrderResponseDtoCopyWithImpl(this._self, this._then);

  final _CreateOrderResponseDto _self;
  final $Res Function(_CreateOrderResponseDto) _then;

/// Create a copy of CreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderCode = null,Object? idempotencyKey = null,Object? buyerProfileId = freezed,Object? buyerBusinessName = freezed,Object? sellerProfileId = freezed,Object? sellerBusinessName = freezed,Object? addressName = freezed,Object? recipientName = freezed,Object? zipCode = freezed,Object? address = freezed,Object? addressDetail = freezed,Object? phone = freezed,Object? deliveryRequest = freezed,Object? status = null,Object? totalAmount = freezed,Object? deliveryFee = freezed,Object? jejuDeliveryFee = freezed,Object? deliveryMethod = freezed,Object? rejectionReason = freezed,Object? rejectionReasonDetail = freezed,Object? items = null,Object? productDeliveryMethods = freezed,Object? delivery = freezed,Object? payment = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_CreateOrderResponseDto(
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
as List<CreateOrderItemResponseDto>,productDeliveryMethods: freezed == productDeliveryMethods ? _self._productDeliveryMethods : productDeliveryMethods // ignore: cast_nullable_to_non_nullable
as List<String>?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as CreateOrderDeliveryDto?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as CreateOrderPaymentDto?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of CreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateOrderDeliveryDtoCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $CreateOrderDeliveryDtoCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of CreateOrderResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateOrderPaymentDtoCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $CreateOrderPaymentDtoCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// @nodoc
mixin _$CreateOrderItemResponseDto {

 int get id; int get productId; String get productName; int get productOptionId; String get optionName; int get unitPrice; int get quantity; int get totalPrice; bool get isTaxable;
/// Create a copy of CreateOrderItemResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderItemResponseDtoCopyWith<CreateOrderItemResponseDto> get copyWith => _$CreateOrderItemResponseDtoCopyWithImpl<CreateOrderItemResponseDto>(this as CreateOrderItemResponseDto, _$identity);

  /// Serializes this CreateOrderItemResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderItemResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isTaxable, isTaxable) || other.isTaxable == isTaxable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,productOptionId,optionName,unitPrice,quantity,totalPrice,isTaxable);

@override
String toString() {
  return 'CreateOrderItemResponseDto(id: $id, productId: $productId, productName: $productName, productOptionId: $productOptionId, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, isTaxable: $isTaxable)';
}


}

/// @nodoc
abstract mixin class $CreateOrderItemResponseDtoCopyWith<$Res>  {
  factory $CreateOrderItemResponseDtoCopyWith(CreateOrderItemResponseDto value, $Res Function(CreateOrderItemResponseDto) _then) = _$CreateOrderItemResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, int productId, String productName, int productOptionId, String optionName, int unitPrice, int quantity, int totalPrice, bool isTaxable
});




}
/// @nodoc
class _$CreateOrderItemResponseDtoCopyWithImpl<$Res>
    implements $CreateOrderItemResponseDtoCopyWith<$Res> {
  _$CreateOrderItemResponseDtoCopyWithImpl(this._self, this._then);

  final CreateOrderItemResponseDto _self;
  final $Res Function(CreateOrderItemResponseDto) _then;

/// Create a copy of CreateOrderItemResponseDto
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


/// Adds pattern-matching-related methods to [CreateOrderItemResponseDto].
extension CreateOrderItemResponseDtoPatterns on CreateOrderItemResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderItemResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderItemResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderItemResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderItemResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderItemResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderItemResponseDto() when $default != null:
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
case _CreateOrderItemResponseDto() when $default != null:
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
case _CreateOrderItemResponseDto():
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
case _CreateOrderItemResponseDto() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productOptionId,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.isTaxable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderItemResponseDto implements CreateOrderItemResponseDto {
  const _CreateOrderItemResponseDto({required this.id, required this.productId, required this.productName, required this.productOptionId, required this.optionName, required this.unitPrice, required this.quantity, required this.totalPrice, required this.isTaxable});
  factory _CreateOrderItemResponseDto.fromJson(Map<String, dynamic> json) => _$CreateOrderItemResponseDtoFromJson(json);

@override final  int id;
@override final  int productId;
@override final  String productName;
@override final  int productOptionId;
@override final  String optionName;
@override final  int unitPrice;
@override final  int quantity;
@override final  int totalPrice;
@override final  bool isTaxable;

/// Create a copy of CreateOrderItemResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderItemResponseDtoCopyWith<_CreateOrderItemResponseDto> get copyWith => __$CreateOrderItemResponseDtoCopyWithImpl<_CreateOrderItemResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderItemResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderItemResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isTaxable, isTaxable) || other.isTaxable == isTaxable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,productOptionId,optionName,unitPrice,quantity,totalPrice,isTaxable);

@override
String toString() {
  return 'CreateOrderItemResponseDto(id: $id, productId: $productId, productName: $productName, productOptionId: $productOptionId, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, isTaxable: $isTaxable)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderItemResponseDtoCopyWith<$Res> implements $CreateOrderItemResponseDtoCopyWith<$Res> {
  factory _$CreateOrderItemResponseDtoCopyWith(_CreateOrderItemResponseDto value, $Res Function(_CreateOrderItemResponseDto) _then) = __$CreateOrderItemResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int productId, String productName, int productOptionId, String optionName, int unitPrice, int quantity, int totalPrice, bool isTaxable
});




}
/// @nodoc
class __$CreateOrderItemResponseDtoCopyWithImpl<$Res>
    implements _$CreateOrderItemResponseDtoCopyWith<$Res> {
  __$CreateOrderItemResponseDtoCopyWithImpl(this._self, this._then);

  final _CreateOrderItemResponseDto _self;
  final $Res Function(_CreateOrderItemResponseDto) _then;

/// Create a copy of CreateOrderItemResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productOptionId = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? isTaxable = null,}) {
  return _then(_CreateOrderItemResponseDto(
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
mixin _$CreateOrderDeliveryDto {

 String get status; String get courierCode; String get courierName; String get trackingNumber;@LocalDateTimeConverter() DateTime get shippedAt;@LocalDateTimeConverter() DateTime get deliveredAt;
/// Create a copy of CreateOrderDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderDeliveryDtoCopyWith<CreateOrderDeliveryDto> get copyWith => _$CreateOrderDeliveryDtoCopyWithImpl<CreateOrderDeliveryDto>(this as CreateOrderDeliveryDto, _$identity);

  /// Serializes this CreateOrderDeliveryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderDeliveryDto&&(identical(other.status, status) || other.status == status)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.shippedAt, shippedAt) || other.shippedAt == shippedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,courierCode,courierName,trackingNumber,shippedAt,deliveredAt);

@override
String toString() {
  return 'CreateOrderDeliveryDto(status: $status, courierCode: $courierCode, courierName: $courierName, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt)';
}


}

/// @nodoc
abstract mixin class $CreateOrderDeliveryDtoCopyWith<$Res>  {
  factory $CreateOrderDeliveryDtoCopyWith(CreateOrderDeliveryDto value, $Res Function(CreateOrderDeliveryDto) _then) = _$CreateOrderDeliveryDtoCopyWithImpl;
@useResult
$Res call({
 String status, String courierCode, String courierName, String trackingNumber,@LocalDateTimeConverter() DateTime shippedAt,@LocalDateTimeConverter() DateTime deliveredAt
});




}
/// @nodoc
class _$CreateOrderDeliveryDtoCopyWithImpl<$Res>
    implements $CreateOrderDeliveryDtoCopyWith<$Res> {
  _$CreateOrderDeliveryDtoCopyWithImpl(this._self, this._then);

  final CreateOrderDeliveryDto _self;
  final $Res Function(CreateOrderDeliveryDto) _then;

/// Create a copy of CreateOrderDeliveryDto
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


/// Adds pattern-matching-related methods to [CreateOrderDeliveryDto].
extension CreateOrderDeliveryDtoPatterns on CreateOrderDeliveryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderDeliveryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderDeliveryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderDeliveryDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderDeliveryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderDeliveryDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderDeliveryDto() when $default != null:
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
case _CreateOrderDeliveryDto() when $default != null:
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
case _CreateOrderDeliveryDto():
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
case _CreateOrderDeliveryDto() when $default != null:
return $default(_that.status,_that.courierCode,_that.courierName,_that.trackingNumber,_that.shippedAt,_that.deliveredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderDeliveryDto implements CreateOrderDeliveryDto {
  const _CreateOrderDeliveryDto({required this.status, required this.courierCode, required this.courierName, required this.trackingNumber, @LocalDateTimeConverter() required this.shippedAt, @LocalDateTimeConverter() required this.deliveredAt});
  factory _CreateOrderDeliveryDto.fromJson(Map<String, dynamic> json) => _$CreateOrderDeliveryDtoFromJson(json);

@override final  String status;
@override final  String courierCode;
@override final  String courierName;
@override final  String trackingNumber;
@override@LocalDateTimeConverter() final  DateTime shippedAt;
@override@LocalDateTimeConverter() final  DateTime deliveredAt;

/// Create a copy of CreateOrderDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderDeliveryDtoCopyWith<_CreateOrderDeliveryDto> get copyWith => __$CreateOrderDeliveryDtoCopyWithImpl<_CreateOrderDeliveryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderDeliveryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderDeliveryDto&&(identical(other.status, status) || other.status == status)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.shippedAt, shippedAt) || other.shippedAt == shippedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,courierCode,courierName,trackingNumber,shippedAt,deliveredAt);

@override
String toString() {
  return 'CreateOrderDeliveryDto(status: $status, courierCode: $courierCode, courierName: $courierName, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderDeliveryDtoCopyWith<$Res> implements $CreateOrderDeliveryDtoCopyWith<$Res> {
  factory _$CreateOrderDeliveryDtoCopyWith(_CreateOrderDeliveryDto value, $Res Function(_CreateOrderDeliveryDto) _then) = __$CreateOrderDeliveryDtoCopyWithImpl;
@override @useResult
$Res call({
 String status, String courierCode, String courierName, String trackingNumber,@LocalDateTimeConverter() DateTime shippedAt,@LocalDateTimeConverter() DateTime deliveredAt
});




}
/// @nodoc
class __$CreateOrderDeliveryDtoCopyWithImpl<$Res>
    implements _$CreateOrderDeliveryDtoCopyWith<$Res> {
  __$CreateOrderDeliveryDtoCopyWithImpl(this._self, this._then);

  final _CreateOrderDeliveryDto _self;
  final $Res Function(_CreateOrderDeliveryDto) _then;

/// Create a copy of CreateOrderDeliveryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? courierCode = null,Object? courierName = null,Object? trackingNumber = null,Object? shippedAt = null,Object? deliveredAt = null,}) {
  return _then(_CreateOrderDeliveryDto(
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
mixin _$CreateOrderPaymentDto {

 String? get paymentCode; String? get paymentMethod; String? get status; String? get signature; String? get timestamp;@NullableLocalDateTimeConverter() DateTime? get paidAt; int? get cancelledAmount; int? get netAmount; String? get receiptUrl; String? get approvalNumber; String? get vbankNumber; String? get vbankName;@NullableLocalDateTimeConverter() DateTime? get vbankExpDate; String? get vbankHolder;
/// Create a copy of CreateOrderPaymentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderPaymentDtoCopyWith<CreateOrderPaymentDto> get copyWith => _$CreateOrderPaymentDtoCopyWithImpl<CreateOrderPaymentDto>(this as CreateOrderPaymentDto, _$identity);

  /// Serializes this CreateOrderPaymentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderPaymentDto&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.cancelledAmount, cancelledAmount) || other.cancelledAmount == cancelledAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.vbankNumber, vbankNumber) || other.vbankNumber == vbankNumber)&&(identical(other.vbankName, vbankName) || other.vbankName == vbankName)&&(identical(other.vbankExpDate, vbankExpDate) || other.vbankExpDate == vbankExpDate)&&(identical(other.vbankHolder, vbankHolder) || other.vbankHolder == vbankHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentCode,paymentMethod,status,signature,timestamp,paidAt,cancelledAmount,netAmount,receiptUrl,approvalNumber,vbankNumber,vbankName,vbankExpDate,vbankHolder);

@override
String toString() {
  return 'CreateOrderPaymentDto(paymentCode: $paymentCode, paymentMethod: $paymentMethod, status: $status, signature: $signature, timestamp: $timestamp, paidAt: $paidAt, cancelledAmount: $cancelledAmount, netAmount: $netAmount, receiptUrl: $receiptUrl, approvalNumber: $approvalNumber, vbankNumber: $vbankNumber, vbankName: $vbankName, vbankExpDate: $vbankExpDate, vbankHolder: $vbankHolder)';
}


}

/// @nodoc
abstract mixin class $CreateOrderPaymentDtoCopyWith<$Res>  {
  factory $CreateOrderPaymentDtoCopyWith(CreateOrderPaymentDto value, $Res Function(CreateOrderPaymentDto) _then) = _$CreateOrderPaymentDtoCopyWithImpl;
@useResult
$Res call({
 String? paymentCode, String? paymentMethod, String? status, String? signature, String? timestamp,@NullableLocalDateTimeConverter() DateTime? paidAt, int? cancelledAmount, int? netAmount, String? receiptUrl, String? approvalNumber, String? vbankNumber, String? vbankName,@NullableLocalDateTimeConverter() DateTime? vbankExpDate, String? vbankHolder
});




}
/// @nodoc
class _$CreateOrderPaymentDtoCopyWithImpl<$Res>
    implements $CreateOrderPaymentDtoCopyWith<$Res> {
  _$CreateOrderPaymentDtoCopyWithImpl(this._self, this._then);

  final CreateOrderPaymentDto _self;
  final $Res Function(CreateOrderPaymentDto) _then;

/// Create a copy of CreateOrderPaymentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentCode = freezed,Object? paymentMethod = freezed,Object? status = freezed,Object? signature = freezed,Object? timestamp = freezed,Object? paidAt = freezed,Object? cancelledAmount = freezed,Object? netAmount = freezed,Object? receiptUrl = freezed,Object? approvalNumber = freezed,Object? vbankNumber = freezed,Object? vbankName = freezed,Object? vbankExpDate = freezed,Object? vbankHolder = freezed,}) {
  return _then(_self.copyWith(
paymentCode: freezed == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [CreateOrderPaymentDto].
extension CreateOrderPaymentDtoPatterns on CreateOrderPaymentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderPaymentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderPaymentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderPaymentDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderPaymentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderPaymentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderPaymentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? paymentCode,  String? paymentMethod,  String? status,  String? signature,  String? timestamp, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderPaymentDto() when $default != null:
return $default(_that.paymentCode,_that.paymentMethod,_that.status,_that.signature,_that.timestamp,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? paymentCode,  String? paymentMethod,  String? status,  String? signature,  String? timestamp, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderPaymentDto():
return $default(_that.paymentCode,_that.paymentMethod,_that.status,_that.signature,_that.timestamp,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? paymentCode,  String? paymentMethod,  String? status,  String? signature,  String? timestamp, @NullableLocalDateTimeConverter()  DateTime? paidAt,  int? cancelledAmount,  int? netAmount,  String? receiptUrl,  String? approvalNumber,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderPaymentDto() when $default != null:
return $default(_that.paymentCode,_that.paymentMethod,_that.status,_that.signature,_that.timestamp,_that.paidAt,_that.cancelledAmount,_that.netAmount,_that.receiptUrl,_that.approvalNumber,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderPaymentDto implements CreateOrderPaymentDto {
  const _CreateOrderPaymentDto({required this.paymentCode, required this.paymentMethod, required this.status, this.signature, this.timestamp, @NullableLocalDateTimeConverter() this.paidAt, this.cancelledAmount, this.netAmount, this.receiptUrl, this.approvalNumber, this.vbankNumber, this.vbankName, @NullableLocalDateTimeConverter() this.vbankExpDate, this.vbankHolder});
  factory _CreateOrderPaymentDto.fromJson(Map<String, dynamic> json) => _$CreateOrderPaymentDtoFromJson(json);

@override final  String? paymentCode;
@override final  String? paymentMethod;
@override final  String? status;
@override final  String? signature;
@override final  String? timestamp;
@override@NullableLocalDateTimeConverter() final  DateTime? paidAt;
@override final  int? cancelledAmount;
@override final  int? netAmount;
@override final  String? receiptUrl;
@override final  String? approvalNumber;
@override final  String? vbankNumber;
@override final  String? vbankName;
@override@NullableLocalDateTimeConverter() final  DateTime? vbankExpDate;
@override final  String? vbankHolder;

/// Create a copy of CreateOrderPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderPaymentDtoCopyWith<_CreateOrderPaymentDto> get copyWith => __$CreateOrderPaymentDtoCopyWithImpl<_CreateOrderPaymentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderPaymentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderPaymentDto&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.cancelledAmount, cancelledAmount) || other.cancelledAmount == cancelledAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.vbankNumber, vbankNumber) || other.vbankNumber == vbankNumber)&&(identical(other.vbankName, vbankName) || other.vbankName == vbankName)&&(identical(other.vbankExpDate, vbankExpDate) || other.vbankExpDate == vbankExpDate)&&(identical(other.vbankHolder, vbankHolder) || other.vbankHolder == vbankHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentCode,paymentMethod,status,signature,timestamp,paidAt,cancelledAmount,netAmount,receiptUrl,approvalNumber,vbankNumber,vbankName,vbankExpDate,vbankHolder);

@override
String toString() {
  return 'CreateOrderPaymentDto(paymentCode: $paymentCode, paymentMethod: $paymentMethod, status: $status, signature: $signature, timestamp: $timestamp, paidAt: $paidAt, cancelledAmount: $cancelledAmount, netAmount: $netAmount, receiptUrl: $receiptUrl, approvalNumber: $approvalNumber, vbankNumber: $vbankNumber, vbankName: $vbankName, vbankExpDate: $vbankExpDate, vbankHolder: $vbankHolder)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderPaymentDtoCopyWith<$Res> implements $CreateOrderPaymentDtoCopyWith<$Res> {
  factory _$CreateOrderPaymentDtoCopyWith(_CreateOrderPaymentDto value, $Res Function(_CreateOrderPaymentDto) _then) = __$CreateOrderPaymentDtoCopyWithImpl;
@override @useResult
$Res call({
 String? paymentCode, String? paymentMethod, String? status, String? signature, String? timestamp,@NullableLocalDateTimeConverter() DateTime? paidAt, int? cancelledAmount, int? netAmount, String? receiptUrl, String? approvalNumber, String? vbankNumber, String? vbankName,@NullableLocalDateTimeConverter() DateTime? vbankExpDate, String? vbankHolder
});




}
/// @nodoc
class __$CreateOrderPaymentDtoCopyWithImpl<$Res>
    implements _$CreateOrderPaymentDtoCopyWith<$Res> {
  __$CreateOrderPaymentDtoCopyWithImpl(this._self, this._then);

  final _CreateOrderPaymentDto _self;
  final $Res Function(_CreateOrderPaymentDto) _then;

/// Create a copy of CreateOrderPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentCode = freezed,Object? paymentMethod = freezed,Object? status = freezed,Object? signature = freezed,Object? timestamp = freezed,Object? paidAt = freezed,Object? cancelledAmount = freezed,Object? netAmount = freezed,Object? receiptUrl = freezed,Object? approvalNumber = freezed,Object? vbankNumber = freezed,Object? vbankName = freezed,Object? vbankExpDate = freezed,Object? vbankHolder = freezed,}) {
  return _then(_CreateOrderPaymentDto(
paymentCode: freezed == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
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
