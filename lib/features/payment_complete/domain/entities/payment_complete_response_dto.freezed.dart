// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_complete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentCompleteResponseWrapper {

 PaymentCompleteResponseDto get data;
/// Create a copy of PaymentCompleteResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCompleteResponseWrapperCopyWith<PaymentCompleteResponseWrapper> get copyWith => _$PaymentCompleteResponseWrapperCopyWithImpl<PaymentCompleteResponseWrapper>(this as PaymentCompleteResponseWrapper, _$identity);

  /// Serializes this PaymentCompleteResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCompleteResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PaymentCompleteResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $PaymentCompleteResponseWrapperCopyWith<$Res>  {
  factory $PaymentCompleteResponseWrapperCopyWith(PaymentCompleteResponseWrapper value, $Res Function(PaymentCompleteResponseWrapper) _then) = _$PaymentCompleteResponseWrapperCopyWithImpl;
@useResult
$Res call({
 PaymentCompleteResponseDto data
});


$PaymentCompleteResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$PaymentCompleteResponseWrapperCopyWithImpl<$Res>
    implements $PaymentCompleteResponseWrapperCopyWith<$Res> {
  _$PaymentCompleteResponseWrapperCopyWithImpl(this._self, this._then);

  final PaymentCompleteResponseWrapper _self;
  final $Res Function(PaymentCompleteResponseWrapper) _then;

/// Create a copy of PaymentCompleteResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentCompleteResponseDto,
  ));
}
/// Create a copy of PaymentCompleteResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCompleteResponseDtoCopyWith<$Res> get data {
  
  return $PaymentCompleteResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentCompleteResponseWrapper].
extension PaymentCompleteResponseWrapperPatterns on PaymentCompleteResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentCompleteResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentCompleteResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentCompleteResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _PaymentCompleteResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentCompleteResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentCompleteResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentCompleteResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentCompleteResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentCompleteResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _PaymentCompleteResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentCompleteResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _PaymentCompleteResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentCompleteResponseWrapper implements PaymentCompleteResponseWrapper {
  const _PaymentCompleteResponseWrapper({required this.data});
  factory _PaymentCompleteResponseWrapper.fromJson(Map<String, dynamic> json) => _$PaymentCompleteResponseWrapperFromJson(json);

@override final  PaymentCompleteResponseDto data;

/// Create a copy of PaymentCompleteResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCompleteResponseWrapperCopyWith<_PaymentCompleteResponseWrapper> get copyWith => __$PaymentCompleteResponseWrapperCopyWithImpl<_PaymentCompleteResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentCompleteResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentCompleteResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PaymentCompleteResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PaymentCompleteResponseWrapperCopyWith<$Res> implements $PaymentCompleteResponseWrapperCopyWith<$Res> {
  factory _$PaymentCompleteResponseWrapperCopyWith(_PaymentCompleteResponseWrapper value, $Res Function(_PaymentCompleteResponseWrapper) _then) = __$PaymentCompleteResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 PaymentCompleteResponseDto data
});


@override $PaymentCompleteResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$PaymentCompleteResponseWrapperCopyWithImpl<$Res>
    implements _$PaymentCompleteResponseWrapperCopyWith<$Res> {
  __$PaymentCompleteResponseWrapperCopyWithImpl(this._self, this._then);

  final _PaymentCompleteResponseWrapper _self;
  final $Res Function(_PaymentCompleteResponseWrapper) _then;

/// Create a copy of PaymentCompleteResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_PaymentCompleteResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentCompleteResponseDto,
  ));
}

/// Create a copy of PaymentCompleteResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCompleteResponseDtoCopyWith<$Res> get data {
  
  return $PaymentCompleteResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PaymentCompleteResponseDto {

 int get id; String get paymentCode; int get totalProductAmount; int get totalDeliveryFee; int get totalJejuDeliveryFee; int get amount; PaymentCompleteMethod get paymentMethod; PaymentCompleteStatus get status; List<PaymentOrderDto> get orders; String? get pgTransactionId; String? get receiptUrl; String? get approvalNumber; String? get cardType; String? get cardName; String? get cardNum; int? get cardQuote; bool? get isInterestFree; String? get vbankNumber; String? get vbankName;@NullableLocalDateTimeConverter() DateTime? get vbankExpDate; String? get vbankHolder;@NullableLocalDateTimeConverter() DateTime? get paidAt;@NullableLocalDateTimeConverter() DateTime? get cancelledAt;@LocalDateTimeConverter() DateTime get createdAt;
/// Create a copy of PaymentCompleteResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCompleteResponseDtoCopyWith<PaymentCompleteResponseDto> get copyWith => _$PaymentCompleteResponseDtoCopyWithImpl<PaymentCompleteResponseDto>(this as PaymentCompleteResponseDto, _$identity);

  /// Serializes this PaymentCompleteResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCompleteResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.totalProductAmount, totalProductAmount) || other.totalProductAmount == totalProductAmount)&&(identical(other.totalDeliveryFee, totalDeliveryFee) || other.totalDeliveryFee == totalDeliveryFee)&&(identical(other.totalJejuDeliveryFee, totalJejuDeliveryFee) || other.totalJejuDeliveryFee == totalJejuDeliveryFee)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.pgTransactionId, pgTransactionId) || other.pgTransactionId == pgTransactionId)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.cardName, cardName) || other.cardName == cardName)&&(identical(other.cardNum, cardNum) || other.cardNum == cardNum)&&(identical(other.cardQuote, cardQuote) || other.cardQuote == cardQuote)&&(identical(other.isInterestFree, isInterestFree) || other.isInterestFree == isInterestFree)&&(identical(other.vbankNumber, vbankNumber) || other.vbankNumber == vbankNumber)&&(identical(other.vbankName, vbankName) || other.vbankName == vbankName)&&(identical(other.vbankExpDate, vbankExpDate) || other.vbankExpDate == vbankExpDate)&&(identical(other.vbankHolder, vbankHolder) || other.vbankHolder == vbankHolder)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,paymentCode,totalProductAmount,totalDeliveryFee,totalJejuDeliveryFee,amount,paymentMethod,status,const DeepCollectionEquality().hash(orders),pgTransactionId,receiptUrl,approvalNumber,cardType,cardName,cardNum,cardQuote,isInterestFree,vbankNumber,vbankName,vbankExpDate,vbankHolder,paidAt,cancelledAt,createdAt]);

@override
String toString() {
  return 'PaymentCompleteResponseDto(id: $id, paymentCode: $paymentCode, totalProductAmount: $totalProductAmount, totalDeliveryFee: $totalDeliveryFee, totalJejuDeliveryFee: $totalJejuDeliveryFee, amount: $amount, paymentMethod: $paymentMethod, status: $status, orders: $orders, pgTransactionId: $pgTransactionId, receiptUrl: $receiptUrl, approvalNumber: $approvalNumber, cardType: $cardType, cardName: $cardName, cardNum: $cardNum, cardQuote: $cardQuote, isInterestFree: $isInterestFree, vbankNumber: $vbankNumber, vbankName: $vbankName, vbankExpDate: $vbankExpDate, vbankHolder: $vbankHolder, paidAt: $paidAt, cancelledAt: $cancelledAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PaymentCompleteResponseDtoCopyWith<$Res>  {
  factory $PaymentCompleteResponseDtoCopyWith(PaymentCompleteResponseDto value, $Res Function(PaymentCompleteResponseDto) _then) = _$PaymentCompleteResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, String paymentCode, int totalProductAmount, int totalDeliveryFee, int totalJejuDeliveryFee, int amount, PaymentCompleteMethod paymentMethod, PaymentCompleteStatus status, List<PaymentOrderDto> orders, String? pgTransactionId, String? receiptUrl, String? approvalNumber, String? cardType, String? cardName, String? cardNum, int? cardQuote, bool? isInterestFree, String? vbankNumber, String? vbankName,@NullableLocalDateTimeConverter() DateTime? vbankExpDate, String? vbankHolder,@NullableLocalDateTimeConverter() DateTime? paidAt,@NullableLocalDateTimeConverter() DateTime? cancelledAt,@LocalDateTimeConverter() DateTime createdAt
});




}
/// @nodoc
class _$PaymentCompleteResponseDtoCopyWithImpl<$Res>
    implements $PaymentCompleteResponseDtoCopyWith<$Res> {
  _$PaymentCompleteResponseDtoCopyWithImpl(this._self, this._then);

  final PaymentCompleteResponseDto _self;
  final $Res Function(PaymentCompleteResponseDto) _then;

/// Create a copy of PaymentCompleteResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? paymentCode = null,Object? totalProductAmount = null,Object? totalDeliveryFee = null,Object? totalJejuDeliveryFee = null,Object? amount = null,Object? paymentMethod = null,Object? status = null,Object? orders = null,Object? pgTransactionId = freezed,Object? receiptUrl = freezed,Object? approvalNumber = freezed,Object? cardType = freezed,Object? cardName = freezed,Object? cardNum = freezed,Object? cardQuote = freezed,Object? isInterestFree = freezed,Object? vbankNumber = freezed,Object? vbankName = freezed,Object? vbankExpDate = freezed,Object? vbankHolder = freezed,Object? paidAt = freezed,Object? cancelledAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,totalProductAmount: null == totalProductAmount ? _self.totalProductAmount : totalProductAmount // ignore: cast_nullable_to_non_nullable
as int,totalDeliveryFee: null == totalDeliveryFee ? _self.totalDeliveryFee : totalDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalJejuDeliveryFee: null == totalJejuDeliveryFee ? _self.totalJejuDeliveryFee : totalJejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentCompleteMethod,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentCompleteStatus,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<PaymentOrderDto>,pgTransactionId: freezed == pgTransactionId ? _self.pgTransactionId : pgTransactionId // ignore: cast_nullable_to_non_nullable
as String?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,approvalNumber: freezed == approvalNumber ? _self.approvalNumber : approvalNumber // ignore: cast_nullable_to_non_nullable
as String?,cardType: freezed == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String?,cardName: freezed == cardName ? _self.cardName : cardName // ignore: cast_nullable_to_non_nullable
as String?,cardNum: freezed == cardNum ? _self.cardNum : cardNum // ignore: cast_nullable_to_non_nullable
as String?,cardQuote: freezed == cardQuote ? _self.cardQuote : cardQuote // ignore: cast_nullable_to_non_nullable
as int?,isInterestFree: freezed == isInterestFree ? _self.isInterestFree : isInterestFree // ignore: cast_nullable_to_non_nullable
as bool?,vbankNumber: freezed == vbankNumber ? _self.vbankNumber : vbankNumber // ignore: cast_nullable_to_non_nullable
as String?,vbankName: freezed == vbankName ? _self.vbankName : vbankName // ignore: cast_nullable_to_non_nullable
as String?,vbankExpDate: freezed == vbankExpDate ? _self.vbankExpDate : vbankExpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vbankHolder: freezed == vbankHolder ? _self.vbankHolder : vbankHolder // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentCompleteResponseDto].
extension PaymentCompleteResponseDtoPatterns on PaymentCompleteResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentCompleteResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentCompleteResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentCompleteResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentCompleteResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentCompleteResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentCompleteResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String paymentCode,  int totalProductAmount,  int totalDeliveryFee,  int totalJejuDeliveryFee,  int amount,  PaymentCompleteMethod paymentMethod,  PaymentCompleteStatus status,  List<PaymentOrderDto> orders,  String? pgTransactionId,  String? receiptUrl,  String? approvalNumber,  String? cardType,  String? cardName,  String? cardNum,  int? cardQuote,  bool? isInterestFree,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder, @NullableLocalDateTimeConverter()  DateTime? paidAt, @NullableLocalDateTimeConverter()  DateTime? cancelledAt, @LocalDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentCompleteResponseDto() when $default != null:
return $default(_that.id,_that.paymentCode,_that.totalProductAmount,_that.totalDeliveryFee,_that.totalJejuDeliveryFee,_that.amount,_that.paymentMethod,_that.status,_that.orders,_that.pgTransactionId,_that.receiptUrl,_that.approvalNumber,_that.cardType,_that.cardName,_that.cardNum,_that.cardQuote,_that.isInterestFree,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder,_that.paidAt,_that.cancelledAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String paymentCode,  int totalProductAmount,  int totalDeliveryFee,  int totalJejuDeliveryFee,  int amount,  PaymentCompleteMethod paymentMethod,  PaymentCompleteStatus status,  List<PaymentOrderDto> orders,  String? pgTransactionId,  String? receiptUrl,  String? approvalNumber,  String? cardType,  String? cardName,  String? cardNum,  int? cardQuote,  bool? isInterestFree,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder, @NullableLocalDateTimeConverter()  DateTime? paidAt, @NullableLocalDateTimeConverter()  DateTime? cancelledAt, @LocalDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentCompleteResponseDto():
return $default(_that.id,_that.paymentCode,_that.totalProductAmount,_that.totalDeliveryFee,_that.totalJejuDeliveryFee,_that.amount,_that.paymentMethod,_that.status,_that.orders,_that.pgTransactionId,_that.receiptUrl,_that.approvalNumber,_that.cardType,_that.cardName,_that.cardNum,_that.cardQuote,_that.isInterestFree,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder,_that.paidAt,_that.cancelledAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String paymentCode,  int totalProductAmount,  int totalDeliveryFee,  int totalJejuDeliveryFee,  int amount,  PaymentCompleteMethod paymentMethod,  PaymentCompleteStatus status,  List<PaymentOrderDto> orders,  String? pgTransactionId,  String? receiptUrl,  String? approvalNumber,  String? cardType,  String? cardName,  String? cardNum,  int? cardQuote,  bool? isInterestFree,  String? vbankNumber,  String? vbankName, @NullableLocalDateTimeConverter()  DateTime? vbankExpDate,  String? vbankHolder, @NullableLocalDateTimeConverter()  DateTime? paidAt, @NullableLocalDateTimeConverter()  DateTime? cancelledAt, @LocalDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentCompleteResponseDto() when $default != null:
return $default(_that.id,_that.paymentCode,_that.totalProductAmount,_that.totalDeliveryFee,_that.totalJejuDeliveryFee,_that.amount,_that.paymentMethod,_that.status,_that.orders,_that.pgTransactionId,_that.receiptUrl,_that.approvalNumber,_that.cardType,_that.cardName,_that.cardNum,_that.cardQuote,_that.isInterestFree,_that.vbankNumber,_that.vbankName,_that.vbankExpDate,_that.vbankHolder,_that.paidAt,_that.cancelledAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentCompleteResponseDto implements PaymentCompleteResponseDto {
  const _PaymentCompleteResponseDto({required this.id, required this.paymentCode, required this.totalProductAmount, required this.totalDeliveryFee, required this.totalJejuDeliveryFee, required this.amount, required this.paymentMethod, required this.status, required final  List<PaymentOrderDto> orders, this.pgTransactionId, this.receiptUrl, this.approvalNumber, this.cardType, this.cardName, this.cardNum, this.cardQuote, this.isInterestFree, this.vbankNumber, this.vbankName, @NullableLocalDateTimeConverter() this.vbankExpDate, this.vbankHolder, @NullableLocalDateTimeConverter() this.paidAt, @NullableLocalDateTimeConverter() this.cancelledAt, @LocalDateTimeConverter() required this.createdAt}): _orders = orders;
  factory _PaymentCompleteResponseDto.fromJson(Map<String, dynamic> json) => _$PaymentCompleteResponseDtoFromJson(json);

@override final  int id;
@override final  String paymentCode;
@override final  int totalProductAmount;
@override final  int totalDeliveryFee;
@override final  int totalJejuDeliveryFee;
@override final  int amount;
@override final  PaymentCompleteMethod paymentMethod;
@override final  PaymentCompleteStatus status;
 final  List<PaymentOrderDto> _orders;
@override List<PaymentOrderDto> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

@override final  String? pgTransactionId;
@override final  String? receiptUrl;
@override final  String? approvalNumber;
@override final  String? cardType;
@override final  String? cardName;
@override final  String? cardNum;
@override final  int? cardQuote;
@override final  bool? isInterestFree;
@override final  String? vbankNumber;
@override final  String? vbankName;
@override@NullableLocalDateTimeConverter() final  DateTime? vbankExpDate;
@override final  String? vbankHolder;
@override@NullableLocalDateTimeConverter() final  DateTime? paidAt;
@override@NullableLocalDateTimeConverter() final  DateTime? cancelledAt;
@override@LocalDateTimeConverter() final  DateTime createdAt;

/// Create a copy of PaymentCompleteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCompleteResponseDtoCopyWith<_PaymentCompleteResponseDto> get copyWith => __$PaymentCompleteResponseDtoCopyWithImpl<_PaymentCompleteResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentCompleteResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentCompleteResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.totalProductAmount, totalProductAmount) || other.totalProductAmount == totalProductAmount)&&(identical(other.totalDeliveryFee, totalDeliveryFee) || other.totalDeliveryFee == totalDeliveryFee)&&(identical(other.totalJejuDeliveryFee, totalJejuDeliveryFee) || other.totalJejuDeliveryFee == totalJejuDeliveryFee)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.pgTransactionId, pgTransactionId) || other.pgTransactionId == pgTransactionId)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.cardName, cardName) || other.cardName == cardName)&&(identical(other.cardNum, cardNum) || other.cardNum == cardNum)&&(identical(other.cardQuote, cardQuote) || other.cardQuote == cardQuote)&&(identical(other.isInterestFree, isInterestFree) || other.isInterestFree == isInterestFree)&&(identical(other.vbankNumber, vbankNumber) || other.vbankNumber == vbankNumber)&&(identical(other.vbankName, vbankName) || other.vbankName == vbankName)&&(identical(other.vbankExpDate, vbankExpDate) || other.vbankExpDate == vbankExpDate)&&(identical(other.vbankHolder, vbankHolder) || other.vbankHolder == vbankHolder)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,paymentCode,totalProductAmount,totalDeliveryFee,totalJejuDeliveryFee,amount,paymentMethod,status,const DeepCollectionEquality().hash(_orders),pgTransactionId,receiptUrl,approvalNumber,cardType,cardName,cardNum,cardQuote,isInterestFree,vbankNumber,vbankName,vbankExpDate,vbankHolder,paidAt,cancelledAt,createdAt]);

@override
String toString() {
  return 'PaymentCompleteResponseDto(id: $id, paymentCode: $paymentCode, totalProductAmount: $totalProductAmount, totalDeliveryFee: $totalDeliveryFee, totalJejuDeliveryFee: $totalJejuDeliveryFee, amount: $amount, paymentMethod: $paymentMethod, status: $status, orders: $orders, pgTransactionId: $pgTransactionId, receiptUrl: $receiptUrl, approvalNumber: $approvalNumber, cardType: $cardType, cardName: $cardName, cardNum: $cardNum, cardQuote: $cardQuote, isInterestFree: $isInterestFree, vbankNumber: $vbankNumber, vbankName: $vbankName, vbankExpDate: $vbankExpDate, vbankHolder: $vbankHolder, paidAt: $paidAt, cancelledAt: $cancelledAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentCompleteResponseDtoCopyWith<$Res> implements $PaymentCompleteResponseDtoCopyWith<$Res> {
  factory _$PaymentCompleteResponseDtoCopyWith(_PaymentCompleteResponseDto value, $Res Function(_PaymentCompleteResponseDto) _then) = __$PaymentCompleteResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String paymentCode, int totalProductAmount, int totalDeliveryFee, int totalJejuDeliveryFee, int amount, PaymentCompleteMethod paymentMethod, PaymentCompleteStatus status, List<PaymentOrderDto> orders, String? pgTransactionId, String? receiptUrl, String? approvalNumber, String? cardType, String? cardName, String? cardNum, int? cardQuote, bool? isInterestFree, String? vbankNumber, String? vbankName,@NullableLocalDateTimeConverter() DateTime? vbankExpDate, String? vbankHolder,@NullableLocalDateTimeConverter() DateTime? paidAt,@NullableLocalDateTimeConverter() DateTime? cancelledAt,@LocalDateTimeConverter() DateTime createdAt
});




}
/// @nodoc
class __$PaymentCompleteResponseDtoCopyWithImpl<$Res>
    implements _$PaymentCompleteResponseDtoCopyWith<$Res> {
  __$PaymentCompleteResponseDtoCopyWithImpl(this._self, this._then);

  final _PaymentCompleteResponseDto _self;
  final $Res Function(_PaymentCompleteResponseDto) _then;

/// Create a copy of PaymentCompleteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paymentCode = null,Object? totalProductAmount = null,Object? totalDeliveryFee = null,Object? totalJejuDeliveryFee = null,Object? amount = null,Object? paymentMethod = null,Object? status = null,Object? orders = null,Object? pgTransactionId = freezed,Object? receiptUrl = freezed,Object? approvalNumber = freezed,Object? cardType = freezed,Object? cardName = freezed,Object? cardNum = freezed,Object? cardQuote = freezed,Object? isInterestFree = freezed,Object? vbankNumber = freezed,Object? vbankName = freezed,Object? vbankExpDate = freezed,Object? vbankHolder = freezed,Object? paidAt = freezed,Object? cancelledAt = freezed,Object? createdAt = null,}) {
  return _then(_PaymentCompleteResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,totalProductAmount: null == totalProductAmount ? _self.totalProductAmount : totalProductAmount // ignore: cast_nullable_to_non_nullable
as int,totalDeliveryFee: null == totalDeliveryFee ? _self.totalDeliveryFee : totalDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalJejuDeliveryFee: null == totalJejuDeliveryFee ? _self.totalJejuDeliveryFee : totalJejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentCompleteMethod,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentCompleteStatus,orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<PaymentOrderDto>,pgTransactionId: freezed == pgTransactionId ? _self.pgTransactionId : pgTransactionId // ignore: cast_nullable_to_non_nullable
as String?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,approvalNumber: freezed == approvalNumber ? _self.approvalNumber : approvalNumber // ignore: cast_nullable_to_non_nullable
as String?,cardType: freezed == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String?,cardName: freezed == cardName ? _self.cardName : cardName // ignore: cast_nullable_to_non_nullable
as String?,cardNum: freezed == cardNum ? _self.cardNum : cardNum // ignore: cast_nullable_to_non_nullable
as String?,cardQuote: freezed == cardQuote ? _self.cardQuote : cardQuote // ignore: cast_nullable_to_non_nullable
as int?,isInterestFree: freezed == isInterestFree ? _self.isInterestFree : isInterestFree // ignore: cast_nullable_to_non_nullable
as bool?,vbankNumber: freezed == vbankNumber ? _self.vbankNumber : vbankNumber // ignore: cast_nullable_to_non_nullable
as String?,vbankName: freezed == vbankName ? _self.vbankName : vbankName // ignore: cast_nullable_to_non_nullable
as String?,vbankExpDate: freezed == vbankExpDate ? _self.vbankExpDate : vbankExpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vbankHolder: freezed == vbankHolder ? _self.vbankHolder : vbankHolder // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$PaymentOrderDto {

 int get orderId; String get orderCode; String get status; String? get sellerBusinessName; int get productAmount; int get deliveryFee; int get jejuDeliveryFee; int get totalAmount; int? get shippingLeadTime; String? get shippingCutoffTime; int? get deliveryDays; PaymentDeliveryAddressDto get deliveryAddress; String get deliveryRequest; List<PaymentOrderItemDto> get items; bool get isSameDayShipping; bool get isWeekendShipping;
/// Create a copy of PaymentOrderDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentOrderDtoCopyWith<PaymentOrderDto> get copyWith => _$PaymentOrderDtoCopyWithImpl<PaymentOrderDto>(this as PaymentOrderDto, _$identity);

  /// Serializes this PaymentOrderDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentOrderDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.productAmount, productAmount) || other.productAmount == productAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.isWeekendShipping, isWeekendShipping) || other.isWeekendShipping == isWeekendShipping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,orderCode,status,sellerBusinessName,productAmount,deliveryFee,jejuDeliveryFee,totalAmount,shippingLeadTime,shippingCutoffTime,deliveryDays,deliveryAddress,deliveryRequest,const DeepCollectionEquality().hash(items),isSameDayShipping,isWeekendShipping);

@override
String toString() {
  return 'PaymentOrderDto(orderId: $orderId, orderCode: $orderCode, status: $status, sellerBusinessName: $sellerBusinessName, productAmount: $productAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, totalAmount: $totalAmount, shippingLeadTime: $shippingLeadTime, shippingCutoffTime: $shippingCutoffTime, deliveryDays: $deliveryDays, deliveryAddress: $deliveryAddress, deliveryRequest: $deliveryRequest, items: $items, isSameDayShipping: $isSameDayShipping, isWeekendShipping: $isWeekendShipping)';
}


}

/// @nodoc
abstract mixin class $PaymentOrderDtoCopyWith<$Res>  {
  factory $PaymentOrderDtoCopyWith(PaymentOrderDto value, $Res Function(PaymentOrderDto) _then) = _$PaymentOrderDtoCopyWithImpl;
@useResult
$Res call({
 int orderId, String orderCode, String status, String? sellerBusinessName, int productAmount, int deliveryFee, int jejuDeliveryFee, int totalAmount, int? shippingLeadTime, String? shippingCutoffTime, int? deliveryDays, PaymentDeliveryAddressDto deliveryAddress, String deliveryRequest, List<PaymentOrderItemDto> items, bool isSameDayShipping, bool isWeekendShipping
});


$PaymentDeliveryAddressDtoCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class _$PaymentOrderDtoCopyWithImpl<$Res>
    implements $PaymentOrderDtoCopyWith<$Res> {
  _$PaymentOrderDtoCopyWithImpl(this._self, this._then);

  final PaymentOrderDto _self;
  final $Res Function(PaymentOrderDto) _then;

/// Create a copy of PaymentOrderDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? orderCode = null,Object? status = null,Object? sellerBusinessName = freezed,Object? productAmount = null,Object? deliveryFee = null,Object? jejuDeliveryFee = null,Object? totalAmount = null,Object? shippingLeadTime = freezed,Object? shippingCutoffTime = freezed,Object? deliveryDays = freezed,Object? deliveryAddress = null,Object? deliveryRequest = null,Object? items = null,Object? isSameDayShipping = null,Object? isWeekendShipping = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,sellerBusinessName: freezed == sellerBusinessName ? _self.sellerBusinessName : sellerBusinessName // ignore: cast_nullable_to_non_nullable
as String?,productAmount: null == productAmount ? _self.productAmount : productAmount // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,jejuDeliveryFee: null == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,shippingLeadTime: freezed == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int?,shippingCutoffTime: freezed == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String?,deliveryDays: freezed == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int?,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as PaymentDeliveryAddressDto,deliveryRequest: null == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PaymentOrderItemDto>,isSameDayShipping: null == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool,isWeekendShipping: null == isWeekendShipping ? _self.isWeekendShipping : isWeekendShipping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PaymentOrderDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDeliveryAddressDtoCopyWith<$Res> get deliveryAddress {
  
  return $PaymentDeliveryAddressDtoCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentOrderDto].
extension PaymentOrderDtoPatterns on PaymentOrderDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentOrderDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentOrderDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentOrderDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentOrderDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentOrderDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentOrderDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int orderId,  String orderCode,  String status,  String? sellerBusinessName,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  int? shippingLeadTime,  String? shippingCutoffTime,  int? deliveryDays,  PaymentDeliveryAddressDto deliveryAddress,  String deliveryRequest,  List<PaymentOrderItemDto> items,  bool isSameDayShipping,  bool isWeekendShipping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentOrderDto() when $default != null:
return $default(_that.orderId,_that.orderCode,_that.status,_that.sellerBusinessName,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.shippingLeadTime,_that.shippingCutoffTime,_that.deliveryDays,_that.deliveryAddress,_that.deliveryRequest,_that.items,_that.isSameDayShipping,_that.isWeekendShipping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int orderId,  String orderCode,  String status,  String? sellerBusinessName,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  int? shippingLeadTime,  String? shippingCutoffTime,  int? deliveryDays,  PaymentDeliveryAddressDto deliveryAddress,  String deliveryRequest,  List<PaymentOrderItemDto> items,  bool isSameDayShipping,  bool isWeekendShipping)  $default,) {final _that = this;
switch (_that) {
case _PaymentOrderDto():
return $default(_that.orderId,_that.orderCode,_that.status,_that.sellerBusinessName,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.shippingLeadTime,_that.shippingCutoffTime,_that.deliveryDays,_that.deliveryAddress,_that.deliveryRequest,_that.items,_that.isSameDayShipping,_that.isWeekendShipping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int orderId,  String orderCode,  String status,  String? sellerBusinessName,  int productAmount,  int deliveryFee,  int jejuDeliveryFee,  int totalAmount,  int? shippingLeadTime,  String? shippingCutoffTime,  int? deliveryDays,  PaymentDeliveryAddressDto deliveryAddress,  String deliveryRequest,  List<PaymentOrderItemDto> items,  bool isSameDayShipping,  bool isWeekendShipping)?  $default,) {final _that = this;
switch (_that) {
case _PaymentOrderDto() when $default != null:
return $default(_that.orderId,_that.orderCode,_that.status,_that.sellerBusinessName,_that.productAmount,_that.deliveryFee,_that.jejuDeliveryFee,_that.totalAmount,_that.shippingLeadTime,_that.shippingCutoffTime,_that.deliveryDays,_that.deliveryAddress,_that.deliveryRequest,_that.items,_that.isSameDayShipping,_that.isWeekendShipping);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentOrderDto implements PaymentOrderDto {
  const _PaymentOrderDto({required this.orderId, required this.orderCode, required this.status, this.sellerBusinessName, required this.productAmount, required this.deliveryFee, required this.jejuDeliveryFee, required this.totalAmount, this.shippingLeadTime, this.shippingCutoffTime, this.deliveryDays, required this.deliveryAddress, required this.deliveryRequest, required final  List<PaymentOrderItemDto> items, required this.isSameDayShipping, required this.isWeekendShipping}): _items = items;
  factory _PaymentOrderDto.fromJson(Map<String, dynamic> json) => _$PaymentOrderDtoFromJson(json);

@override final  int orderId;
@override final  String orderCode;
@override final  String status;
@override final  String? sellerBusinessName;
@override final  int productAmount;
@override final  int deliveryFee;
@override final  int jejuDeliveryFee;
@override final  int totalAmount;
@override final  int? shippingLeadTime;
@override final  String? shippingCutoffTime;
@override final  int? deliveryDays;
@override final  PaymentDeliveryAddressDto deliveryAddress;
@override final  String deliveryRequest;
 final  List<PaymentOrderItemDto> _items;
@override List<PaymentOrderItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  bool isSameDayShipping;
@override final  bool isWeekendShipping;

/// Create a copy of PaymentOrderDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentOrderDtoCopyWith<_PaymentOrderDto> get copyWith => __$PaymentOrderDtoCopyWithImpl<_PaymentOrderDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentOrderDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentOrderDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.sellerBusinessName, sellerBusinessName) || other.sellerBusinessName == sellerBusinessName)&&(identical(other.productAmount, productAmount) || other.productAmount == productAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.jejuDeliveryFee, jejuDeliveryFee) || other.jejuDeliveryFee == jejuDeliveryFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.isWeekendShipping, isWeekendShipping) || other.isWeekendShipping == isWeekendShipping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,orderCode,status,sellerBusinessName,productAmount,deliveryFee,jejuDeliveryFee,totalAmount,shippingLeadTime,shippingCutoffTime,deliveryDays,deliveryAddress,deliveryRequest,const DeepCollectionEquality().hash(_items),isSameDayShipping,isWeekendShipping);

@override
String toString() {
  return 'PaymentOrderDto(orderId: $orderId, orderCode: $orderCode, status: $status, sellerBusinessName: $sellerBusinessName, productAmount: $productAmount, deliveryFee: $deliveryFee, jejuDeliveryFee: $jejuDeliveryFee, totalAmount: $totalAmount, shippingLeadTime: $shippingLeadTime, shippingCutoffTime: $shippingCutoffTime, deliveryDays: $deliveryDays, deliveryAddress: $deliveryAddress, deliveryRequest: $deliveryRequest, items: $items, isSameDayShipping: $isSameDayShipping, isWeekendShipping: $isWeekendShipping)';
}


}

/// @nodoc
abstract mixin class _$PaymentOrderDtoCopyWith<$Res> implements $PaymentOrderDtoCopyWith<$Res> {
  factory _$PaymentOrderDtoCopyWith(_PaymentOrderDto value, $Res Function(_PaymentOrderDto) _then) = __$PaymentOrderDtoCopyWithImpl;
@override @useResult
$Res call({
 int orderId, String orderCode, String status, String? sellerBusinessName, int productAmount, int deliveryFee, int jejuDeliveryFee, int totalAmount, int? shippingLeadTime, String? shippingCutoffTime, int? deliveryDays, PaymentDeliveryAddressDto deliveryAddress, String deliveryRequest, List<PaymentOrderItemDto> items, bool isSameDayShipping, bool isWeekendShipping
});


@override $PaymentDeliveryAddressDtoCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class __$PaymentOrderDtoCopyWithImpl<$Res>
    implements _$PaymentOrderDtoCopyWith<$Res> {
  __$PaymentOrderDtoCopyWithImpl(this._self, this._then);

  final _PaymentOrderDto _self;
  final $Res Function(_PaymentOrderDto) _then;

/// Create a copy of PaymentOrderDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? orderCode = null,Object? status = null,Object? sellerBusinessName = freezed,Object? productAmount = null,Object? deliveryFee = null,Object? jejuDeliveryFee = null,Object? totalAmount = null,Object? shippingLeadTime = freezed,Object? shippingCutoffTime = freezed,Object? deliveryDays = freezed,Object? deliveryAddress = null,Object? deliveryRequest = null,Object? items = null,Object? isSameDayShipping = null,Object? isWeekendShipping = null,}) {
  return _then(_PaymentOrderDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,sellerBusinessName: freezed == sellerBusinessName ? _self.sellerBusinessName : sellerBusinessName // ignore: cast_nullable_to_non_nullable
as String?,productAmount: null == productAmount ? _self.productAmount : productAmount // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,jejuDeliveryFee: null == jejuDeliveryFee ? _self.jejuDeliveryFee : jejuDeliveryFee // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,shippingLeadTime: freezed == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int?,shippingCutoffTime: freezed == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String?,deliveryDays: freezed == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int?,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as PaymentDeliveryAddressDto,deliveryRequest: null == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PaymentOrderItemDto>,isSameDayShipping: null == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool,isWeekendShipping: null == isWeekendShipping ? _self.isWeekendShipping : isWeekendShipping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PaymentOrderDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDeliveryAddressDtoCopyWith<$Res> get deliveryAddress {
  
  return $PaymentDeliveryAddressDtoCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// @nodoc
mixin _$PaymentDeliveryAddressDto {

 int get deliveryAddressId; String get addressName; String get recipientName; String get zipCode; String get address; String get addressDetail; String get phone;
/// Create a copy of PaymentDeliveryAddressDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDeliveryAddressDtoCopyWith<PaymentDeliveryAddressDto> get copyWith => _$PaymentDeliveryAddressDtoCopyWithImpl<PaymentDeliveryAddressDto>(this as PaymentDeliveryAddressDto, _$identity);

  /// Serializes this PaymentDeliveryAddressDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDeliveryAddressDto&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryAddressId,addressName,recipientName,zipCode,address,addressDetail,phone);

@override
String toString() {
  return 'PaymentDeliveryAddressDto(deliveryAddressId: $deliveryAddressId, addressName: $addressName, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PaymentDeliveryAddressDtoCopyWith<$Res>  {
  factory $PaymentDeliveryAddressDtoCopyWith(PaymentDeliveryAddressDto value, $Res Function(PaymentDeliveryAddressDto) _then) = _$PaymentDeliveryAddressDtoCopyWithImpl;
@useResult
$Res call({
 int deliveryAddressId, String addressName, String recipientName, String zipCode, String address, String addressDetail, String phone
});




}
/// @nodoc
class _$PaymentDeliveryAddressDtoCopyWithImpl<$Res>
    implements $PaymentDeliveryAddressDtoCopyWith<$Res> {
  _$PaymentDeliveryAddressDtoCopyWithImpl(this._self, this._then);

  final PaymentDeliveryAddressDto _self;
  final $Res Function(PaymentDeliveryAddressDto) _then;

/// Create a copy of PaymentDeliveryAddressDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deliveryAddressId = null,Object? addressName = null,Object? recipientName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? phone = null,}) {
  return _then(_self.copyWith(
deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,addressName: null == addressName ? _self.addressName : addressName // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,addressDetail: null == addressDetail ? _self.addressDetail : addressDetail // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentDeliveryAddressDto].
extension PaymentDeliveryAddressDtoPatterns on PaymentDeliveryAddressDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDeliveryAddressDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDeliveryAddressDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDeliveryAddressDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDeliveryAddressDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDeliveryAddressDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDeliveryAddressDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int deliveryAddressId,  String addressName,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDeliveryAddressDto() when $default != null:
return $default(_that.deliveryAddressId,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int deliveryAddressId,  String addressName,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone)  $default,) {final _that = this;
switch (_that) {
case _PaymentDeliveryAddressDto():
return $default(_that.deliveryAddressId,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int deliveryAddressId,  String addressName,  String recipientName,  String zipCode,  String address,  String addressDetail,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDeliveryAddressDto() when $default != null:
return $default(_that.deliveryAddressId,_that.addressName,_that.recipientName,_that.zipCode,_that.address,_that.addressDetail,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDeliveryAddressDto implements PaymentDeliveryAddressDto {
  const _PaymentDeliveryAddressDto({required this.deliveryAddressId, required this.addressName, required this.recipientName, required this.zipCode, required this.address, required this.addressDetail, required this.phone});
  factory _PaymentDeliveryAddressDto.fromJson(Map<String, dynamic> json) => _$PaymentDeliveryAddressDtoFromJson(json);

@override final  int deliveryAddressId;
@override final  String addressName;
@override final  String recipientName;
@override final  String zipCode;
@override final  String address;
@override final  String addressDetail;
@override final  String phone;

/// Create a copy of PaymentDeliveryAddressDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDeliveryAddressDtoCopyWith<_PaymentDeliveryAddressDto> get copyWith => __$PaymentDeliveryAddressDtoCopyWithImpl<_PaymentDeliveryAddressDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDeliveryAddressDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDeliveryAddressDto&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.addressDetail, addressDetail) || other.addressDetail == addressDetail)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryAddressId,addressName,recipientName,zipCode,address,addressDetail,phone);

@override
String toString() {
  return 'PaymentDeliveryAddressDto(deliveryAddressId: $deliveryAddressId, addressName: $addressName, recipientName: $recipientName, zipCode: $zipCode, address: $address, addressDetail: $addressDetail, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PaymentDeliveryAddressDtoCopyWith<$Res> implements $PaymentDeliveryAddressDtoCopyWith<$Res> {
  factory _$PaymentDeliveryAddressDtoCopyWith(_PaymentDeliveryAddressDto value, $Res Function(_PaymentDeliveryAddressDto) _then) = __$PaymentDeliveryAddressDtoCopyWithImpl;
@override @useResult
$Res call({
 int deliveryAddressId, String addressName, String recipientName, String zipCode, String address, String addressDetail, String phone
});




}
/// @nodoc
class __$PaymentDeliveryAddressDtoCopyWithImpl<$Res>
    implements _$PaymentDeliveryAddressDtoCopyWith<$Res> {
  __$PaymentDeliveryAddressDtoCopyWithImpl(this._self, this._then);

  final _PaymentDeliveryAddressDto _self;
  final $Res Function(_PaymentDeliveryAddressDto) _then;

/// Create a copy of PaymentDeliveryAddressDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deliveryAddressId = null,Object? addressName = null,Object? recipientName = null,Object? zipCode = null,Object? address = null,Object? addressDetail = null,Object? phone = null,}) {
  return _then(_PaymentDeliveryAddressDto(
deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,addressName: null == addressName ? _self.addressName : addressName // ignore: cast_nullable_to_non_nullable
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
mixin _$PaymentOrderItemDto {

 int get productId; String get productName; String get optionName; int get unitPrice; int get quantity; int get totalPrice; String? get thumbnailUrl;
/// Create a copy of PaymentOrderItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentOrderItemDtoCopyWith<PaymentOrderItemDto> get copyWith => _$PaymentOrderItemDtoCopyWithImpl<PaymentOrderItemDto>(this as PaymentOrderItemDto, _$identity);

  /// Serializes this PaymentOrderItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentOrderItemDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productName,optionName,unitPrice,quantity,totalPrice,thumbnailUrl);

@override
String toString() {
  return 'PaymentOrderItemDto(productId: $productId, productName: $productName, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $PaymentOrderItemDtoCopyWith<$Res>  {
  factory $PaymentOrderItemDtoCopyWith(PaymentOrderItemDto value, $Res Function(PaymentOrderItemDto) _then) = _$PaymentOrderItemDtoCopyWithImpl;
@useResult
$Res call({
 int productId, String productName, String optionName, int unitPrice, int quantity, int totalPrice, String? thumbnailUrl
});




}
/// @nodoc
class _$PaymentOrderItemDtoCopyWithImpl<$Res>
    implements $PaymentOrderItemDtoCopyWith<$Res> {
  _$PaymentOrderItemDtoCopyWithImpl(this._self, this._then);

  final PaymentOrderItemDto _self;
  final $Res Function(PaymentOrderItemDto) _then;

/// Create a copy of PaymentOrderItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? productName = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? thumbnailUrl = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentOrderItemDto].
extension PaymentOrderItemDtoPatterns on PaymentOrderItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentOrderItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentOrderItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentOrderItemDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentOrderItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentOrderItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentOrderItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productId,  String productName,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  String? thumbnailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentOrderItemDto() when $default != null:
return $default(_that.productId,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productId,  String productName,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  String? thumbnailUrl)  $default,) {final _that = this;
switch (_that) {
case _PaymentOrderItemDto():
return $default(_that.productId,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productId,  String productName,  String optionName,  int unitPrice,  int quantity,  int totalPrice,  String? thumbnailUrl)?  $default,) {final _that = this;
switch (_that) {
case _PaymentOrderItemDto() when $default != null:
return $default(_that.productId,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.thumbnailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentOrderItemDto implements PaymentOrderItemDto {
  const _PaymentOrderItemDto({required this.productId, required this.productName, required this.optionName, required this.unitPrice, required this.quantity, required this.totalPrice, this.thumbnailUrl});
  factory _PaymentOrderItemDto.fromJson(Map<String, dynamic> json) => _$PaymentOrderItemDtoFromJson(json);

@override final  int productId;
@override final  String productName;
@override final  String optionName;
@override final  int unitPrice;
@override final  int quantity;
@override final  int totalPrice;
@override final  String? thumbnailUrl;

/// Create a copy of PaymentOrderItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentOrderItemDtoCopyWith<_PaymentOrderItemDto> get copyWith => __$PaymentOrderItemDtoCopyWithImpl<_PaymentOrderItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentOrderItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentOrderItemDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productName,optionName,unitPrice,quantity,totalPrice,thumbnailUrl);

@override
String toString() {
  return 'PaymentOrderItemDto(productId: $productId, productName: $productName, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$PaymentOrderItemDtoCopyWith<$Res> implements $PaymentOrderItemDtoCopyWith<$Res> {
  factory _$PaymentOrderItemDtoCopyWith(_PaymentOrderItemDto value, $Res Function(_PaymentOrderItemDto) _then) = __$PaymentOrderItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int productId, String productName, String optionName, int unitPrice, int quantity, int totalPrice, String? thumbnailUrl
});




}
/// @nodoc
class __$PaymentOrderItemDtoCopyWithImpl<$Res>
    implements _$PaymentOrderItemDtoCopyWith<$Res> {
  __$PaymentOrderItemDtoCopyWithImpl(this._self, this._then);

  final _PaymentOrderItemDto _self;
  final $Res Function(_PaymentOrderItemDto) _then;

/// Create a copy of PaymentOrderItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productName = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? thumbnailUrl = freezed,}) {
  return _then(_PaymentOrderItemDto(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
