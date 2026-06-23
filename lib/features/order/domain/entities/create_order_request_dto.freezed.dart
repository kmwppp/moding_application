// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderRequestDto {

 String get idempotencyKey; int get deliveryAddressId; String get deliveryRequest;@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) PgProvider get pgProvider; List<OrderItemDto> get items;
/// Create a copy of CreateOrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderRequestDtoCopyWith<CreateOrderRequestDto> get copyWith => _$CreateOrderRequestDtoCopyWithImpl<CreateOrderRequestDto>(this as CreateOrderRequestDto, _$identity);

  /// Serializes this CreateOrderRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderRequestDto&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.pgProvider, pgProvider) || other.pgProvider == pgProvider)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idempotencyKey,deliveryAddressId,deliveryRequest,pgProvider,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'CreateOrderRequestDto(idempotencyKey: $idempotencyKey, deliveryAddressId: $deliveryAddressId, deliveryRequest: $deliveryRequest, pgProvider: $pgProvider, items: $items)';
}


}

/// @nodoc
abstract mixin class $CreateOrderRequestDtoCopyWith<$Res>  {
  factory $CreateOrderRequestDtoCopyWith(CreateOrderRequestDto value, $Res Function(CreateOrderRequestDto) _then) = _$CreateOrderRequestDtoCopyWithImpl;
@useResult
$Res call({
 String idempotencyKey, int deliveryAddressId, String deliveryRequest,@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) PgProvider pgProvider, List<OrderItemDto> items
});




}
/// @nodoc
class _$CreateOrderRequestDtoCopyWithImpl<$Res>
    implements $CreateOrderRequestDtoCopyWith<$Res> {
  _$CreateOrderRequestDtoCopyWithImpl(this._self, this._then);

  final CreateOrderRequestDto _self;
  final $Res Function(CreateOrderRequestDto) _then;

/// Create a copy of CreateOrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idempotencyKey = null,Object? deliveryAddressId = null,Object? deliveryRequest = null,Object? pgProvider = null,Object? items = null,}) {
  return _then(_self.copyWith(
idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,deliveryRequest: null == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String,pgProvider: null == pgProvider ? _self.pgProvider : pgProvider // ignore: cast_nullable_to_non_nullable
as PgProvider,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOrderRequestDto].
extension CreateOrderRequestDtoPatterns on CreateOrderRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idempotencyKey,  int deliveryAddressId,  String deliveryRequest, @JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson)  PgProvider pgProvider,  List<OrderItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderRequestDto() when $default != null:
return $default(_that.idempotencyKey,_that.deliveryAddressId,_that.deliveryRequest,_that.pgProvider,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idempotencyKey,  int deliveryAddressId,  String deliveryRequest, @JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson)  PgProvider pgProvider,  List<OrderItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderRequestDto():
return $default(_that.idempotencyKey,_that.deliveryAddressId,_that.deliveryRequest,_that.pgProvider,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idempotencyKey,  int deliveryAddressId,  String deliveryRequest, @JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson)  PgProvider pgProvider,  List<OrderItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderRequestDto() when $default != null:
return $default(_that.idempotencyKey,_that.deliveryAddressId,_that.deliveryRequest,_that.pgProvider,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderRequestDto implements CreateOrderRequestDto {
  const _CreateOrderRequestDto({required this.idempotencyKey, required this.deliveryAddressId, required this.deliveryRequest, @JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) required this.pgProvider, required final  List<OrderItemDto> items}): _items = items;
  factory _CreateOrderRequestDto.fromJson(Map<String, dynamic> json) => _$CreateOrderRequestDtoFromJson(json);

@override final  String idempotencyKey;
@override final  int deliveryAddressId;
@override final  String deliveryRequest;
@override@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) final  PgProvider pgProvider;
 final  List<OrderItemDto> _items;
@override List<OrderItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CreateOrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderRequestDtoCopyWith<_CreateOrderRequestDto> get copyWith => __$CreateOrderRequestDtoCopyWithImpl<_CreateOrderRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderRequestDto&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest)&&(identical(other.pgProvider, pgProvider) || other.pgProvider == pgProvider)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idempotencyKey,deliveryAddressId,deliveryRequest,pgProvider,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CreateOrderRequestDto(idempotencyKey: $idempotencyKey, deliveryAddressId: $deliveryAddressId, deliveryRequest: $deliveryRequest, pgProvider: $pgProvider, items: $items)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderRequestDtoCopyWith<$Res> implements $CreateOrderRequestDtoCopyWith<$Res> {
  factory _$CreateOrderRequestDtoCopyWith(_CreateOrderRequestDto value, $Res Function(_CreateOrderRequestDto) _then) = __$CreateOrderRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String idempotencyKey, int deliveryAddressId, String deliveryRequest,@JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson) PgProvider pgProvider, List<OrderItemDto> items
});




}
/// @nodoc
class __$CreateOrderRequestDtoCopyWithImpl<$Res>
    implements _$CreateOrderRequestDtoCopyWith<$Res> {
  __$CreateOrderRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateOrderRequestDto _self;
  final $Res Function(_CreateOrderRequestDto) _then;

/// Create a copy of CreateOrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idempotencyKey = null,Object? deliveryAddressId = null,Object? deliveryRequest = null,Object? pgProvider = null,Object? items = null,}) {
  return _then(_CreateOrderRequestDto(
idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,deliveryRequest: null == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String,pgProvider: null == pgProvider ? _self.pgProvider : pgProvider // ignore: cast_nullable_to_non_nullable
as PgProvider,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemDto>,
  ));
}


}


/// @nodoc
mixin _$OrderItemDto {

 int get productId; int get productOptionId; int get quantity;
/// Create a copy of OrderItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemDtoCopyWith<OrderItemDto> get copyWith => _$OrderItemDtoCopyWithImpl<OrderItemDto>(this as OrderItemDto, _$identity);

  /// Serializes this OrderItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productOptionId,quantity);

@override
String toString() {
  return 'OrderItemDto(productId: $productId, productOptionId: $productOptionId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $OrderItemDtoCopyWith<$Res>  {
  factory $OrderItemDtoCopyWith(OrderItemDto value, $Res Function(OrderItemDto) _then) = _$OrderItemDtoCopyWithImpl;
@useResult
$Res call({
 int productId, int productOptionId, int quantity
});




}
/// @nodoc
class _$OrderItemDtoCopyWithImpl<$Res>
    implements $OrderItemDtoCopyWith<$Res> {
  _$OrderItemDtoCopyWithImpl(this._self, this._then);

  final OrderItemDto _self;
  final $Res Function(OrderItemDto) _then;

/// Create a copy of OrderItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? productOptionId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItemDto].
extension OrderItemDtoPatterns on OrderItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productId,  int productOptionId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemDto() when $default != null:
return $default(_that.productId,_that.productOptionId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productId,  int productOptionId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _OrderItemDto():
return $default(_that.productId,_that.productOptionId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productId,  int productOptionId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemDto() when $default != null:
return $default(_that.productId,_that.productOptionId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemDto implements OrderItemDto {
  const _OrderItemDto({required this.productId, required this.productOptionId, required this.quantity});
  factory _OrderItemDto.fromJson(Map<String, dynamic> json) => _$OrderItemDtoFromJson(json);

@override final  int productId;
@override final  int productOptionId;
@override final  int quantity;

/// Create a copy of OrderItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemDtoCopyWith<_OrderItemDto> get copyWith => __$OrderItemDtoCopyWithImpl<_OrderItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productOptionId,quantity);

@override
String toString() {
  return 'OrderItemDto(productId: $productId, productOptionId: $productOptionId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$OrderItemDtoCopyWith<$Res> implements $OrderItemDtoCopyWith<$Res> {
  factory _$OrderItemDtoCopyWith(_OrderItemDto value, $Res Function(_OrderItemDto) _then) = __$OrderItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int productId, int productOptionId, int quantity
});




}
/// @nodoc
class __$OrderItemDtoCopyWithImpl<$Res>
    implements _$OrderItemDtoCopyWith<$Res> {
  __$OrderItemDtoCopyWithImpl(this._self, this._then);

  final _OrderItemDto _self;
  final $Res Function(_OrderItemDto) _then;

/// Create a copy of OrderItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productOptionId = null,Object? quantity = null,}) {
  return _then(_OrderItemDto(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
