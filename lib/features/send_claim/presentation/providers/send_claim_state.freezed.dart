// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_claim_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendClaimState {

 int get orderId; bool get isLoading; bool get isSubmitting; OrderDetailWrapper? get orderInfo; String? get claimType; String get claimReason; Map<int, int> get claimedQuantities; List<String> get photos;
/// Create a copy of SendClaimState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendClaimStateCopyWith<SendClaimState> get copyWith => _$SendClaimStateCopyWithImpl<SendClaimState>(this as SendClaimState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendClaimState&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.claimReason, claimReason) || other.claimReason == claimReason)&&const DeepCollectionEquality().equals(other.claimedQuantities, claimedQuantities)&&const DeepCollectionEquality().equals(other.photos, photos));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,isLoading,isSubmitting,orderInfo,claimType,claimReason,const DeepCollectionEquality().hash(claimedQuantities),const DeepCollectionEquality().hash(photos));

@override
String toString() {
  return 'SendClaimState(orderId: $orderId, isLoading: $isLoading, isSubmitting: $isSubmitting, orderInfo: $orderInfo, claimType: $claimType, claimReason: $claimReason, claimedQuantities: $claimedQuantities, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $SendClaimStateCopyWith<$Res>  {
  factory $SendClaimStateCopyWith(SendClaimState value, $Res Function(SendClaimState) _then) = _$SendClaimStateCopyWithImpl;
@useResult
$Res call({
 int orderId, bool isLoading, bool isSubmitting, OrderDetailWrapper? orderInfo, String? claimType, String claimReason, Map<int, int> claimedQuantities, List<String> photos
});


$OrderDetailWrapperCopyWith<$Res>? get orderInfo;

}
/// @nodoc
class _$SendClaimStateCopyWithImpl<$Res>
    implements $SendClaimStateCopyWith<$Res> {
  _$SendClaimStateCopyWithImpl(this._self, this._then);

  final SendClaimState _self;
  final $Res Function(SendClaimState) _then;

/// Create a copy of SendClaimState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? isLoading = null,Object? isSubmitting = null,Object? orderInfo = freezed,Object? claimType = freezed,Object? claimReason = null,Object? claimedQuantities = null,Object? photos = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,orderInfo: freezed == orderInfo ? _self.orderInfo : orderInfo // ignore: cast_nullable_to_non_nullable
as OrderDetailWrapper?,claimType: freezed == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as String?,claimReason: null == claimReason ? _self.claimReason : claimReason // ignore: cast_nullable_to_non_nullable
as String,claimedQuantities: null == claimedQuantities ? _self.claimedQuantities : claimedQuantities // ignore: cast_nullable_to_non_nullable
as Map<int, int>,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of SendClaimState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailWrapperCopyWith<$Res>? get orderInfo {
    if (_self.orderInfo == null) {
    return null;
  }

  return $OrderDetailWrapperCopyWith<$Res>(_self.orderInfo!, (value) {
    return _then(_self.copyWith(orderInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [SendClaimState].
extension SendClaimStatePatterns on SendClaimState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendClaimState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendClaimState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendClaimState value)  $default,){
final _that = this;
switch (_that) {
case _SendClaimState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendClaimState value)?  $default,){
final _that = this;
switch (_that) {
case _SendClaimState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int orderId,  bool isLoading,  bool isSubmitting,  OrderDetailWrapper? orderInfo,  String? claimType,  String claimReason,  Map<int, int> claimedQuantities,  List<String> photos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendClaimState() when $default != null:
return $default(_that.orderId,_that.isLoading,_that.isSubmitting,_that.orderInfo,_that.claimType,_that.claimReason,_that.claimedQuantities,_that.photos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int orderId,  bool isLoading,  bool isSubmitting,  OrderDetailWrapper? orderInfo,  String? claimType,  String claimReason,  Map<int, int> claimedQuantities,  List<String> photos)  $default,) {final _that = this;
switch (_that) {
case _SendClaimState():
return $default(_that.orderId,_that.isLoading,_that.isSubmitting,_that.orderInfo,_that.claimType,_that.claimReason,_that.claimedQuantities,_that.photos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int orderId,  bool isLoading,  bool isSubmitting,  OrderDetailWrapper? orderInfo,  String? claimType,  String claimReason,  Map<int, int> claimedQuantities,  List<String> photos)?  $default,) {final _that = this;
switch (_that) {
case _SendClaimState() when $default != null:
return $default(_that.orderId,_that.isLoading,_that.isSubmitting,_that.orderInfo,_that.claimType,_that.claimReason,_that.claimedQuantities,_that.photos);case _:
  return null;

}
}

}

/// @nodoc


class _SendClaimState extends SendClaimState {
  const _SendClaimState({required this.orderId, required this.isLoading, required this.isSubmitting, required this.orderInfo, required this.claimType, required this.claimReason, required final  Map<int, int> claimedQuantities, required final  List<String> photos}): _claimedQuantities = claimedQuantities,_photos = photos,super._();
  

@override final  int orderId;
@override final  bool isLoading;
@override final  bool isSubmitting;
@override final  OrderDetailWrapper? orderInfo;
@override final  String? claimType;
@override final  String claimReason;
 final  Map<int, int> _claimedQuantities;
@override Map<int, int> get claimedQuantities {
  if (_claimedQuantities is EqualUnmodifiableMapView) return _claimedQuantities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_claimedQuantities);
}

 final  List<String> _photos;
@override List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}


/// Create a copy of SendClaimState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendClaimStateCopyWith<_SendClaimState> get copyWith => __$SendClaimStateCopyWithImpl<_SendClaimState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendClaimState&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.claimReason, claimReason) || other.claimReason == claimReason)&&const DeepCollectionEquality().equals(other._claimedQuantities, _claimedQuantities)&&const DeepCollectionEquality().equals(other._photos, _photos));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,isLoading,isSubmitting,orderInfo,claimType,claimReason,const DeepCollectionEquality().hash(_claimedQuantities),const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'SendClaimState(orderId: $orderId, isLoading: $isLoading, isSubmitting: $isSubmitting, orderInfo: $orderInfo, claimType: $claimType, claimReason: $claimReason, claimedQuantities: $claimedQuantities, photos: $photos)';
}


}

/// @nodoc
abstract mixin class _$SendClaimStateCopyWith<$Res> implements $SendClaimStateCopyWith<$Res> {
  factory _$SendClaimStateCopyWith(_SendClaimState value, $Res Function(_SendClaimState) _then) = __$SendClaimStateCopyWithImpl;
@override @useResult
$Res call({
 int orderId, bool isLoading, bool isSubmitting, OrderDetailWrapper? orderInfo, String? claimType, String claimReason, Map<int, int> claimedQuantities, List<String> photos
});


@override $OrderDetailWrapperCopyWith<$Res>? get orderInfo;

}
/// @nodoc
class __$SendClaimStateCopyWithImpl<$Res>
    implements _$SendClaimStateCopyWith<$Res> {
  __$SendClaimStateCopyWithImpl(this._self, this._then);

  final _SendClaimState _self;
  final $Res Function(_SendClaimState) _then;

/// Create a copy of SendClaimState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? isLoading = null,Object? isSubmitting = null,Object? orderInfo = freezed,Object? claimType = freezed,Object? claimReason = null,Object? claimedQuantities = null,Object? photos = null,}) {
  return _then(_SendClaimState(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,orderInfo: freezed == orderInfo ? _self.orderInfo : orderInfo // ignore: cast_nullable_to_non_nullable
as OrderDetailWrapper?,claimType: freezed == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as String?,claimReason: null == claimReason ? _self.claimReason : claimReason // ignore: cast_nullable_to_non_nullable
as String,claimedQuantities: null == claimedQuantities ? _self._claimedQuantities : claimedQuantities // ignore: cast_nullable_to_non_nullable
as Map<int, int>,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of SendClaimState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailWrapperCopyWith<$Res>? get orderInfo {
    if (_self.orderInfo == null) {
    return null;
  }

  return $OrderDetailWrapperCopyWith<$Res>(_self.orderInfo!, (value) {
    return _then(_self.copyWith(orderInfo: value));
  });
}
}

// dart format on
