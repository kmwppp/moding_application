// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_create_order_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartCreateOrderRequestDto {

 String get idempotencyKey; List<int> get cartItemIds; int get deliveryAddressId; String get deliveryRequest;@JsonKey(toJson: _pgProviderToJson) PgProvider? get pgProvider;
/// Create a copy of CartCreateOrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCreateOrderRequestDtoCopyWith<CartCreateOrderRequestDto> get copyWith => _$CartCreateOrderRequestDtoCopyWithImpl<CartCreateOrderRequestDto>(this as CartCreateOrderRequestDto, _$identity);

  /// Serializes this CartCreateOrderRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCreateOrderRequestDto&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&const DeepCollectionEquality().equals(other.cartItemIds, cartItemIds)&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.pgProvider, pgProvider) || other.pgProvider == pgProvider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idempotencyKey,const DeepCollectionEquality().hash(cartItemIds),deliveryAddressId,deliveryRequest,pgProvider);

@override
String toString() {
  return 'CartCreateOrderRequestDto(idempotencyKey: $idempotencyKey, cartItemIds: $cartItemIds, deliveryAddressId: $deliveryAddressId, deliveryRequest: $deliveryRequest, pgProvider: $pgProvider)';
}


}

/// @nodoc
abstract mixin class $CartCreateOrderRequestDtoCopyWith<$Res>  {
  factory $CartCreateOrderRequestDtoCopyWith(CartCreateOrderRequestDto value, $Res Function(CartCreateOrderRequestDto) _then) = _$CartCreateOrderRequestDtoCopyWithImpl;
@useResult
$Res call({
 String idempotencyKey, List<int> cartItemIds, int deliveryAddressId, String deliveryRequest,@JsonKey(toJson: _pgProviderToJson) PgProvider? pgProvider
});




}
/// @nodoc
class _$CartCreateOrderRequestDtoCopyWithImpl<$Res>
    implements $CartCreateOrderRequestDtoCopyWith<$Res> {
  _$CartCreateOrderRequestDtoCopyWithImpl(this._self, this._then);

  final CartCreateOrderRequestDto _self;
  final $Res Function(CartCreateOrderRequestDto) _then;

/// Create a copy of CartCreateOrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idempotencyKey = null,Object? cartItemIds = null,Object? deliveryAddressId = null,Object? deliveryRequest = null,Object? pgProvider = freezed,}) {
  return _then(_self.copyWith(
idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,cartItemIds: null == cartItemIds ? _self.cartItemIds : cartItemIds // ignore: cast_nullable_to_non_nullable
as List<int>,deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,deliveryRequest: null == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String,pgProvider: freezed == pgProvider ? _self.pgProvider : pgProvider // ignore: cast_nullable_to_non_nullable
as PgProvider?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartCreateOrderRequestDto].
extension CartCreateOrderRequestDtoPatterns on CartCreateOrderRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCreateOrderRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCreateOrderRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCreateOrderRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCreateOrderRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartCreateOrderRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idempotencyKey,  List<int> cartItemIds,  int deliveryAddressId,  String deliveryRequest, @JsonKey(toJson: _pgProviderToJson)  PgProvider? pgProvider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCreateOrderRequestDto() when $default != null:
return $default(_that.idempotencyKey,_that.cartItemIds,_that.deliveryAddressId,_that.deliveryRequest,_that.pgProvider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idempotencyKey,  List<int> cartItemIds,  int deliveryAddressId,  String deliveryRequest, @JsonKey(toJson: _pgProviderToJson)  PgProvider? pgProvider)  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderRequestDto():
return $default(_that.idempotencyKey,_that.cartItemIds,_that.deliveryAddressId,_that.deliveryRequest,_that.pgProvider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idempotencyKey,  List<int> cartItemIds,  int deliveryAddressId,  String deliveryRequest, @JsonKey(toJson: _pgProviderToJson)  PgProvider? pgProvider)?  $default,) {final _that = this;
switch (_that) {
case _CartCreateOrderRequestDto() when $default != null:
return $default(_that.idempotencyKey,_that.cartItemIds,_that.deliveryAddressId,_that.deliveryRequest,_that.pgProvider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCreateOrderRequestDto implements CartCreateOrderRequestDto {
  const _CartCreateOrderRequestDto({required this.idempotencyKey, required final  List<int> cartItemIds, required this.deliveryAddressId, required this.deliveryRequest, @JsonKey(toJson: _pgProviderToJson) this.pgProvider}): _cartItemIds = cartItemIds;
  factory _CartCreateOrderRequestDto.fromJson(Map<String, dynamic> json) => _$CartCreateOrderRequestDtoFromJson(json);

@override final  String idempotencyKey;
 final  List<int> _cartItemIds;
@override List<int> get cartItemIds {
  if (_cartItemIds is EqualUnmodifiableListView) return _cartItemIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cartItemIds);
}

@override final  int deliveryAddressId;
@override final  String deliveryRequest;
@override@JsonKey(toJson: _pgProviderToJson) final  PgProvider? pgProvider;

/// Create a copy of CartCreateOrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCreateOrderRequestDtoCopyWith<_CartCreateOrderRequestDto> get copyWith => __$CartCreateOrderRequestDtoCopyWithImpl<_CartCreateOrderRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCreateOrderRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCreateOrderRequestDto&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&const DeepCollectionEquality().equals(other._cartItemIds, _cartItemIds)&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.pgProvider, pgProvider) || other.pgProvider == pgProvider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idempotencyKey,const DeepCollectionEquality().hash(_cartItemIds),deliveryAddressId,deliveryRequest,pgProvider);

@override
String toString() {
  return 'CartCreateOrderRequestDto(idempotencyKey: $idempotencyKey, cartItemIds: $cartItemIds, deliveryAddressId: $deliveryAddressId, deliveryRequest: $deliveryRequest, pgProvider: $pgProvider)';
}


}

/// @nodoc
abstract mixin class _$CartCreateOrderRequestDtoCopyWith<$Res> implements $CartCreateOrderRequestDtoCopyWith<$Res> {
  factory _$CartCreateOrderRequestDtoCopyWith(_CartCreateOrderRequestDto value, $Res Function(_CartCreateOrderRequestDto) _then) = __$CartCreateOrderRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String idempotencyKey, List<int> cartItemIds, int deliveryAddressId, String deliveryRequest,@JsonKey(toJson: _pgProviderToJson) PgProvider? pgProvider
});




}
/// @nodoc
class __$CartCreateOrderRequestDtoCopyWithImpl<$Res>
    implements _$CartCreateOrderRequestDtoCopyWith<$Res> {
  __$CartCreateOrderRequestDtoCopyWithImpl(this._self, this._then);

  final _CartCreateOrderRequestDto _self;
  final $Res Function(_CartCreateOrderRequestDto) _then;

/// Create a copy of CartCreateOrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idempotencyKey = null,Object? cartItemIds = null,Object? deliveryAddressId = null,Object? deliveryRequest = null,Object? pgProvider = freezed,}) {
  return _then(_CartCreateOrderRequestDto(
idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,cartItemIds: null == cartItemIds ? _self._cartItemIds : cartItemIds // ignore: cast_nullable_to_non_nullable
as List<int>,deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,deliveryRequest: null == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String,pgProvider: freezed == pgProvider ? _self.pgProvider : pgProvider // ignore: cast_nullable_to_non_nullable
as PgProvider?,
  ));
}


}

// dart format on
