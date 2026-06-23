// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_check_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClaimCheckResponseWrapper {

 ClaimCheckResponseDto get data;
/// Create a copy of ClaimCheckResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimCheckResponseWrapperCopyWith<ClaimCheckResponseWrapper> get copyWith => _$ClaimCheckResponseWrapperCopyWithImpl<ClaimCheckResponseWrapper>(this as ClaimCheckResponseWrapper, _$identity);

  /// Serializes this ClaimCheckResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimCheckResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ClaimCheckResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $ClaimCheckResponseWrapperCopyWith<$Res>  {
  factory $ClaimCheckResponseWrapperCopyWith(ClaimCheckResponseWrapper value, $Res Function(ClaimCheckResponseWrapper) _then) = _$ClaimCheckResponseWrapperCopyWithImpl;
@useResult
$Res call({
 ClaimCheckResponseDto data
});


$ClaimCheckResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$ClaimCheckResponseWrapperCopyWithImpl<$Res>
    implements $ClaimCheckResponseWrapperCopyWith<$Res> {
  _$ClaimCheckResponseWrapperCopyWithImpl(this._self, this._then);

  final ClaimCheckResponseWrapper _self;
  final $Res Function(ClaimCheckResponseWrapper) _then;

/// Create a copy of ClaimCheckResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ClaimCheckResponseDto,
  ));
}
/// Create a copy of ClaimCheckResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClaimCheckResponseDtoCopyWith<$Res> get data {
  
  return $ClaimCheckResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClaimCheckResponseWrapper].
extension ClaimCheckResponseWrapperPatterns on ClaimCheckResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimCheckResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimCheckResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimCheckResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimCheckResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ClaimCheckResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimCheckResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ClaimCheckResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _ClaimCheckResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ClaimCheckResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _ClaimCheckResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClaimCheckResponseWrapper implements ClaimCheckResponseWrapper {
  const _ClaimCheckResponseWrapper({required this.data});
  factory _ClaimCheckResponseWrapper.fromJson(Map<String, dynamic> json) => _$ClaimCheckResponseWrapperFromJson(json);

@override final  ClaimCheckResponseDto data;

/// Create a copy of ClaimCheckResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimCheckResponseWrapperCopyWith<_ClaimCheckResponseWrapper> get copyWith => __$ClaimCheckResponseWrapperCopyWithImpl<_ClaimCheckResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimCheckResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimCheckResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ClaimCheckResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ClaimCheckResponseWrapperCopyWith<$Res> implements $ClaimCheckResponseWrapperCopyWith<$Res> {
  factory _$ClaimCheckResponseWrapperCopyWith(_ClaimCheckResponseWrapper value, $Res Function(_ClaimCheckResponseWrapper) _then) = __$ClaimCheckResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 ClaimCheckResponseDto data
});


@override $ClaimCheckResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$ClaimCheckResponseWrapperCopyWithImpl<$Res>
    implements _$ClaimCheckResponseWrapperCopyWith<$Res> {
  __$ClaimCheckResponseWrapperCopyWithImpl(this._self, this._then);

  final _ClaimCheckResponseWrapper _self;
  final $Res Function(_ClaimCheckResponseWrapper) _then;

/// Create a copy of ClaimCheckResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ClaimCheckResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ClaimCheckResponseDto,
  ));
}

/// Create a copy of ClaimCheckResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClaimCheckResponseDtoCopyWith<$Res> get data {
  
  return $ClaimCheckResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ClaimCheckResponseDto {

 int get id; String get claimCode; int get orderId; String get orderCode; String get sellerBusinessName;@LocalDateTimeConverter() DateTime get createdAt;@JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson) ClaimType get claimType; String get claimReason; List<ClaimCheckItemDto> get items; int get totalRefundAmount; List<String> get photoUrls;@JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) ClaimStatus get status;@JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson) ClaimResolution? get resolution; String? get rejectReason; String? get appealReason;@NullableLocalDateTimeConverter() DateTime? get appealDeadlineAt;@JsonKey(fromJson: ReshipDeliveryMethod.fromJson, toJson: ReshipDeliveryMethod.toJson) ReshipDeliveryMethod? get reshipDeliveryMethod; String? get reshipCourierCode; String? get reshipTrackingNumber;@NullableLocalDateTimeConverter() DateTime? get reshipShippedAt; List<ClaimCheckTrackingEventDto> get reshipTrackingEvents; List<ClaimCheckStatusHistoryDto> get statusHistories;@NullableLocalDateTimeConverter() DateTime? get deliveredAt;@LocalDateTimeConverter() DateTime get updatedAt;
/// Create a copy of ClaimCheckResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimCheckResponseDtoCopyWith<ClaimCheckResponseDto> get copyWith => _$ClaimCheckResponseDtoCopyWithImpl<ClaimCheckResponseDto>(this as ClaimCheckResponseDto, _$identity);

  /// Serializes this ClaimCheckResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimCheckResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.claimCode, claimCode) || other.claimCode == claimCode)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.claimReason, claimReason) || other.claimReason == claimReason)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalRefundAmount, totalRefundAmount) || other.totalRefundAmount == totalRefundAmount)&&const DeepCollectionEquality().equals(other.photoUrls, photoUrls)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason)&&(identical(other.appealReason, appealReason) || other.appealReason == appealReason)&&(identical(other.appealDeadlineAt, appealDeadlineAt) || other.appealDeadlineAt == appealDeadlineAt)&&(identical(other.reshipDeliveryMethod, reshipDeliveryMethod) || other.reshipDeliveryMethod == reshipDeliveryMethod)&&(identical(other.reshipCourierCode, reshipCourierCode) || other.reshipCourierCode == reshipCourierCode)&&(identical(other.reshipTrackingNumber, reshipTrackingNumber) || other.reshipTrackingNumber == reshipTrackingNumber)&&(identical(other.reshipShippedAt, reshipShippedAt) || other.reshipShippedAt == reshipShippedAt)&&const DeepCollectionEquality().equals(other.reshipTrackingEvents, reshipTrackingEvents)&&const DeepCollectionEquality().equals(other.statusHistories, statusHistories)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,claimCode,orderId,orderCode,sellerBusinessName,createdAt,claimType,claimReason,const DeepCollectionEquality().hash(items),totalRefundAmount,const DeepCollectionEquality().hash(photoUrls),status,resolution,rejectReason,appealReason,appealDeadlineAt,reshipDeliveryMethod,reshipCourierCode,reshipTrackingNumber,reshipShippedAt,const DeepCollectionEquality().hash(reshipTrackingEvents),const DeepCollectionEquality().hash(statusHistories),deliveredAt,updatedAt]);

@override
String toString() {
  return 'ClaimCheckResponseDto(id: $id, claimCode: $claimCode, orderId: $orderId, orderCode: $orderCode, sellerBusinessName: $sellerBusinessName, createdAt: $createdAt, claimType: $claimType, claimReason: $claimReason, items: $items, totalRefundAmount: $totalRefundAmount, photoUrls: $photoUrls, status: $status, resolution: $resolution, rejectReason: $rejectReason, appealReason: $appealReason, appealDeadlineAt: $appealDeadlineAt, reshipDeliveryMethod: $reshipDeliveryMethod, reshipCourierCode: $reshipCourierCode, reshipTrackingNumber: $reshipTrackingNumber, reshipShippedAt: $reshipShippedAt, reshipTrackingEvents: $reshipTrackingEvents, statusHistories: $statusHistories, deliveredAt: $deliveredAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ClaimCheckResponseDtoCopyWith<$Res>  {
  factory $ClaimCheckResponseDtoCopyWith(ClaimCheckResponseDto value, $Res Function(ClaimCheckResponseDto) _then) = _$ClaimCheckResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, String claimCode, int orderId, String orderCode, String sellerBusinessName,@LocalDateTimeConverter() DateTime createdAt,@JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson) ClaimType claimType, String claimReason, List<ClaimCheckItemDto> items, int totalRefundAmount, List<String> photoUrls,@JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) ClaimStatus status,@JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson) ClaimResolution? resolution, String? rejectReason, String? appealReason,@NullableLocalDateTimeConverter() DateTime? appealDeadlineAt,@JsonKey(fromJson: ReshipDeliveryMethod.fromJson, toJson: ReshipDeliveryMethod.toJson) ReshipDeliveryMethod? reshipDeliveryMethod, String? reshipCourierCode, String? reshipTrackingNumber,@NullableLocalDateTimeConverter() DateTime? reshipShippedAt, List<ClaimCheckTrackingEventDto> reshipTrackingEvents, List<ClaimCheckStatusHistoryDto> statusHistories,@NullableLocalDateTimeConverter() DateTime? deliveredAt,@LocalDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$ClaimCheckResponseDtoCopyWithImpl<$Res>
    implements $ClaimCheckResponseDtoCopyWith<$Res> {
  _$ClaimCheckResponseDtoCopyWithImpl(this._self, this._then);

  final ClaimCheckResponseDto _self;
  final $Res Function(ClaimCheckResponseDto) _then;

/// Create a copy of ClaimCheckResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? claimCode = null,Object? orderId = null,Object? orderCode = null,Object? sellerBusinessName = null,Object? createdAt = null,Object? claimType = null,Object? claimReason = null,Object? items = null,Object? totalRefundAmount = null,Object? photoUrls = null,Object? status = null,Object? resolution = freezed,Object? rejectReason = freezed,Object? appealReason = freezed,Object? appealDeadlineAt = freezed,Object? reshipDeliveryMethod = freezed,Object? reshipCourierCode = freezed,Object? reshipTrackingNumber = freezed,Object? reshipShippedAt = freezed,Object? reshipTrackingEvents = null,Object? statusHistories = null,Object? deliveredAt = freezed,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,claimCode: null == claimCode ? _self.claimCode : claimCode // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,sellerBusinessName: null == sellerBusinessName ? _self.sellerBusinessName : sellerBusinessName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,claimType: null == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as ClaimType,claimReason: null == claimReason ? _self.claimReason : claimReason // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ClaimCheckItemDto>,totalRefundAmount: null == totalRefundAmount ? _self.totalRefundAmount : totalRefundAmount // ignore: cast_nullable_to_non_nullable
as int,photoUrls: null == photoUrls ? _self.photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatus,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as ClaimResolution?,rejectReason: freezed == rejectReason ? _self.rejectReason : rejectReason // ignore: cast_nullable_to_non_nullable
as String?,appealReason: freezed == appealReason ? _self.appealReason : appealReason // ignore: cast_nullable_to_non_nullable
as String?,appealDeadlineAt: freezed == appealDeadlineAt ? _self.appealDeadlineAt : appealDeadlineAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reshipDeliveryMethod: freezed == reshipDeliveryMethod ? _self.reshipDeliveryMethod : reshipDeliveryMethod // ignore: cast_nullable_to_non_nullable
as ReshipDeliveryMethod?,reshipCourierCode: freezed == reshipCourierCode ? _self.reshipCourierCode : reshipCourierCode // ignore: cast_nullable_to_non_nullable
as String?,reshipTrackingNumber: freezed == reshipTrackingNumber ? _self.reshipTrackingNumber : reshipTrackingNumber // ignore: cast_nullable_to_non_nullable
as String?,reshipShippedAt: freezed == reshipShippedAt ? _self.reshipShippedAt : reshipShippedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reshipTrackingEvents: null == reshipTrackingEvents ? _self.reshipTrackingEvents : reshipTrackingEvents // ignore: cast_nullable_to_non_nullable
as List<ClaimCheckTrackingEventDto>,statusHistories: null == statusHistories ? _self.statusHistories : statusHistories // ignore: cast_nullable_to_non_nullable
as List<ClaimCheckStatusHistoryDto>,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimCheckResponseDto].
extension ClaimCheckResponseDtoPatterns on ClaimCheckResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimCheckResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimCheckResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimCheckResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimCheckResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String claimCode,  int orderId,  String orderCode,  String sellerBusinessName, @LocalDateTimeConverter()  DateTime createdAt, @JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson)  ClaimType claimType,  String claimReason,  List<ClaimCheckItemDto> items,  int totalRefundAmount,  List<String> photoUrls, @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson)  ClaimStatus status, @JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson)  ClaimResolution? resolution,  String? rejectReason,  String? appealReason, @NullableLocalDateTimeConverter()  DateTime? appealDeadlineAt, @JsonKey(fromJson: ReshipDeliveryMethod.fromJson, toJson: ReshipDeliveryMethod.toJson)  ReshipDeliveryMethod? reshipDeliveryMethod,  String? reshipCourierCode,  String? reshipTrackingNumber, @NullableLocalDateTimeConverter()  DateTime? reshipShippedAt,  List<ClaimCheckTrackingEventDto> reshipTrackingEvents,  List<ClaimCheckStatusHistoryDto> statusHistories, @NullableLocalDateTimeConverter()  DateTime? deliveredAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimCheckResponseDto() when $default != null:
return $default(_that.id,_that.claimCode,_that.orderId,_that.orderCode,_that.sellerBusinessName,_that.createdAt,_that.claimType,_that.claimReason,_that.items,_that.totalRefundAmount,_that.photoUrls,_that.status,_that.resolution,_that.rejectReason,_that.appealReason,_that.appealDeadlineAt,_that.reshipDeliveryMethod,_that.reshipCourierCode,_that.reshipTrackingNumber,_that.reshipShippedAt,_that.reshipTrackingEvents,_that.statusHistories,_that.deliveredAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String claimCode,  int orderId,  String orderCode,  String sellerBusinessName, @LocalDateTimeConverter()  DateTime createdAt, @JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson)  ClaimType claimType,  String claimReason,  List<ClaimCheckItemDto> items,  int totalRefundAmount,  List<String> photoUrls, @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson)  ClaimStatus status, @JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson)  ClaimResolution? resolution,  String? rejectReason,  String? appealReason, @NullableLocalDateTimeConverter()  DateTime? appealDeadlineAt, @JsonKey(fromJson: ReshipDeliveryMethod.fromJson, toJson: ReshipDeliveryMethod.toJson)  ReshipDeliveryMethod? reshipDeliveryMethod,  String? reshipCourierCode,  String? reshipTrackingNumber, @NullableLocalDateTimeConverter()  DateTime? reshipShippedAt,  List<ClaimCheckTrackingEventDto> reshipTrackingEvents,  List<ClaimCheckStatusHistoryDto> statusHistories, @NullableLocalDateTimeConverter()  DateTime? deliveredAt, @LocalDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ClaimCheckResponseDto():
return $default(_that.id,_that.claimCode,_that.orderId,_that.orderCode,_that.sellerBusinessName,_that.createdAt,_that.claimType,_that.claimReason,_that.items,_that.totalRefundAmount,_that.photoUrls,_that.status,_that.resolution,_that.rejectReason,_that.appealReason,_that.appealDeadlineAt,_that.reshipDeliveryMethod,_that.reshipCourierCode,_that.reshipTrackingNumber,_that.reshipShippedAt,_that.reshipTrackingEvents,_that.statusHistories,_that.deliveredAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String claimCode,  int orderId,  String orderCode,  String sellerBusinessName, @LocalDateTimeConverter()  DateTime createdAt, @JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson)  ClaimType claimType,  String claimReason,  List<ClaimCheckItemDto> items,  int totalRefundAmount,  List<String> photoUrls, @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson)  ClaimStatus status, @JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson)  ClaimResolution? resolution,  String? rejectReason,  String? appealReason, @NullableLocalDateTimeConverter()  DateTime? appealDeadlineAt, @JsonKey(fromJson: ReshipDeliveryMethod.fromJson, toJson: ReshipDeliveryMethod.toJson)  ReshipDeliveryMethod? reshipDeliveryMethod,  String? reshipCourierCode,  String? reshipTrackingNumber, @NullableLocalDateTimeConverter()  DateTime? reshipShippedAt,  List<ClaimCheckTrackingEventDto> reshipTrackingEvents,  List<ClaimCheckStatusHistoryDto> statusHistories, @NullableLocalDateTimeConverter()  DateTime? deliveredAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ClaimCheckResponseDto() when $default != null:
return $default(_that.id,_that.claimCode,_that.orderId,_that.orderCode,_that.sellerBusinessName,_that.createdAt,_that.claimType,_that.claimReason,_that.items,_that.totalRefundAmount,_that.photoUrls,_that.status,_that.resolution,_that.rejectReason,_that.appealReason,_that.appealDeadlineAt,_that.reshipDeliveryMethod,_that.reshipCourierCode,_that.reshipTrackingNumber,_that.reshipShippedAt,_that.reshipTrackingEvents,_that.statusHistories,_that.deliveredAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClaimCheckResponseDto implements ClaimCheckResponseDto {
  const _ClaimCheckResponseDto({required this.id, required this.claimCode, required this.orderId, required this.orderCode, required this.sellerBusinessName, @LocalDateTimeConverter() required this.createdAt, @JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson) required this.claimType, required this.claimReason, required final  List<ClaimCheckItemDto> items, required this.totalRefundAmount, required final  List<String> photoUrls, @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) required this.status, @JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson) this.resolution, this.rejectReason, this.appealReason, @NullableLocalDateTimeConverter() this.appealDeadlineAt, @JsonKey(fromJson: ReshipDeliveryMethod.fromJson, toJson: ReshipDeliveryMethod.toJson) this.reshipDeliveryMethod, this.reshipCourierCode, this.reshipTrackingNumber, @NullableLocalDateTimeConverter() this.reshipShippedAt, final  List<ClaimCheckTrackingEventDto> reshipTrackingEvents = const [], required final  List<ClaimCheckStatusHistoryDto> statusHistories, @NullableLocalDateTimeConverter() this.deliveredAt, @LocalDateTimeConverter() required this.updatedAt}): _items = items,_photoUrls = photoUrls,_reshipTrackingEvents = reshipTrackingEvents,_statusHistories = statusHistories;
  factory _ClaimCheckResponseDto.fromJson(Map<String, dynamic> json) => _$ClaimCheckResponseDtoFromJson(json);

@override final  int id;
@override final  String claimCode;
@override final  int orderId;
@override final  String orderCode;
@override final  String sellerBusinessName;
@override@LocalDateTimeConverter() final  DateTime createdAt;
@override@JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson) final  ClaimType claimType;
@override final  String claimReason;
 final  List<ClaimCheckItemDto> _items;
@override List<ClaimCheckItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalRefundAmount;
 final  List<String> _photoUrls;
@override List<String> get photoUrls {
  if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoUrls);
}

@override@JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) final  ClaimStatus status;
@override@JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson) final  ClaimResolution? resolution;
@override final  String? rejectReason;
@override final  String? appealReason;
@override@NullableLocalDateTimeConverter() final  DateTime? appealDeadlineAt;
@override@JsonKey(fromJson: ReshipDeliveryMethod.fromJson, toJson: ReshipDeliveryMethod.toJson) final  ReshipDeliveryMethod? reshipDeliveryMethod;
@override final  String? reshipCourierCode;
@override final  String? reshipTrackingNumber;
@override@NullableLocalDateTimeConverter() final  DateTime? reshipShippedAt;
 final  List<ClaimCheckTrackingEventDto> _reshipTrackingEvents;
@override@JsonKey() List<ClaimCheckTrackingEventDto> get reshipTrackingEvents {
  if (_reshipTrackingEvents is EqualUnmodifiableListView) return _reshipTrackingEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reshipTrackingEvents);
}

 final  List<ClaimCheckStatusHistoryDto> _statusHistories;
@override List<ClaimCheckStatusHistoryDto> get statusHistories {
  if (_statusHistories is EqualUnmodifiableListView) return _statusHistories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusHistories);
}

@override@NullableLocalDateTimeConverter() final  DateTime? deliveredAt;
@override@LocalDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of ClaimCheckResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimCheckResponseDtoCopyWith<_ClaimCheckResponseDto> get copyWith => __$ClaimCheckResponseDtoCopyWithImpl<_ClaimCheckResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimCheckResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimCheckResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.claimCode, claimCode) || other.claimCode == claimCode)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.claimReason, claimReason) || other.claimReason == claimReason)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalRefundAmount, totalRefundAmount) || other.totalRefundAmount == totalRefundAmount)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason)&&(identical(other.appealReason, appealReason) || other.appealReason == appealReason)&&(identical(other.appealDeadlineAt, appealDeadlineAt) || other.appealDeadlineAt == appealDeadlineAt)&&(identical(other.reshipDeliveryMethod, reshipDeliveryMethod) || other.reshipDeliveryMethod == reshipDeliveryMethod)&&(identical(other.reshipCourierCode, reshipCourierCode) || other.reshipCourierCode == reshipCourierCode)&&(identical(other.reshipTrackingNumber, reshipTrackingNumber) || other.reshipTrackingNumber == reshipTrackingNumber)&&(identical(other.reshipShippedAt, reshipShippedAt) || other.reshipShippedAt == reshipShippedAt)&&const DeepCollectionEquality().equals(other._reshipTrackingEvents, _reshipTrackingEvents)&&const DeepCollectionEquality().equals(other._statusHistories, _statusHistories)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,claimCode,orderId,orderCode,sellerBusinessName,createdAt,claimType,claimReason,const DeepCollectionEquality().hash(_items),totalRefundAmount,const DeepCollectionEquality().hash(_photoUrls),status,resolution,rejectReason,appealReason,appealDeadlineAt,reshipDeliveryMethod,reshipCourierCode,reshipTrackingNumber,reshipShippedAt,const DeepCollectionEquality().hash(_reshipTrackingEvents),const DeepCollectionEquality().hash(_statusHistories),deliveredAt,updatedAt]);

@override
String toString() {
  return 'ClaimCheckResponseDto(id: $id, claimCode: $claimCode, orderId: $orderId, orderCode: $orderCode, sellerBusinessName: $sellerBusinessName, createdAt: $createdAt, claimType: $claimType, claimReason: $claimReason, items: $items, totalRefundAmount: $totalRefundAmount, photoUrls: $photoUrls, status: $status, resolution: $resolution, rejectReason: $rejectReason, appealReason: $appealReason, appealDeadlineAt: $appealDeadlineAt, reshipDeliveryMethod: $reshipDeliveryMethod, reshipCourierCode: $reshipCourierCode, reshipTrackingNumber: $reshipTrackingNumber, reshipShippedAt: $reshipShippedAt, reshipTrackingEvents: $reshipTrackingEvents, statusHistories: $statusHistories, deliveredAt: $deliveredAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ClaimCheckResponseDtoCopyWith<$Res> implements $ClaimCheckResponseDtoCopyWith<$Res> {
  factory _$ClaimCheckResponseDtoCopyWith(_ClaimCheckResponseDto value, $Res Function(_ClaimCheckResponseDto) _then) = __$ClaimCheckResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String claimCode, int orderId, String orderCode, String sellerBusinessName,@LocalDateTimeConverter() DateTime createdAt,@JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson) ClaimType claimType, String claimReason, List<ClaimCheckItemDto> items, int totalRefundAmount, List<String> photoUrls,@JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) ClaimStatus status,@JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson) ClaimResolution? resolution, String? rejectReason, String? appealReason,@NullableLocalDateTimeConverter() DateTime? appealDeadlineAt,@JsonKey(fromJson: ReshipDeliveryMethod.fromJson, toJson: ReshipDeliveryMethod.toJson) ReshipDeliveryMethod? reshipDeliveryMethod, String? reshipCourierCode, String? reshipTrackingNumber,@NullableLocalDateTimeConverter() DateTime? reshipShippedAt, List<ClaimCheckTrackingEventDto> reshipTrackingEvents, List<ClaimCheckStatusHistoryDto> statusHistories,@NullableLocalDateTimeConverter() DateTime? deliveredAt,@LocalDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$ClaimCheckResponseDtoCopyWithImpl<$Res>
    implements _$ClaimCheckResponseDtoCopyWith<$Res> {
  __$ClaimCheckResponseDtoCopyWithImpl(this._self, this._then);

  final _ClaimCheckResponseDto _self;
  final $Res Function(_ClaimCheckResponseDto) _then;

/// Create a copy of ClaimCheckResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? claimCode = null,Object? orderId = null,Object? orderCode = null,Object? sellerBusinessName = null,Object? createdAt = null,Object? claimType = null,Object? claimReason = null,Object? items = null,Object? totalRefundAmount = null,Object? photoUrls = null,Object? status = null,Object? resolution = freezed,Object? rejectReason = freezed,Object? appealReason = freezed,Object? appealDeadlineAt = freezed,Object? reshipDeliveryMethod = freezed,Object? reshipCourierCode = freezed,Object? reshipTrackingNumber = freezed,Object? reshipShippedAt = freezed,Object? reshipTrackingEvents = null,Object? statusHistories = null,Object? deliveredAt = freezed,Object? updatedAt = null,}) {
  return _then(_ClaimCheckResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,claimCode: null == claimCode ? _self.claimCode : claimCode // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,sellerBusinessName: null == sellerBusinessName ? _self.sellerBusinessName : sellerBusinessName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,claimType: null == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as ClaimType,claimReason: null == claimReason ? _self.claimReason : claimReason // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ClaimCheckItemDto>,totalRefundAmount: null == totalRefundAmount ? _self.totalRefundAmount : totalRefundAmount // ignore: cast_nullable_to_non_nullable
as int,photoUrls: null == photoUrls ? _self._photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatus,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as ClaimResolution?,rejectReason: freezed == rejectReason ? _self.rejectReason : rejectReason // ignore: cast_nullable_to_non_nullable
as String?,appealReason: freezed == appealReason ? _self.appealReason : appealReason // ignore: cast_nullable_to_non_nullable
as String?,appealDeadlineAt: freezed == appealDeadlineAt ? _self.appealDeadlineAt : appealDeadlineAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reshipDeliveryMethod: freezed == reshipDeliveryMethod ? _self.reshipDeliveryMethod : reshipDeliveryMethod // ignore: cast_nullable_to_non_nullable
as ReshipDeliveryMethod?,reshipCourierCode: freezed == reshipCourierCode ? _self.reshipCourierCode : reshipCourierCode // ignore: cast_nullable_to_non_nullable
as String?,reshipTrackingNumber: freezed == reshipTrackingNumber ? _self.reshipTrackingNumber : reshipTrackingNumber // ignore: cast_nullable_to_non_nullable
as String?,reshipShippedAt: freezed == reshipShippedAt ? _self.reshipShippedAt : reshipShippedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reshipTrackingEvents: null == reshipTrackingEvents ? _self._reshipTrackingEvents : reshipTrackingEvents // ignore: cast_nullable_to_non_nullable
as List<ClaimCheckTrackingEventDto>,statusHistories: null == statusHistories ? _self._statusHistories : statusHistories // ignore: cast_nullable_to_non_nullable
as List<ClaimCheckStatusHistoryDto>,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ClaimCheckItemDto {

 int get id; int get orderItemId; String get productName; String get optionName; int get unitPrice; int get quantity; int get claimedQuantity; int get refundAmount; String? get thumbnailImageUrl;
/// Create a copy of ClaimCheckItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimCheckItemDtoCopyWith<ClaimCheckItemDto> get copyWith => _$ClaimCheckItemDtoCopyWithImpl<ClaimCheckItemDto>(this as ClaimCheckItemDto, _$identity);

  /// Serializes this ClaimCheckItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimCheckItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderItemId, orderItemId) || other.orderItemId == orderItemId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.claimedQuantity, claimedQuantity) || other.claimedQuantity == claimedQuantity)&&(identical(other.refundAmount, refundAmount) || other.refundAmount == refundAmount)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderItemId,productName,optionName,unitPrice,quantity,claimedQuantity,refundAmount,thumbnailImageUrl);

@override
String toString() {
  return 'ClaimCheckItemDto(id: $id, orderItemId: $orderItemId, productName: $productName, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, claimedQuantity: $claimedQuantity, refundAmount: $refundAmount, thumbnailImageUrl: $thumbnailImageUrl)';
}


}

/// @nodoc
abstract mixin class $ClaimCheckItemDtoCopyWith<$Res>  {
  factory $ClaimCheckItemDtoCopyWith(ClaimCheckItemDto value, $Res Function(ClaimCheckItemDto) _then) = _$ClaimCheckItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, int orderItemId, String productName, String optionName, int unitPrice, int quantity, int claimedQuantity, int refundAmount, String? thumbnailImageUrl
});




}
/// @nodoc
class _$ClaimCheckItemDtoCopyWithImpl<$Res>
    implements $ClaimCheckItemDtoCopyWith<$Res> {
  _$ClaimCheckItemDtoCopyWithImpl(this._self, this._then);

  final ClaimCheckItemDto _self;
  final $Res Function(ClaimCheckItemDto) _then;

/// Create a copy of ClaimCheckItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderItemId = null,Object? productName = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? claimedQuantity = null,Object? refundAmount = null,Object? thumbnailImageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderItemId: null == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,claimedQuantity: null == claimedQuantity ? _self.claimedQuantity : claimedQuantity // ignore: cast_nullable_to_non_nullable
as int,refundAmount: null == refundAmount ? _self.refundAmount : refundAmount // ignore: cast_nullable_to_non_nullable
as int,thumbnailImageUrl: freezed == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimCheckItemDto].
extension ClaimCheckItemDtoPatterns on ClaimCheckItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimCheckItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimCheckItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimCheckItemDto value)  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimCheckItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int orderItemId,  String productName,  String optionName,  int unitPrice,  int quantity,  int claimedQuantity,  int refundAmount,  String? thumbnailImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimCheckItemDto() when $default != null:
return $default(_that.id,_that.orderItemId,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.claimedQuantity,_that.refundAmount,_that.thumbnailImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int orderItemId,  String productName,  String optionName,  int unitPrice,  int quantity,  int claimedQuantity,  int refundAmount,  String? thumbnailImageUrl)  $default,) {final _that = this;
switch (_that) {
case _ClaimCheckItemDto():
return $default(_that.id,_that.orderItemId,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.claimedQuantity,_that.refundAmount,_that.thumbnailImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int orderItemId,  String productName,  String optionName,  int unitPrice,  int quantity,  int claimedQuantity,  int refundAmount,  String? thumbnailImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _ClaimCheckItemDto() when $default != null:
return $default(_that.id,_that.orderItemId,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.claimedQuantity,_that.refundAmount,_that.thumbnailImageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClaimCheckItemDto implements ClaimCheckItemDto {
  const _ClaimCheckItemDto({required this.id, required this.orderItemId, required this.productName, required this.optionName, required this.unitPrice, required this.quantity, required this.claimedQuantity, required this.refundAmount, this.thumbnailImageUrl});
  factory _ClaimCheckItemDto.fromJson(Map<String, dynamic> json) => _$ClaimCheckItemDtoFromJson(json);

@override final  int id;
@override final  int orderItemId;
@override final  String productName;
@override final  String optionName;
@override final  int unitPrice;
@override final  int quantity;
@override final  int claimedQuantity;
@override final  int refundAmount;
@override final  String? thumbnailImageUrl;

/// Create a copy of ClaimCheckItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimCheckItemDtoCopyWith<_ClaimCheckItemDto> get copyWith => __$ClaimCheckItemDtoCopyWithImpl<_ClaimCheckItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimCheckItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimCheckItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderItemId, orderItemId) || other.orderItemId == orderItemId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.claimedQuantity, claimedQuantity) || other.claimedQuantity == claimedQuantity)&&(identical(other.refundAmount, refundAmount) || other.refundAmount == refundAmount)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderItemId,productName,optionName,unitPrice,quantity,claimedQuantity,refundAmount,thumbnailImageUrl);

@override
String toString() {
  return 'ClaimCheckItemDto(id: $id, orderItemId: $orderItemId, productName: $productName, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, claimedQuantity: $claimedQuantity, refundAmount: $refundAmount, thumbnailImageUrl: $thumbnailImageUrl)';
}


}

/// @nodoc
abstract mixin class _$ClaimCheckItemDtoCopyWith<$Res> implements $ClaimCheckItemDtoCopyWith<$Res> {
  factory _$ClaimCheckItemDtoCopyWith(_ClaimCheckItemDto value, $Res Function(_ClaimCheckItemDto) _then) = __$ClaimCheckItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int orderItemId, String productName, String optionName, int unitPrice, int quantity, int claimedQuantity, int refundAmount, String? thumbnailImageUrl
});




}
/// @nodoc
class __$ClaimCheckItemDtoCopyWithImpl<$Res>
    implements _$ClaimCheckItemDtoCopyWith<$Res> {
  __$ClaimCheckItemDtoCopyWithImpl(this._self, this._then);

  final _ClaimCheckItemDto _self;
  final $Res Function(_ClaimCheckItemDto) _then;

/// Create a copy of ClaimCheckItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderItemId = null,Object? productName = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? claimedQuantity = null,Object? refundAmount = null,Object? thumbnailImageUrl = freezed,}) {
  return _then(_ClaimCheckItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderItemId: null == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,claimedQuantity: null == claimedQuantity ? _self.claimedQuantity : claimedQuantity // ignore: cast_nullable_to_non_nullable
as int,refundAmount: null == refundAmount ? _self.refundAmount : refundAmount // ignore: cast_nullable_to_non_nullable
as int,thumbnailImageUrl: freezed == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClaimCheckStatusHistoryDto {

 int get id;@JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) ClaimStatus get status; String? get memo;@LocalDateTimeConverter() DateTime get createdAt;
/// Create a copy of ClaimCheckStatusHistoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimCheckStatusHistoryDtoCopyWith<ClaimCheckStatusHistoryDto> get copyWith => _$ClaimCheckStatusHistoryDtoCopyWithImpl<ClaimCheckStatusHistoryDto>(this as ClaimCheckStatusHistoryDto, _$identity);

  /// Serializes this ClaimCheckStatusHistoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimCheckStatusHistoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,memo,createdAt);

@override
String toString() {
  return 'ClaimCheckStatusHistoryDto(id: $id, status: $status, memo: $memo, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ClaimCheckStatusHistoryDtoCopyWith<$Res>  {
  factory $ClaimCheckStatusHistoryDtoCopyWith(ClaimCheckStatusHistoryDto value, $Res Function(ClaimCheckStatusHistoryDto) _then) = _$ClaimCheckStatusHistoryDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) ClaimStatus status, String? memo,@LocalDateTimeConverter() DateTime createdAt
});




}
/// @nodoc
class _$ClaimCheckStatusHistoryDtoCopyWithImpl<$Res>
    implements $ClaimCheckStatusHistoryDtoCopyWith<$Res> {
  _$ClaimCheckStatusHistoryDtoCopyWithImpl(this._self, this._then);

  final ClaimCheckStatusHistoryDto _self;
  final $Res Function(ClaimCheckStatusHistoryDto) _then;

/// Create a copy of ClaimCheckStatusHistoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? memo = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatus,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimCheckStatusHistoryDto].
extension ClaimCheckStatusHistoryDtoPatterns on ClaimCheckStatusHistoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimCheckStatusHistoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimCheckStatusHistoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimCheckStatusHistoryDto value)  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckStatusHistoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimCheckStatusHistoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckStatusHistoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson)  ClaimStatus status,  String? memo, @LocalDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimCheckStatusHistoryDto() when $default != null:
return $default(_that.id,_that.status,_that.memo,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson)  ClaimStatus status,  String? memo, @LocalDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ClaimCheckStatusHistoryDto():
return $default(_that.id,_that.status,_that.memo,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson)  ClaimStatus status,  String? memo, @LocalDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ClaimCheckStatusHistoryDto() when $default != null:
return $default(_that.id,_that.status,_that.memo,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClaimCheckStatusHistoryDto implements ClaimCheckStatusHistoryDto {
  const _ClaimCheckStatusHistoryDto({required this.id, @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) required this.status, this.memo, @LocalDateTimeConverter() required this.createdAt});
  factory _ClaimCheckStatusHistoryDto.fromJson(Map<String, dynamic> json) => _$ClaimCheckStatusHistoryDtoFromJson(json);

@override final  int id;
@override@JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) final  ClaimStatus status;
@override final  String? memo;
@override@LocalDateTimeConverter() final  DateTime createdAt;

/// Create a copy of ClaimCheckStatusHistoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimCheckStatusHistoryDtoCopyWith<_ClaimCheckStatusHistoryDto> get copyWith => __$ClaimCheckStatusHistoryDtoCopyWithImpl<_ClaimCheckStatusHistoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimCheckStatusHistoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimCheckStatusHistoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,memo,createdAt);

@override
String toString() {
  return 'ClaimCheckStatusHistoryDto(id: $id, status: $status, memo: $memo, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ClaimCheckStatusHistoryDtoCopyWith<$Res> implements $ClaimCheckStatusHistoryDtoCopyWith<$Res> {
  factory _$ClaimCheckStatusHistoryDtoCopyWith(_ClaimCheckStatusHistoryDto value, $Res Function(_ClaimCheckStatusHistoryDto) _then) = __$ClaimCheckStatusHistoryDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson) ClaimStatus status, String? memo,@LocalDateTimeConverter() DateTime createdAt
});




}
/// @nodoc
class __$ClaimCheckStatusHistoryDtoCopyWithImpl<$Res>
    implements _$ClaimCheckStatusHistoryDtoCopyWith<$Res> {
  __$ClaimCheckStatusHistoryDtoCopyWithImpl(this._self, this._then);

  final _ClaimCheckStatusHistoryDto _self;
  final $Res Function(_ClaimCheckStatusHistoryDto) _then;

/// Create a copy of ClaimCheckStatusHistoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? memo = freezed,Object? createdAt = null,}) {
  return _then(_ClaimCheckStatusHistoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatus,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ClaimCheckTrackingEventDto {

 String get timeString; String get where; String get kind; int get level;
/// Create a copy of ClaimCheckTrackingEventDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimCheckTrackingEventDtoCopyWith<ClaimCheckTrackingEventDto> get copyWith => _$ClaimCheckTrackingEventDtoCopyWithImpl<ClaimCheckTrackingEventDto>(this as ClaimCheckTrackingEventDto, _$identity);

  /// Serializes this ClaimCheckTrackingEventDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimCheckTrackingEventDto&&(identical(other.timeString, timeString) || other.timeString == timeString)&&(identical(other.where, where) || other.where == where)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timeString,where,kind,level);

@override
String toString() {
  return 'ClaimCheckTrackingEventDto(timeString: $timeString, where: $where, kind: $kind, level: $level)';
}


}

/// @nodoc
abstract mixin class $ClaimCheckTrackingEventDtoCopyWith<$Res>  {
  factory $ClaimCheckTrackingEventDtoCopyWith(ClaimCheckTrackingEventDto value, $Res Function(ClaimCheckTrackingEventDto) _then) = _$ClaimCheckTrackingEventDtoCopyWithImpl;
@useResult
$Res call({
 String timeString, String where, String kind, int level
});




}
/// @nodoc
class _$ClaimCheckTrackingEventDtoCopyWithImpl<$Res>
    implements $ClaimCheckTrackingEventDtoCopyWith<$Res> {
  _$ClaimCheckTrackingEventDtoCopyWithImpl(this._self, this._then);

  final ClaimCheckTrackingEventDto _self;
  final $Res Function(ClaimCheckTrackingEventDto) _then;

/// Create a copy of ClaimCheckTrackingEventDto
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


/// Adds pattern-matching-related methods to [ClaimCheckTrackingEventDto].
extension ClaimCheckTrackingEventDtoPatterns on ClaimCheckTrackingEventDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimCheckTrackingEventDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimCheckTrackingEventDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimCheckTrackingEventDto value)  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckTrackingEventDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimCheckTrackingEventDto value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimCheckTrackingEventDto() when $default != null:
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
case _ClaimCheckTrackingEventDto() when $default != null:
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
case _ClaimCheckTrackingEventDto():
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
case _ClaimCheckTrackingEventDto() when $default != null:
return $default(_that.timeString,_that.where,_that.kind,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClaimCheckTrackingEventDto implements ClaimCheckTrackingEventDto {
  const _ClaimCheckTrackingEventDto({required this.timeString, required this.where, required this.kind, required this.level});
  factory _ClaimCheckTrackingEventDto.fromJson(Map<String, dynamic> json) => _$ClaimCheckTrackingEventDtoFromJson(json);

@override final  String timeString;
@override final  String where;
@override final  String kind;
@override final  int level;

/// Create a copy of ClaimCheckTrackingEventDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimCheckTrackingEventDtoCopyWith<_ClaimCheckTrackingEventDto> get copyWith => __$ClaimCheckTrackingEventDtoCopyWithImpl<_ClaimCheckTrackingEventDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimCheckTrackingEventDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimCheckTrackingEventDto&&(identical(other.timeString, timeString) || other.timeString == timeString)&&(identical(other.where, where) || other.where == where)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timeString,where,kind,level);

@override
String toString() {
  return 'ClaimCheckTrackingEventDto(timeString: $timeString, where: $where, kind: $kind, level: $level)';
}


}

/// @nodoc
abstract mixin class _$ClaimCheckTrackingEventDtoCopyWith<$Res> implements $ClaimCheckTrackingEventDtoCopyWith<$Res> {
  factory _$ClaimCheckTrackingEventDtoCopyWith(_ClaimCheckTrackingEventDto value, $Res Function(_ClaimCheckTrackingEventDto) _then) = __$ClaimCheckTrackingEventDtoCopyWithImpl;
@override @useResult
$Res call({
 String timeString, String where, String kind, int level
});




}
/// @nodoc
class __$ClaimCheckTrackingEventDtoCopyWithImpl<$Res>
    implements _$ClaimCheckTrackingEventDtoCopyWith<$Res> {
  __$ClaimCheckTrackingEventDtoCopyWithImpl(this._self, this._then);

  final _ClaimCheckTrackingEventDto _self;
  final $Res Function(_ClaimCheckTrackingEventDto) _then;

/// Create a copy of ClaimCheckTrackingEventDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timeString = null,Object? where = null,Object? kind = null,Object? level = null,}) {
  return _then(_ClaimCheckTrackingEventDto(
timeString: null == timeString ? _self.timeString : timeString // ignore: cast_nullable_to_non_nullable
as String,where: null == where ? _self.where : where // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
