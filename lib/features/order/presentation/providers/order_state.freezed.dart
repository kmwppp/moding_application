// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderState {

 bool get isLoading;// 배송 요청 사항 리스트
 List<DeliveryRequestType> get deliveryRequestList;// 배송 요청 사항
 DeliveryRequestType get selectedRequest;// 배송 요청 사항 기타
 String get deliveryRequestText;// 결제 수단
 PaymentsMethod get paymentMethod;// 간편 결제 수단
 EasyPaymentsMethod get easyPaymentMethod; OrderResponseDto? get orderInfo; int get tick;/// 배송지 리스트
 bool get addressListLoading; AddressListResponse? get addressList;/// 배송지 수정 선택된 배송지 정보
 AddressDto? get selectedAddress; bool get lastAgreement;
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStateCopyWith<OrderState> get copyWith => _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.deliveryRequestList, deliveryRequestList)&&(identical(other.selectedRequest, selectedRequest) || other.selectedRequest == selectedRequest)&&(identical(other.deliveryRequestText, deliveryRequestText) || other.deliveryRequestText == deliveryRequestText)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.easyPaymentMethod, easyPaymentMethod) || other.easyPaymentMethod == easyPaymentMethod)&&(identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo)&&(identical(other.tick, tick) || other.tick == tick)&&(identical(other.addressListLoading, addressListLoading) || other.addressListLoading == addressListLoading)&&(identical(other.addressList, addressList) || other.addressList == addressList)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&(identical(other.lastAgreement, lastAgreement) || other.lastAgreement == lastAgreement));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(deliveryRequestList),selectedRequest,deliveryRequestText,paymentMethod,easyPaymentMethod,orderInfo,tick,addressListLoading,addressList,selectedAddress,lastAgreement);

@override
String toString() {
  return 'OrderState(isLoading: $isLoading, deliveryRequestList: $deliveryRequestList, selectedRequest: $selectedRequest, deliveryRequestText: $deliveryRequestText, paymentMethod: $paymentMethod, easyPaymentMethod: $easyPaymentMethod, orderInfo: $orderInfo, tick: $tick, addressListLoading: $addressListLoading, addressList: $addressList, selectedAddress: $selectedAddress, lastAgreement: $lastAgreement)';
}


}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res>  {
  factory $OrderStateCopyWith(OrderState value, $Res Function(OrderState) _then) = _$OrderStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<DeliveryRequestType> deliveryRequestList, DeliveryRequestType selectedRequest, String deliveryRequestText, PaymentsMethod paymentMethod, EasyPaymentsMethod easyPaymentMethod, OrderResponseDto? orderInfo, int tick, bool addressListLoading, AddressListResponse? addressList, AddressDto? selectedAddress, bool lastAgreement
});


$OrderResponseDtoCopyWith<$Res>? get orderInfo;$AddressListResponseCopyWith<$Res>? get addressList;$AddressDtoCopyWith<$Res>? get selectedAddress;

}
/// @nodoc
class _$OrderStateCopyWithImpl<$Res>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? deliveryRequestList = null,Object? selectedRequest = null,Object? deliveryRequestText = null,Object? paymentMethod = null,Object? easyPaymentMethod = null,Object? orderInfo = freezed,Object? tick = null,Object? addressListLoading = null,Object? addressList = freezed,Object? selectedAddress = freezed,Object? lastAgreement = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,deliveryRequestList: null == deliveryRequestList ? _self.deliveryRequestList : deliveryRequestList // ignore: cast_nullable_to_non_nullable
as List<DeliveryRequestType>,selectedRequest: null == selectedRequest ? _self.selectedRequest : selectedRequest // ignore: cast_nullable_to_non_nullable
as DeliveryRequestType,deliveryRequestText: null == deliveryRequestText ? _self.deliveryRequestText : deliveryRequestText // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentsMethod,easyPaymentMethod: null == easyPaymentMethod ? _self.easyPaymentMethod : easyPaymentMethod // ignore: cast_nullable_to_non_nullable
as EasyPaymentsMethod,orderInfo: freezed == orderInfo ? _self.orderInfo : orderInfo // ignore: cast_nullable_to_non_nullable
as OrderResponseDto?,tick: null == tick ? _self.tick : tick // ignore: cast_nullable_to_non_nullable
as int,addressListLoading: null == addressListLoading ? _self.addressListLoading : addressListLoading // ignore: cast_nullable_to_non_nullable
as bool,addressList: freezed == addressList ? _self.addressList : addressList // ignore: cast_nullable_to_non_nullable
as AddressListResponse?,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressDto?,lastAgreement: null == lastAgreement ? _self.lastAgreement : lastAgreement // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderResponseDtoCopyWith<$Res>? get orderInfo {
    if (_self.orderInfo == null) {
    return null;
  }

  return $OrderResponseDtoCopyWith<$Res>(_self.orderInfo!, (value) {
    return _then(_self.copyWith(orderInfo: value));
  });
}/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressListResponseCopyWith<$Res>? get addressList {
    if (_self.addressList == null) {
    return null;
  }

  return $AddressListResponseCopyWith<$Res>(_self.addressList!, (value) {
    return _then(_self.copyWith(addressList: value));
  });
}/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
    return null;
  }

  return $AddressDtoCopyWith<$Res>(_self.selectedAddress!, (value) {
    return _then(_self.copyWith(selectedAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns on OrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderState value)  $default,){
final _that = this;
switch (_that) {
case _OrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText,  PaymentsMethod paymentMethod,  EasyPaymentsMethod easyPaymentMethod,  OrderResponseDto? orderInfo,  int tick,  bool addressListLoading,  AddressListResponse? addressList,  AddressDto? selectedAddress,  bool lastAgreement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.isLoading,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText,_that.paymentMethod,_that.easyPaymentMethod,_that.orderInfo,_that.tick,_that.addressListLoading,_that.addressList,_that.selectedAddress,_that.lastAgreement);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText,  PaymentsMethod paymentMethod,  EasyPaymentsMethod easyPaymentMethod,  OrderResponseDto? orderInfo,  int tick,  bool addressListLoading,  AddressListResponse? addressList,  AddressDto? selectedAddress,  bool lastAgreement)  $default,) {final _that = this;
switch (_that) {
case _OrderState():
return $default(_that.isLoading,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText,_that.paymentMethod,_that.easyPaymentMethod,_that.orderInfo,_that.tick,_that.addressListLoading,_that.addressList,_that.selectedAddress,_that.lastAgreement);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText,  PaymentsMethod paymentMethod,  EasyPaymentsMethod easyPaymentMethod,  OrderResponseDto? orderInfo,  int tick,  bool addressListLoading,  AddressListResponse? addressList,  AddressDto? selectedAddress,  bool lastAgreement)?  $default,) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.isLoading,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText,_that.paymentMethod,_that.easyPaymentMethod,_that.orderInfo,_that.tick,_that.addressListLoading,_that.addressList,_that.selectedAddress,_that.lastAgreement);case _:
  return null;

}
}

}

/// @nodoc


class _OrderState extends OrderState {
  const _OrderState({required this.isLoading, required final  List<DeliveryRequestType> deliveryRequestList, required this.selectedRequest, required this.deliveryRequestText, required this.paymentMethod, required this.easyPaymentMethod, required this.orderInfo, this.tick = 0, required this.addressListLoading, required this.addressList, required this.selectedAddress, required this.lastAgreement}): _deliveryRequestList = deliveryRequestList,super._();
  

@override final  bool isLoading;
// 배송 요청 사항 리스트
 final  List<DeliveryRequestType> _deliveryRequestList;
// 배송 요청 사항 리스트
@override List<DeliveryRequestType> get deliveryRequestList {
  if (_deliveryRequestList is EqualUnmodifiableListView) return _deliveryRequestList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryRequestList);
}

// 배송 요청 사항
@override final  DeliveryRequestType selectedRequest;
// 배송 요청 사항 기타
@override final  String deliveryRequestText;
// 결제 수단
@override final  PaymentsMethod paymentMethod;
// 간편 결제 수단
@override final  EasyPaymentsMethod easyPaymentMethod;
@override final  OrderResponseDto? orderInfo;
@override@JsonKey() final  int tick;
/// 배송지 리스트
@override final  bool addressListLoading;
@override final  AddressListResponse? addressList;
/// 배송지 수정 선택된 배송지 정보
@override final  AddressDto? selectedAddress;
@override final  bool lastAgreement;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStateCopyWith<_OrderState> get copyWith => __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._deliveryRequestList, _deliveryRequestList)&&(identical(other.selectedRequest, selectedRequest) || other.selectedRequest == selectedRequest)&&(identical(other.deliveryRequestText, deliveryRequestText) || other.deliveryRequestText == deliveryRequestText)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.easyPaymentMethod, easyPaymentMethod) || other.easyPaymentMethod == easyPaymentMethod)&&(identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo)&&(identical(other.tick, tick) || other.tick == tick)&&(identical(other.addressListLoading, addressListLoading) || other.addressListLoading == addressListLoading)&&(identical(other.addressList, addressList) || other.addressList == addressList)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&(identical(other.lastAgreement, lastAgreement) || other.lastAgreement == lastAgreement));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_deliveryRequestList),selectedRequest,deliveryRequestText,paymentMethod,easyPaymentMethod,orderInfo,tick,addressListLoading,addressList,selectedAddress,lastAgreement);

@override
String toString() {
  return 'OrderState(isLoading: $isLoading, deliveryRequestList: $deliveryRequestList, selectedRequest: $selectedRequest, deliveryRequestText: $deliveryRequestText, paymentMethod: $paymentMethod, easyPaymentMethod: $easyPaymentMethod, orderInfo: $orderInfo, tick: $tick, addressListLoading: $addressListLoading, addressList: $addressList, selectedAddress: $selectedAddress, lastAgreement: $lastAgreement)';
}


}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(_OrderState value, $Res Function(_OrderState) _then) = __$OrderStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<DeliveryRequestType> deliveryRequestList, DeliveryRequestType selectedRequest, String deliveryRequestText, PaymentsMethod paymentMethod, EasyPaymentsMethod easyPaymentMethod, OrderResponseDto? orderInfo, int tick, bool addressListLoading, AddressListResponse? addressList, AddressDto? selectedAddress, bool lastAgreement
});


@override $OrderResponseDtoCopyWith<$Res>? get orderInfo;@override $AddressListResponseCopyWith<$Res>? get addressList;@override $AddressDtoCopyWith<$Res>? get selectedAddress;

}
/// @nodoc
class __$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? deliveryRequestList = null,Object? selectedRequest = null,Object? deliveryRequestText = null,Object? paymentMethod = null,Object? easyPaymentMethod = null,Object? orderInfo = freezed,Object? tick = null,Object? addressListLoading = null,Object? addressList = freezed,Object? selectedAddress = freezed,Object? lastAgreement = null,}) {
  return _then(_OrderState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,deliveryRequestList: null == deliveryRequestList ? _self._deliveryRequestList : deliveryRequestList // ignore: cast_nullable_to_non_nullable
as List<DeliveryRequestType>,selectedRequest: null == selectedRequest ? _self.selectedRequest : selectedRequest // ignore: cast_nullable_to_non_nullable
as DeliveryRequestType,deliveryRequestText: null == deliveryRequestText ? _self.deliveryRequestText : deliveryRequestText // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentsMethod,easyPaymentMethod: null == easyPaymentMethod ? _self.easyPaymentMethod : easyPaymentMethod // ignore: cast_nullable_to_non_nullable
as EasyPaymentsMethod,orderInfo: freezed == orderInfo ? _self.orderInfo : orderInfo // ignore: cast_nullable_to_non_nullable
as OrderResponseDto?,tick: null == tick ? _self.tick : tick // ignore: cast_nullable_to_non_nullable
as int,addressListLoading: null == addressListLoading ? _self.addressListLoading : addressListLoading // ignore: cast_nullable_to_non_nullable
as bool,addressList: freezed == addressList ? _self.addressList : addressList // ignore: cast_nullable_to_non_nullable
as AddressListResponse?,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressDto?,lastAgreement: null == lastAgreement ? _self.lastAgreement : lastAgreement // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderResponseDtoCopyWith<$Res>? get orderInfo {
    if (_self.orderInfo == null) {
    return null;
  }

  return $OrderResponseDtoCopyWith<$Res>(_self.orderInfo!, (value) {
    return _then(_self.copyWith(orderInfo: value));
  });
}/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressListResponseCopyWith<$Res>? get addressList {
    if (_self.addressList == null) {
    return null;
  }

  return $AddressListResponseCopyWith<$Res>(_self.addressList!, (value) {
    return _then(_self.copyWith(addressList: value));
  });
}/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
    return null;
  }

  return $AddressDtoCopyWith<$Res>(_self.selectedAddress!, (value) {
    return _then(_self.copyWith(selectedAddress: value));
  });
}
}

// dart format on
