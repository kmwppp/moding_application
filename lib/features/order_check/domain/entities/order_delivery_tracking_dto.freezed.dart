// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_delivery_tracking_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDeliveryTrackingWrapper {

 bool get success; OrderDeliveryTrackingDto get data; String get code; String get message;
/// Create a copy of OrderDeliveryTrackingWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDeliveryTrackingWrapperCopyWith<OrderDeliveryTrackingWrapper> get copyWith => _$OrderDeliveryTrackingWrapperCopyWithImpl<OrderDeliveryTrackingWrapper>(this as OrderDeliveryTrackingWrapper, _$identity);

  /// Serializes this OrderDeliveryTrackingWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDeliveryTrackingWrapper&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,code,message);

@override
String toString() {
  return 'OrderDeliveryTrackingWrapper(success: $success, data: $data, code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $OrderDeliveryTrackingWrapperCopyWith<$Res>  {
  factory $OrderDeliveryTrackingWrapperCopyWith(OrderDeliveryTrackingWrapper value, $Res Function(OrderDeliveryTrackingWrapper) _then) = _$OrderDeliveryTrackingWrapperCopyWithImpl;
@useResult
$Res call({
 bool success, OrderDeliveryTrackingDto data, String code, String message
});


$OrderDeliveryTrackingDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$OrderDeliveryTrackingWrapperCopyWithImpl<$Res>
    implements $OrderDeliveryTrackingWrapperCopyWith<$Res> {
  _$OrderDeliveryTrackingWrapperCopyWithImpl(this._self, this._then);

  final OrderDeliveryTrackingWrapper _self;
  final $Res Function(OrderDeliveryTrackingWrapper) _then;

/// Create a copy of OrderDeliveryTrackingWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? code = null,Object? message = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OrderDeliveryTrackingDto,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of OrderDeliveryTrackingWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDeliveryTrackingDtoCopyWith<$Res> get data {
  
  return $OrderDeliveryTrackingDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDeliveryTrackingWrapper].
extension OrderDeliveryTrackingWrapperPatterns on OrderDeliveryTrackingWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDeliveryTrackingWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDeliveryTrackingWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDeliveryTrackingWrapper value)  $default,){
final _that = this;
switch (_that) {
case _OrderDeliveryTrackingWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDeliveryTrackingWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDeliveryTrackingWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  OrderDeliveryTrackingDto data,  String code,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDeliveryTrackingWrapper() when $default != null:
return $default(_that.success,_that.data,_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  OrderDeliveryTrackingDto data,  String code,  String message)  $default,) {final _that = this;
switch (_that) {
case _OrderDeliveryTrackingWrapper():
return $default(_that.success,_that.data,_that.code,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  OrderDeliveryTrackingDto data,  String code,  String message)?  $default,) {final _that = this;
switch (_that) {
case _OrderDeliveryTrackingWrapper() when $default != null:
return $default(_that.success,_that.data,_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDeliveryTrackingWrapper implements OrderDeliveryTrackingWrapper {
  const _OrderDeliveryTrackingWrapper({required this.success, required this.data, this.code = '', this.message = ''});
  factory _OrderDeliveryTrackingWrapper.fromJson(Map<String, dynamic> json) => _$OrderDeliveryTrackingWrapperFromJson(json);

@override final  bool success;
@override final  OrderDeliveryTrackingDto data;
@override@JsonKey() final  String code;
@override@JsonKey() final  String message;

/// Create a copy of OrderDeliveryTrackingWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDeliveryTrackingWrapperCopyWith<_OrderDeliveryTrackingWrapper> get copyWith => __$OrderDeliveryTrackingWrapperCopyWithImpl<_OrderDeliveryTrackingWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDeliveryTrackingWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDeliveryTrackingWrapper&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,code,message);

@override
String toString() {
  return 'OrderDeliveryTrackingWrapper(success: $success, data: $data, code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class _$OrderDeliveryTrackingWrapperCopyWith<$Res> implements $OrderDeliveryTrackingWrapperCopyWith<$Res> {
  factory _$OrderDeliveryTrackingWrapperCopyWith(_OrderDeliveryTrackingWrapper value, $Res Function(_OrderDeliveryTrackingWrapper) _then) = __$OrderDeliveryTrackingWrapperCopyWithImpl;
@override @useResult
$Res call({
 bool success, OrderDeliveryTrackingDto data, String code, String message
});


@override $OrderDeliveryTrackingDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$OrderDeliveryTrackingWrapperCopyWithImpl<$Res>
    implements _$OrderDeliveryTrackingWrapperCopyWith<$Res> {
  __$OrderDeliveryTrackingWrapperCopyWithImpl(this._self, this._then);

  final _OrderDeliveryTrackingWrapper _self;
  final $Res Function(_OrderDeliveryTrackingWrapper) _then;

/// Create a copy of OrderDeliveryTrackingWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? code = null,Object? message = null,}) {
  return _then(_OrderDeliveryTrackingWrapper(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OrderDeliveryTrackingDto,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OrderDeliveryTrackingWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDeliveryTrackingDtoCopyWith<$Res> get data {
  
  return $OrderDeliveryTrackingDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$OrderDeliveryTrackingDto {

 int get id; String get deliveryCode; int get orderId; String get status; String? get courierCode; String? get trackingNumber;@NullableLocalDateTimeConverter() DateTime? get shippedAt;@NullableLocalDateTimeConverter() DateTime? get deliveredAt;@NullableLocalDateTimeConverter() DateTime? get inspectionDueAt;@NullableLocalDateTimeConverter() DateTime? get autoSettlementDueAt; List<OrderTrackingEventDto> get trackingEvents;@LocalDateTimeConverter() DateTime get createdAt;@LocalDateTimeConverter() DateTime get updatedAt;
/// Create a copy of OrderDeliveryTrackingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDeliveryTrackingDtoCopyWith<OrderDeliveryTrackingDto> get copyWith => _$OrderDeliveryTrackingDtoCopyWithImpl<OrderDeliveryTrackingDto>(this as OrderDeliveryTrackingDto, _$identity);

  /// Serializes this OrderDeliveryTrackingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDeliveryTrackingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.deliveryCode, deliveryCode) || other.deliveryCode == deliveryCode)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.status, status) || other.status == status)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.shippedAt, shippedAt) || other.shippedAt == shippedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.inspectionDueAt, inspectionDueAt) || other.inspectionDueAt == inspectionDueAt)&&(identical(other.autoSettlementDueAt, autoSettlementDueAt) || other.autoSettlementDueAt == autoSettlementDueAt)&&const DeepCollectionEquality().equals(other.trackingEvents, trackingEvents)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deliveryCode,orderId,status,courierCode,trackingNumber,shippedAt,deliveredAt,inspectionDueAt,autoSettlementDueAt,const DeepCollectionEquality().hash(trackingEvents),createdAt,updatedAt);

@override
String toString() {
  return 'OrderDeliveryTrackingDto(id: $id, deliveryCode: $deliveryCode, orderId: $orderId, status: $status, courierCode: $courierCode, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt, inspectionDueAt: $inspectionDueAt, autoSettlementDueAt: $autoSettlementDueAt, trackingEvents: $trackingEvents, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $OrderDeliveryTrackingDtoCopyWith<$Res>  {
  factory $OrderDeliveryTrackingDtoCopyWith(OrderDeliveryTrackingDto value, $Res Function(OrderDeliveryTrackingDto) _then) = _$OrderDeliveryTrackingDtoCopyWithImpl;
@useResult
$Res call({
 int id, String deliveryCode, int orderId, String status, String? courierCode, String? trackingNumber,@NullableLocalDateTimeConverter() DateTime? shippedAt,@NullableLocalDateTimeConverter() DateTime? deliveredAt,@NullableLocalDateTimeConverter() DateTime? inspectionDueAt,@NullableLocalDateTimeConverter() DateTime? autoSettlementDueAt, List<OrderTrackingEventDto> trackingEvents,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$OrderDeliveryTrackingDtoCopyWithImpl<$Res>
    implements $OrderDeliveryTrackingDtoCopyWith<$Res> {
  _$OrderDeliveryTrackingDtoCopyWithImpl(this._self, this._then);

  final OrderDeliveryTrackingDto _self;
  final $Res Function(OrderDeliveryTrackingDto) _then;

/// Create a copy of OrderDeliveryTrackingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deliveryCode = null,Object? orderId = null,Object? status = null,Object? courierCode = freezed,Object? trackingNumber = freezed,Object? shippedAt = freezed,Object? deliveredAt = freezed,Object? inspectionDueAt = freezed,Object? autoSettlementDueAt = freezed,Object? trackingEvents = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,deliveryCode: null == deliveryCode ? _self.deliveryCode : deliveryCode // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,courierCode: freezed == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String?,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,shippedAt: freezed == shippedAt ? _self.shippedAt : shippedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,inspectionDueAt: freezed == inspectionDueAt ? _self.inspectionDueAt : inspectionDueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,autoSettlementDueAt: freezed == autoSettlementDueAt ? _self.autoSettlementDueAt : autoSettlementDueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,trackingEvents: null == trackingEvents ? _self.trackingEvents : trackingEvents // ignore: cast_nullable_to_non_nullable
as List<OrderTrackingEventDto>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDeliveryTrackingDto].
extension OrderDeliveryTrackingDtoPatterns on OrderDeliveryTrackingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDeliveryTrackingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDeliveryTrackingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDeliveryTrackingDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderDeliveryTrackingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDeliveryTrackingDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDeliveryTrackingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String deliveryCode,  int orderId,  String status,  String? courierCode,  String? trackingNumber, @NullableLocalDateTimeConverter()  DateTime? shippedAt, @NullableLocalDateTimeConverter()  DateTime? deliveredAt, @NullableLocalDateTimeConverter()  DateTime? inspectionDueAt, @NullableLocalDateTimeConverter()  DateTime? autoSettlementDueAt,  List<OrderTrackingEventDto> trackingEvents, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDeliveryTrackingDto() when $default != null:
return $default(_that.id,_that.deliveryCode,_that.orderId,_that.status,_that.courierCode,_that.trackingNumber,_that.shippedAt,_that.deliveredAt,_that.inspectionDueAt,_that.autoSettlementDueAt,_that.trackingEvents,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String deliveryCode,  int orderId,  String status,  String? courierCode,  String? trackingNumber, @NullableLocalDateTimeConverter()  DateTime? shippedAt, @NullableLocalDateTimeConverter()  DateTime? deliveredAt, @NullableLocalDateTimeConverter()  DateTime? inspectionDueAt, @NullableLocalDateTimeConverter()  DateTime? autoSettlementDueAt,  List<OrderTrackingEventDto> trackingEvents, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _OrderDeliveryTrackingDto():
return $default(_that.id,_that.deliveryCode,_that.orderId,_that.status,_that.courierCode,_that.trackingNumber,_that.shippedAt,_that.deliveredAt,_that.inspectionDueAt,_that.autoSettlementDueAt,_that.trackingEvents,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String deliveryCode,  int orderId,  String status,  String? courierCode,  String? trackingNumber, @NullableLocalDateTimeConverter()  DateTime? shippedAt, @NullableLocalDateTimeConverter()  DateTime? deliveredAt, @NullableLocalDateTimeConverter()  DateTime? inspectionDueAt, @NullableLocalDateTimeConverter()  DateTime? autoSettlementDueAt,  List<OrderTrackingEventDto> trackingEvents, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderDeliveryTrackingDto() when $default != null:
return $default(_that.id,_that.deliveryCode,_that.orderId,_that.status,_that.courierCode,_that.trackingNumber,_that.shippedAt,_that.deliveredAt,_that.inspectionDueAt,_that.autoSettlementDueAt,_that.trackingEvents,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDeliveryTrackingDto implements OrderDeliveryTrackingDto {
  const _OrderDeliveryTrackingDto({required this.id, required this.deliveryCode, required this.orderId, required this.status, this.courierCode, this.trackingNumber, @NullableLocalDateTimeConverter() this.shippedAt, @NullableLocalDateTimeConverter() this.deliveredAt, @NullableLocalDateTimeConverter() this.inspectionDueAt, @NullableLocalDateTimeConverter() this.autoSettlementDueAt, final  List<OrderTrackingEventDto> trackingEvents = const [], @LocalDateTimeConverter() required this.createdAt, @LocalDateTimeConverter() required this.updatedAt}): _trackingEvents = trackingEvents;
  factory _OrderDeliveryTrackingDto.fromJson(Map<String, dynamic> json) => _$OrderDeliveryTrackingDtoFromJson(json);

@override final  int id;
@override final  String deliveryCode;
@override final  int orderId;
@override final  String status;
@override final  String? courierCode;
@override final  String? trackingNumber;
@override@NullableLocalDateTimeConverter() final  DateTime? shippedAt;
@override@NullableLocalDateTimeConverter() final  DateTime? deliveredAt;
@override@NullableLocalDateTimeConverter() final  DateTime? inspectionDueAt;
@override@NullableLocalDateTimeConverter() final  DateTime? autoSettlementDueAt;
 final  List<OrderTrackingEventDto> _trackingEvents;
@override@JsonKey() List<OrderTrackingEventDto> get trackingEvents {
  if (_trackingEvents is EqualUnmodifiableListView) return _trackingEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trackingEvents);
}

@override@LocalDateTimeConverter() final  DateTime createdAt;
@override@LocalDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of OrderDeliveryTrackingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDeliveryTrackingDtoCopyWith<_OrderDeliveryTrackingDto> get copyWith => __$OrderDeliveryTrackingDtoCopyWithImpl<_OrderDeliveryTrackingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDeliveryTrackingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDeliveryTrackingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.deliveryCode, deliveryCode) || other.deliveryCode == deliveryCode)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.status, status) || other.status == status)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.shippedAt, shippedAt) || other.shippedAt == shippedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.inspectionDueAt, inspectionDueAt) || other.inspectionDueAt == inspectionDueAt)&&(identical(other.autoSettlementDueAt, autoSettlementDueAt) || other.autoSettlementDueAt == autoSettlementDueAt)&&const DeepCollectionEquality().equals(other._trackingEvents, _trackingEvents)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deliveryCode,orderId,status,courierCode,trackingNumber,shippedAt,deliveredAt,inspectionDueAt,autoSettlementDueAt,const DeepCollectionEquality().hash(_trackingEvents),createdAt,updatedAt);

@override
String toString() {
  return 'OrderDeliveryTrackingDto(id: $id, deliveryCode: $deliveryCode, orderId: $orderId, status: $status, courierCode: $courierCode, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt, inspectionDueAt: $inspectionDueAt, autoSettlementDueAt: $autoSettlementDueAt, trackingEvents: $trackingEvents, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$OrderDeliveryTrackingDtoCopyWith<$Res> implements $OrderDeliveryTrackingDtoCopyWith<$Res> {
  factory _$OrderDeliveryTrackingDtoCopyWith(_OrderDeliveryTrackingDto value, $Res Function(_OrderDeliveryTrackingDto) _then) = __$OrderDeliveryTrackingDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String deliveryCode, int orderId, String status, String? courierCode, String? trackingNumber,@NullableLocalDateTimeConverter() DateTime? shippedAt,@NullableLocalDateTimeConverter() DateTime? deliveredAt,@NullableLocalDateTimeConverter() DateTime? inspectionDueAt,@NullableLocalDateTimeConverter() DateTime? autoSettlementDueAt, List<OrderTrackingEventDto> trackingEvents,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$OrderDeliveryTrackingDtoCopyWithImpl<$Res>
    implements _$OrderDeliveryTrackingDtoCopyWith<$Res> {
  __$OrderDeliveryTrackingDtoCopyWithImpl(this._self, this._then);

  final _OrderDeliveryTrackingDto _self;
  final $Res Function(_OrderDeliveryTrackingDto) _then;

/// Create a copy of OrderDeliveryTrackingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deliveryCode = null,Object? orderId = null,Object? status = null,Object? courierCode = freezed,Object? trackingNumber = freezed,Object? shippedAt = freezed,Object? deliveredAt = freezed,Object? inspectionDueAt = freezed,Object? autoSettlementDueAt = freezed,Object? trackingEvents = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_OrderDeliveryTrackingDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,deliveryCode: null == deliveryCode ? _self.deliveryCode : deliveryCode // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,courierCode: freezed == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String?,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,shippedAt: freezed == shippedAt ? _self.shippedAt : shippedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,inspectionDueAt: freezed == inspectionDueAt ? _self.inspectionDueAt : inspectionDueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,autoSettlementDueAt: freezed == autoSettlementDueAt ? _self.autoSettlementDueAt : autoSettlementDueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,trackingEvents: null == trackingEvents ? _self._trackingEvents : trackingEvents // ignore: cast_nullable_to_non_nullable
as List<OrderTrackingEventDto>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$OrderTrackingEventDto {

 String get timeString; String get where; String get kind; int get level;
/// Create a copy of OrderTrackingEventDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderTrackingEventDtoCopyWith<OrderTrackingEventDto> get copyWith => _$OrderTrackingEventDtoCopyWithImpl<OrderTrackingEventDto>(this as OrderTrackingEventDto, _$identity);

  /// Serializes this OrderTrackingEventDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderTrackingEventDto&&(identical(other.timeString, timeString) || other.timeString == timeString)&&(identical(other.where, where) || other.where == where)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timeString,where,kind,level);

@override
String toString() {
  return 'OrderTrackingEventDto(timeString: $timeString, where: $where, kind: $kind, level: $level)';
}


}

/// @nodoc
abstract mixin class $OrderTrackingEventDtoCopyWith<$Res>  {
  factory $OrderTrackingEventDtoCopyWith(OrderTrackingEventDto value, $Res Function(OrderTrackingEventDto) _then) = _$OrderTrackingEventDtoCopyWithImpl;
@useResult
$Res call({
 String timeString, String where, String kind, int level
});




}
/// @nodoc
class _$OrderTrackingEventDtoCopyWithImpl<$Res>
    implements $OrderTrackingEventDtoCopyWith<$Res> {
  _$OrderTrackingEventDtoCopyWithImpl(this._self, this._then);

  final OrderTrackingEventDto _self;
  final $Res Function(OrderTrackingEventDto) _then;

/// Create a copy of OrderTrackingEventDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timeString = null,Object? where = null,Object? kind = null,Object? level = null,}) {
  return _then(_self.copyWith(
timeString: null == timeString ? _self.timeString : timeString // ignore: cast_nullable_to_non_nullable
as String,where: null == where ? _self.where : where // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderTrackingEventDto].
extension OrderTrackingEventDtoPatterns on OrderTrackingEventDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderTrackingEventDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderTrackingEventDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderTrackingEventDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderTrackingEventDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderTrackingEventDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderTrackingEventDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String timeString,  String where,  String kind,  int level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderTrackingEventDto() when $default != null:
return $default(_that.timeString,_that.where,_that.kind,_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String timeString,  String where,  String kind,  int level)  $default,) {final _that = this;
switch (_that) {
case _OrderTrackingEventDto():
return $default(_that.timeString,_that.where,_that.kind,_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String timeString,  String where,  String kind,  int level)?  $default,) {final _that = this;
switch (_that) {
case _OrderTrackingEventDto() when $default != null:
return $default(_that.timeString,_that.where,_that.kind,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderTrackingEventDto implements OrderTrackingEventDto {
  const _OrderTrackingEventDto({required this.timeString, required this.where, required this.kind, required this.level});
  factory _OrderTrackingEventDto.fromJson(Map<String, dynamic> json) => _$OrderTrackingEventDtoFromJson(json);

@override final  String timeString;
@override final  String where;
@override final  String kind;
@override final  int level;

/// Create a copy of OrderTrackingEventDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderTrackingEventDtoCopyWith<_OrderTrackingEventDto> get copyWith => __$OrderTrackingEventDtoCopyWithImpl<_OrderTrackingEventDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderTrackingEventDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderTrackingEventDto&&(identical(other.timeString, timeString) || other.timeString == timeString)&&(identical(other.where, where) || other.where == where)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timeString,where,kind,level);

@override
String toString() {
  return 'OrderTrackingEventDto(timeString: $timeString, where: $where, kind: $kind, level: $level)';
}


}

/// @nodoc
abstract mixin class _$OrderTrackingEventDtoCopyWith<$Res> implements $OrderTrackingEventDtoCopyWith<$Res> {
  factory _$OrderTrackingEventDtoCopyWith(_OrderTrackingEventDto value, $Res Function(_OrderTrackingEventDto) _then) = __$OrderTrackingEventDtoCopyWithImpl;
@override @useResult
$Res call({
 String timeString, String where, String kind, int level
});




}
/// @nodoc
class __$OrderTrackingEventDtoCopyWithImpl<$Res>
    implements _$OrderTrackingEventDtoCopyWith<$Res> {
  __$OrderTrackingEventDtoCopyWithImpl(this._self, this._then);

  final _OrderTrackingEventDto _self;
  final $Res Function(_OrderTrackingEventDto) _then;

/// Create a copy of OrderTrackingEventDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timeString = null,Object? where = null,Object? kind = null,Object? level = null,}) {
  return _then(_OrderTrackingEventDto(
timeString: null == timeString ? _self.timeString : timeString // ignore: cast_nullable_to_non_nullable
as String,where: null == where ? _self.where : where // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
