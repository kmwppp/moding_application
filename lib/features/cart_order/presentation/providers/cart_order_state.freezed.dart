// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartOrderState {

 bool get isLoading; CartOrderResponseDto? get cartOrderInfo; List<DeliveryRequestType> get deliveryRequestList;// 배송 요청 사항
 DeliveryRequestType get selectedRequest;// 배송 요청 사항 기타
 String get deliveryRequestText; int get tick;// 결제 수단
 PaymentsMethod get paymentMethod;// 간편 결제 수단
 EasyPaymentsMethod get easyPaymentMethod;/// 배송지 리스트
 bool get addressListLoading; AddressListResponse? get addressList;/// 배송지 수정 선택된 배송지 정보
 AddressDto? get selectedAddress;
/// Create a copy of CartOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartOrderStateCopyWith<CartOrderState> get copyWith => _$CartOrderStateCopyWithImpl<CartOrderState>(this as CartOrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartOrderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.cartOrderInfo, cartOrderInfo) || other.cartOrderInfo == cartOrderInfo)&&const DeepCollectionEquality().equals(other.deliveryRequestList, deliveryRequestList)&&(identical(other.selectedRequest, selectedRequest) || other.selectedRequest == selectedRequest)&&(identical(other.deliveryRequestText, deliveryRequestText) || other.deliveryRequestText == deliveryRequestText)&&(identical(other.tick, tick) || other.tick == tick)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.easyPaymentMethod, easyPaymentMethod) || other.easyPaymentMethod == easyPaymentMethod)&&(identical(other.addressListLoading, addressListLoading) || other.addressListLoading == addressListLoading)&&(identical(other.addressList, addressList) || other.addressList == addressList)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,cartOrderInfo,const DeepCollectionEquality().hash(deliveryRequestList),selectedRequest,deliveryRequestText,tick,paymentMethod,easyPaymentMethod,addressListLoading,addressList,selectedAddress);

@override
String toString() {
  return 'CartOrderState(isLoading: $isLoading, cartOrderInfo: $cartOrderInfo, deliveryRequestList: $deliveryRequestList, selectedRequest: $selectedRequest, deliveryRequestText: $deliveryRequestText, tick: $tick, paymentMethod: $paymentMethod, easyPaymentMethod: $easyPaymentMethod, addressListLoading: $addressListLoading, addressList: $addressList, selectedAddress: $selectedAddress)';
}


}

/// @nodoc
abstract mixin class $CartOrderStateCopyWith<$Res>  {
  factory $CartOrderStateCopyWith(CartOrderState value, $Res Function(CartOrderState) _then) = _$CartOrderStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, CartOrderResponseDto? cartOrderInfo, List<DeliveryRequestType> deliveryRequestList, DeliveryRequestType selectedRequest, String deliveryRequestText, int tick, PaymentsMethod paymentMethod, EasyPaymentsMethod easyPaymentMethod, bool addressListLoading, AddressListResponse? addressList, AddressDto? selectedAddress
});


$CartOrderResponseDtoCopyWith<$Res>? get cartOrderInfo;$AddressListResponseCopyWith<$Res>? get addressList;$AddressDtoCopyWith<$Res>? get selectedAddress;

}
/// @nodoc
class _$CartOrderStateCopyWithImpl<$Res>
    implements $CartOrderStateCopyWith<$Res> {
  _$CartOrderStateCopyWithImpl(this._self, this._then);

  final CartOrderState _self;
  final $Res Function(CartOrderState) _then;

/// Create a copy of CartOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? cartOrderInfo = freezed,Object? deliveryRequestList = null,Object? selectedRequest = null,Object? deliveryRequestText = null,Object? tick = null,Object? paymentMethod = null,Object? easyPaymentMethod = null,Object? addressListLoading = null,Object? addressList = freezed,Object? selectedAddress = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,cartOrderInfo: freezed == cartOrderInfo ? _self.cartOrderInfo : cartOrderInfo // ignore: cast_nullable_to_non_nullable
as CartOrderResponseDto?,deliveryRequestList: null == deliveryRequestList ? _self.deliveryRequestList : deliveryRequestList // ignore: cast_nullable_to_non_nullable
as List<DeliveryRequestType>,selectedRequest: null == selectedRequest ? _self.selectedRequest : selectedRequest // ignore: cast_nullable_to_non_nullable
as DeliveryRequestType,deliveryRequestText: null == deliveryRequestText ? _self.deliveryRequestText : deliveryRequestText // ignore: cast_nullable_to_non_nullable
as String,tick: null == tick ? _self.tick : tick // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentsMethod,easyPaymentMethod: null == easyPaymentMethod ? _self.easyPaymentMethod : easyPaymentMethod // ignore: cast_nullable_to_non_nullable
as EasyPaymentsMethod,addressListLoading: null == addressListLoading ? _self.addressListLoading : addressListLoading // ignore: cast_nullable_to_non_nullable
as bool,addressList: freezed == addressList ? _self.addressList : addressList // ignore: cast_nullable_to_non_nullable
as AddressListResponse?,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressDto?,
  ));
}
/// Create a copy of CartOrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartOrderResponseDtoCopyWith<$Res>? get cartOrderInfo {
    if (_self.cartOrderInfo == null) {
    return null;
  }

  return $CartOrderResponseDtoCopyWith<$Res>(_self.cartOrderInfo!, (value) {
    return _then(_self.copyWith(cartOrderInfo: value));
  });
}/// Create a copy of CartOrderState
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
}/// Create a copy of CartOrderState
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


/// Adds pattern-matching-related methods to [CartOrderState].
extension CartOrderStatePatterns on CartOrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartOrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartOrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartOrderState value)  $default,){
final _that = this;
switch (_that) {
case _CartOrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartOrderState value)?  $default,){
final _that = this;
switch (_that) {
case _CartOrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  CartOrderResponseDto? cartOrderInfo,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText,  int tick,  PaymentsMethod paymentMethod,  EasyPaymentsMethod easyPaymentMethod,  bool addressListLoading,  AddressListResponse? addressList,  AddressDto? selectedAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartOrderState() when $default != null:
return $default(_that.isLoading,_that.cartOrderInfo,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText,_that.tick,_that.paymentMethod,_that.easyPaymentMethod,_that.addressListLoading,_that.addressList,_that.selectedAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  CartOrderResponseDto? cartOrderInfo,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText,  int tick,  PaymentsMethod paymentMethod,  EasyPaymentsMethod easyPaymentMethod,  bool addressListLoading,  AddressListResponse? addressList,  AddressDto? selectedAddress)  $default,) {final _that = this;
switch (_that) {
case _CartOrderState():
return $default(_that.isLoading,_that.cartOrderInfo,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText,_that.tick,_that.paymentMethod,_that.easyPaymentMethod,_that.addressListLoading,_that.addressList,_that.selectedAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  CartOrderResponseDto? cartOrderInfo,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText,  int tick,  PaymentsMethod paymentMethod,  EasyPaymentsMethod easyPaymentMethod,  bool addressListLoading,  AddressListResponse? addressList,  AddressDto? selectedAddress)?  $default,) {final _that = this;
switch (_that) {
case _CartOrderState() when $default != null:
return $default(_that.isLoading,_that.cartOrderInfo,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText,_that.tick,_that.paymentMethod,_that.easyPaymentMethod,_that.addressListLoading,_that.addressList,_that.selectedAddress);case _:
  return null;

}
}

}

/// @nodoc


class _CartOrderState extends CartOrderState {
  const _CartOrderState({required this.isLoading, required this.cartOrderInfo, required final  List<DeliveryRequestType> deliveryRequestList, required this.selectedRequest, required this.deliveryRequestText, this.tick = 0, required this.paymentMethod, required this.easyPaymentMethod, required this.addressListLoading, required this.addressList, required this.selectedAddress}): _deliveryRequestList = deliveryRequestList,super._();
  

@override final  bool isLoading;
@override final  CartOrderResponseDto? cartOrderInfo;
 final  List<DeliveryRequestType> _deliveryRequestList;
@override List<DeliveryRequestType> get deliveryRequestList {
  if (_deliveryRequestList is EqualUnmodifiableListView) return _deliveryRequestList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryRequestList);
}

// 배송 요청 사항
@override final  DeliveryRequestType selectedRequest;
// 배송 요청 사항 기타
@override final  String deliveryRequestText;
@override@JsonKey() final  int tick;
// 결제 수단
@override final  PaymentsMethod paymentMethod;
// 간편 결제 수단
@override final  EasyPaymentsMethod easyPaymentMethod;
/// 배송지 리스트
@override final  bool addressListLoading;
@override final  AddressListResponse? addressList;
/// 배송지 수정 선택된 배송지 정보
@override final  AddressDto? selectedAddress;

/// Create a copy of CartOrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartOrderStateCopyWith<_CartOrderState> get copyWith => __$CartOrderStateCopyWithImpl<_CartOrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartOrderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.cartOrderInfo, cartOrderInfo) || other.cartOrderInfo == cartOrderInfo)&&const DeepCollectionEquality().equals(other._deliveryRequestList, _deliveryRequestList)&&(identical(other.selectedRequest, selectedRequest) || other.selectedRequest == selectedRequest)&&(identical(other.deliveryRequestText, deliveryRequestText) || other.deliveryRequestText == deliveryRequestText)&&(identical(other.tick, tick) || other.tick == tick)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.easyPaymentMethod, easyPaymentMethod) || other.easyPaymentMethod == easyPaymentMethod)&&(identical(other.addressListLoading, addressListLoading) || other.addressListLoading == addressListLoading)&&(identical(other.addressList, addressList) || other.addressList == addressList)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,cartOrderInfo,const DeepCollectionEquality().hash(_deliveryRequestList),selectedRequest,deliveryRequestText,tick,paymentMethod,easyPaymentMethod,addressListLoading,addressList,selectedAddress);

@override
String toString() {
  return 'CartOrderState(isLoading: $isLoading, cartOrderInfo: $cartOrderInfo, deliveryRequestList: $deliveryRequestList, selectedRequest: $selectedRequest, deliveryRequestText: $deliveryRequestText, tick: $tick, paymentMethod: $paymentMethod, easyPaymentMethod: $easyPaymentMethod, addressListLoading: $addressListLoading, addressList: $addressList, selectedAddress: $selectedAddress)';
}


}

/// @nodoc
abstract mixin class _$CartOrderStateCopyWith<$Res> implements $CartOrderStateCopyWith<$Res> {
  factory _$CartOrderStateCopyWith(_CartOrderState value, $Res Function(_CartOrderState) _then) = __$CartOrderStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, CartOrderResponseDto? cartOrderInfo, List<DeliveryRequestType> deliveryRequestList, DeliveryRequestType selectedRequest, String deliveryRequestText, int tick, PaymentsMethod paymentMethod, EasyPaymentsMethod easyPaymentMethod, bool addressListLoading, AddressListResponse? addressList, AddressDto? selectedAddress
});


@override $CartOrderResponseDtoCopyWith<$Res>? get cartOrderInfo;@override $AddressListResponseCopyWith<$Res>? get addressList;@override $AddressDtoCopyWith<$Res>? get selectedAddress;

}
/// @nodoc
class __$CartOrderStateCopyWithImpl<$Res>
    implements _$CartOrderStateCopyWith<$Res> {
  __$CartOrderStateCopyWithImpl(this._self, this._then);

  final _CartOrderState _self;
  final $Res Function(_CartOrderState) _then;

/// Create a copy of CartOrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? cartOrderInfo = freezed,Object? deliveryRequestList = null,Object? selectedRequest = null,Object? deliveryRequestText = null,Object? tick = null,Object? paymentMethod = null,Object? easyPaymentMethod = null,Object? addressListLoading = null,Object? addressList = freezed,Object? selectedAddress = freezed,}) {
  return _then(_CartOrderState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,cartOrderInfo: freezed == cartOrderInfo ? _self.cartOrderInfo : cartOrderInfo // ignore: cast_nullable_to_non_nullable
as CartOrderResponseDto?,deliveryRequestList: null == deliveryRequestList ? _self._deliveryRequestList : deliveryRequestList // ignore: cast_nullable_to_non_nullable
as List<DeliveryRequestType>,selectedRequest: null == selectedRequest ? _self.selectedRequest : selectedRequest // ignore: cast_nullable_to_non_nullable
as DeliveryRequestType,deliveryRequestText: null == deliveryRequestText ? _self.deliveryRequestText : deliveryRequestText // ignore: cast_nullable_to_non_nullable
as String,tick: null == tick ? _self.tick : tick // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentsMethod,easyPaymentMethod: null == easyPaymentMethod ? _self.easyPaymentMethod : easyPaymentMethod // ignore: cast_nullable_to_non_nullable
as EasyPaymentsMethod,addressListLoading: null == addressListLoading ? _self.addressListLoading : addressListLoading // ignore: cast_nullable_to_non_nullable
as bool,addressList: freezed == addressList ? _self.addressList : addressList // ignore: cast_nullable_to_non_nullable
as AddressListResponse?,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressDto?,
  ));
}

/// Create a copy of CartOrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartOrderResponseDtoCopyWith<$Res>? get cartOrderInfo {
    if (_self.cartOrderInfo == null) {
    return null;
  }

  return $CartOrderResponseDtoCopyWith<$Res>(_self.cartOrderInfo!, (value) {
    return _then(_self.copyWith(cartOrderInfo: value));
  });
}/// Create a copy of CartOrderState
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
}/// Create a copy of CartOrderState
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
