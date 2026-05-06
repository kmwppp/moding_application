// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_check_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderCheckState {

 bool get isLoading; OrderDetailWrapper? get orderDetail;
/// Create a copy of OrderCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCheckStateCopyWith<OrderCheckState> get copyWith => _$OrderCheckStateCopyWithImpl<OrderCheckState>(this as OrderCheckState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCheckState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.orderDetail, orderDetail) || other.orderDetail == orderDetail));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,orderDetail);

@override
String toString() {
  return 'OrderCheckState(isLoading: $isLoading, orderDetail: $orderDetail)';
}


}

/// @nodoc
abstract mixin class $OrderCheckStateCopyWith<$Res>  {
  factory $OrderCheckStateCopyWith(OrderCheckState value, $Res Function(OrderCheckState) _then) = _$OrderCheckStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, OrderDetailWrapper? orderDetail
});


$OrderDetailWrapperCopyWith<$Res>? get orderDetail;

}
/// @nodoc
class _$OrderCheckStateCopyWithImpl<$Res>
    implements $OrderCheckStateCopyWith<$Res> {
  _$OrderCheckStateCopyWithImpl(this._self, this._then);

  final OrderCheckState _self;
  final $Res Function(OrderCheckState) _then;

/// Create a copy of OrderCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? orderDetail = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,orderDetail: freezed == orderDetail ? _self.orderDetail : orderDetail // ignore: cast_nullable_to_non_nullable
as OrderDetailWrapper?,
  ));
}
/// Create a copy of OrderCheckState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailWrapperCopyWith<$Res>? get orderDetail {
    if (_self.orderDetail == null) {
    return null;
  }

  return $OrderDetailWrapperCopyWith<$Res>(_self.orderDetail!, (value) {
    return _then(_self.copyWith(orderDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderCheckState].
extension OrderCheckStatePatterns on OrderCheckState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderCheckState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderCheckState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderCheckState value)  $default,){
final _that = this;
switch (_that) {
case _OrderCheckState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderCheckState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderCheckState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  OrderDetailWrapper? orderDetail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderCheckState() when $default != null:
return $default(_that.isLoading,_that.orderDetail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  OrderDetailWrapper? orderDetail)  $default,) {final _that = this;
switch (_that) {
case _OrderCheckState():
return $default(_that.isLoading,_that.orderDetail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  OrderDetailWrapper? orderDetail)?  $default,) {final _that = this;
switch (_that) {
case _OrderCheckState() when $default != null:
return $default(_that.isLoading,_that.orderDetail);case _:
  return null;

}
}

}

/// @nodoc


class _OrderCheckState extends OrderCheckState {
  const _OrderCheckState({required this.isLoading, this.orderDetail}): super._();
  

@override final  bool isLoading;
@override final  OrderDetailWrapper? orderDetail;

/// Create a copy of OrderCheckState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCheckStateCopyWith<_OrderCheckState> get copyWith => __$OrderCheckStateCopyWithImpl<_OrderCheckState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderCheckState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.orderDetail, orderDetail) || other.orderDetail == orderDetail));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,orderDetail);

@override
String toString() {
  return 'OrderCheckState(isLoading: $isLoading, orderDetail: $orderDetail)';
}


}

/// @nodoc
abstract mixin class _$OrderCheckStateCopyWith<$Res> implements $OrderCheckStateCopyWith<$Res> {
  factory _$OrderCheckStateCopyWith(_OrderCheckState value, $Res Function(_OrderCheckState) _then) = __$OrderCheckStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, OrderDetailWrapper? orderDetail
});


@override $OrderDetailWrapperCopyWith<$Res>? get orderDetail;

}
/// @nodoc
class __$OrderCheckStateCopyWithImpl<$Res>
    implements _$OrderCheckStateCopyWith<$Res> {
  __$OrderCheckStateCopyWithImpl(this._self, this._then);

  final _OrderCheckState _self;
  final $Res Function(_OrderCheckState) _then;

/// Create a copy of OrderCheckState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? orderDetail = freezed,}) {
  return _then(_OrderCheckState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,orderDetail: freezed == orderDetail ? _self.orderDetail : orderDetail // ignore: cast_nullable_to_non_nullable
as OrderDetailWrapper?,
  ));
}

/// Create a copy of OrderCheckState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailWrapperCopyWith<$Res>? get orderDetail {
    if (_self.orderDetail == null) {
    return null;
  }

  return $OrderDetailWrapperCopyWith<$Res>(_self.orderDetail!, (value) {
    return _then(_self.copyWith(orderDetail: value));
  });
}
}

// dart format on
