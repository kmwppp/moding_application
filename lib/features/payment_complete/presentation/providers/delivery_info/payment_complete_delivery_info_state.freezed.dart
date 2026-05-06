// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_complete_delivery_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentCompleteDeliveryInfoState {

 AddressDto? get selectedAddress;// 배송 요청 사항 리스트
 List<DeliveryRequestType> get deliveryRequestList;// 배송 요청 사항
 DeliveryRequestType get selectedRequest;// 배송 요청 사항 기타
 String get deliveryRequestText;
/// Create a copy of PaymentCompleteDeliveryInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCompleteDeliveryInfoStateCopyWith<PaymentCompleteDeliveryInfoState> get copyWith => _$PaymentCompleteDeliveryInfoStateCopyWithImpl<PaymentCompleteDeliveryInfoState>(this as PaymentCompleteDeliveryInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCompleteDeliveryInfoState&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&const DeepCollectionEquality().equals(other.deliveryRequestList, deliveryRequestList)&&(identical(other.selectedRequest, selectedRequest) || other.selectedRequest == selectedRequest)&&(identical(other.deliveryRequestText, deliveryRequestText) || other.deliveryRequestText == deliveryRequestText));
}


@override
int get hashCode => Object.hash(runtimeType,selectedAddress,const DeepCollectionEquality().hash(deliveryRequestList),selectedRequest,deliveryRequestText);

@override
String toString() {
  return 'PaymentCompleteDeliveryInfoState(selectedAddress: $selectedAddress, deliveryRequestList: $deliveryRequestList, selectedRequest: $selectedRequest, deliveryRequestText: $deliveryRequestText)';
}


}

/// @nodoc
abstract mixin class $PaymentCompleteDeliveryInfoStateCopyWith<$Res>  {
  factory $PaymentCompleteDeliveryInfoStateCopyWith(PaymentCompleteDeliveryInfoState value, $Res Function(PaymentCompleteDeliveryInfoState) _then) = _$PaymentCompleteDeliveryInfoStateCopyWithImpl;
@useResult
$Res call({
 AddressDto? selectedAddress, List<DeliveryRequestType> deliveryRequestList, DeliveryRequestType selectedRequest, String deliveryRequestText
});


$AddressDtoCopyWith<$Res>? get selectedAddress;

}
/// @nodoc
class _$PaymentCompleteDeliveryInfoStateCopyWithImpl<$Res>
    implements $PaymentCompleteDeliveryInfoStateCopyWith<$Res> {
  _$PaymentCompleteDeliveryInfoStateCopyWithImpl(this._self, this._then);

  final PaymentCompleteDeliveryInfoState _self;
  final $Res Function(PaymentCompleteDeliveryInfoState) _then;

/// Create a copy of PaymentCompleteDeliveryInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedAddress = freezed,Object? deliveryRequestList = null,Object? selectedRequest = null,Object? deliveryRequestText = null,}) {
  return _then(_self.copyWith(
selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressDto?,deliveryRequestList: null == deliveryRequestList ? _self.deliveryRequestList : deliveryRequestList // ignore: cast_nullable_to_non_nullable
as List<DeliveryRequestType>,selectedRequest: null == selectedRequest ? _self.selectedRequest : selectedRequest // ignore: cast_nullable_to_non_nullable
as DeliveryRequestType,deliveryRequestText: null == deliveryRequestText ? _self.deliveryRequestText : deliveryRequestText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PaymentCompleteDeliveryInfoState
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


/// Adds pattern-matching-related methods to [PaymentCompleteDeliveryInfoState].
extension PaymentCompleteDeliveryInfoStatePatterns on PaymentCompleteDeliveryInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentCompleteDeliveryInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentCompleteDeliveryInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentCompleteDeliveryInfoState value)  $default,){
final _that = this;
switch (_that) {
case _PaymentCompleteDeliveryInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentCompleteDeliveryInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentCompleteDeliveryInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddressDto? selectedAddress,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentCompleteDeliveryInfoState() when $default != null:
return $default(_that.selectedAddress,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddressDto? selectedAddress,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText)  $default,) {final _that = this;
switch (_that) {
case _PaymentCompleteDeliveryInfoState():
return $default(_that.selectedAddress,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddressDto? selectedAddress,  List<DeliveryRequestType> deliveryRequestList,  DeliveryRequestType selectedRequest,  String deliveryRequestText)?  $default,) {final _that = this;
switch (_that) {
case _PaymentCompleteDeliveryInfoState() when $default != null:
return $default(_that.selectedAddress,_that.deliveryRequestList,_that.selectedRequest,_that.deliveryRequestText);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentCompleteDeliveryInfoState extends PaymentCompleteDeliveryInfoState {
  const _PaymentCompleteDeliveryInfoState({required this.selectedAddress, required final  List<DeliveryRequestType> deliveryRequestList, required this.selectedRequest, required this.deliveryRequestText}): _deliveryRequestList = deliveryRequestList,super._();
  

@override final  AddressDto? selectedAddress;
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

/// Create a copy of PaymentCompleteDeliveryInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCompleteDeliveryInfoStateCopyWith<_PaymentCompleteDeliveryInfoState> get copyWith => __$PaymentCompleteDeliveryInfoStateCopyWithImpl<_PaymentCompleteDeliveryInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentCompleteDeliveryInfoState&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&const DeepCollectionEquality().equals(other._deliveryRequestList, _deliveryRequestList)&&(identical(other.selectedRequest, selectedRequest) || other.selectedRequest == selectedRequest)&&(identical(other.deliveryRequestText, deliveryRequestText) || other.deliveryRequestText == deliveryRequestText));
}


@override
int get hashCode => Object.hash(runtimeType,selectedAddress,const DeepCollectionEquality().hash(_deliveryRequestList),selectedRequest,deliveryRequestText);

@override
String toString() {
  return 'PaymentCompleteDeliveryInfoState(selectedAddress: $selectedAddress, deliveryRequestList: $deliveryRequestList, selectedRequest: $selectedRequest, deliveryRequestText: $deliveryRequestText)';
}


}

/// @nodoc
abstract mixin class _$PaymentCompleteDeliveryInfoStateCopyWith<$Res> implements $PaymentCompleteDeliveryInfoStateCopyWith<$Res> {
  factory _$PaymentCompleteDeliveryInfoStateCopyWith(_PaymentCompleteDeliveryInfoState value, $Res Function(_PaymentCompleteDeliveryInfoState) _then) = __$PaymentCompleteDeliveryInfoStateCopyWithImpl;
@override @useResult
$Res call({
 AddressDto? selectedAddress, List<DeliveryRequestType> deliveryRequestList, DeliveryRequestType selectedRequest, String deliveryRequestText
});


@override $AddressDtoCopyWith<$Res>? get selectedAddress;

}
/// @nodoc
class __$PaymentCompleteDeliveryInfoStateCopyWithImpl<$Res>
    implements _$PaymentCompleteDeliveryInfoStateCopyWith<$Res> {
  __$PaymentCompleteDeliveryInfoStateCopyWithImpl(this._self, this._then);

  final _PaymentCompleteDeliveryInfoState _self;
  final $Res Function(_PaymentCompleteDeliveryInfoState) _then;

/// Create a copy of PaymentCompleteDeliveryInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedAddress = freezed,Object? deliveryRequestList = null,Object? selectedRequest = null,Object? deliveryRequestText = null,}) {
  return _then(_PaymentCompleteDeliveryInfoState(
selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressDto?,deliveryRequestList: null == deliveryRequestList ? _self._deliveryRequestList : deliveryRequestList // ignore: cast_nullable_to_non_nullable
as List<DeliveryRequestType>,selectedRequest: null == selectedRequest ? _self.selectedRequest : selectedRequest // ignore: cast_nullable_to_non_nullable
as DeliveryRequestType,deliveryRequestText: null == deliveryRequestText ? _self.deliveryRequestText : deliveryRequestText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PaymentCompleteDeliveryInfoState
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
