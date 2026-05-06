// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderRequestDto {

 List<OrderItemRequestDto> get items;
/// Create a copy of OrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderRequestDtoCopyWith<OrderRequestDto> get copyWith => _$OrderRequestDtoCopyWithImpl<OrderRequestDto>(this as OrderRequestDto, _$identity);

  /// Serializes this OrderRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderRequestDto&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'OrderRequestDto(items: $items)';
}


}

/// @nodoc
abstract mixin class $OrderRequestDtoCopyWith<$Res>  {
  factory $OrderRequestDtoCopyWith(OrderRequestDto value, $Res Function(OrderRequestDto) _then) = _$OrderRequestDtoCopyWithImpl;
@useResult
$Res call({
 List<OrderItemRequestDto> items
});




}
/// @nodoc
class _$OrderRequestDtoCopyWithImpl<$Res>
    implements $OrderRequestDtoCopyWith<$Res> {
  _$OrderRequestDtoCopyWithImpl(this._self, this._then);

  final OrderRequestDto _self;
  final $Res Function(OrderRequestDto) _then;

/// Create a copy of OrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemRequestDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderRequestDto].
extension OrderRequestDtoPatterns on OrderRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderItemRequestDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderRequestDto() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderItemRequestDto> items)  $default,) {final _that = this;
switch (_that) {
case _OrderRequestDto():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderItemRequestDto> items)?  $default,) {final _that = this;
switch (_that) {
case _OrderRequestDto() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderRequestDto implements OrderRequestDto {
  const _OrderRequestDto({required final  List<OrderItemRequestDto> items}): _items = items;
  factory _OrderRequestDto.fromJson(Map<String, dynamic> json) => _$OrderRequestDtoFromJson(json);

 final  List<OrderItemRequestDto> _items;
@override List<OrderItemRequestDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of OrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderRequestDtoCopyWith<_OrderRequestDto> get copyWith => __$OrderRequestDtoCopyWithImpl<_OrderRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderRequestDto&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'OrderRequestDto(items: $items)';
}


}

/// @nodoc
abstract mixin class _$OrderRequestDtoCopyWith<$Res> implements $OrderRequestDtoCopyWith<$Res> {
  factory _$OrderRequestDtoCopyWith(_OrderRequestDto value, $Res Function(_OrderRequestDto) _then) = __$OrderRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 List<OrderItemRequestDto> items
});




}
/// @nodoc
class __$OrderRequestDtoCopyWithImpl<$Res>
    implements _$OrderRequestDtoCopyWith<$Res> {
  __$OrderRequestDtoCopyWithImpl(this._self, this._then);

  final _OrderRequestDto _self;
  final $Res Function(_OrderRequestDto) _then;

/// Create a copy of OrderRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_OrderRequestDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemRequestDto>,
  ));
}


}


/// @nodoc
mixin _$OrderItemRequestDto {

 int get productId; int get productOptionId; int get quantity;
/// Create a copy of OrderItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemRequestDtoCopyWith<OrderItemRequestDto> get copyWith => _$OrderItemRequestDtoCopyWithImpl<OrderItemRequestDto>(this as OrderItemRequestDto, _$identity);

  /// Serializes this OrderItemRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemRequestDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productOptionId,quantity);

@override
String toString() {
  return 'OrderItemRequestDto(productId: $productId, productOptionId: $productOptionId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $OrderItemRequestDtoCopyWith<$Res>  {
  factory $OrderItemRequestDtoCopyWith(OrderItemRequestDto value, $Res Function(OrderItemRequestDto) _then) = _$OrderItemRequestDtoCopyWithImpl;
@useResult
$Res call({
 int productId, int productOptionId, int quantity
});




}
/// @nodoc
class _$OrderItemRequestDtoCopyWithImpl<$Res>
    implements $OrderItemRequestDtoCopyWith<$Res> {
  _$OrderItemRequestDtoCopyWithImpl(this._self, this._then);

  final OrderItemRequestDto _self;
  final $Res Function(OrderItemRequestDto) _then;

/// Create a copy of OrderItemRequestDto
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


/// Adds pattern-matching-related methods to [OrderItemRequestDto].
extension OrderItemRequestDtoPatterns on OrderItemRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemRequestDto() when $default != null:
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
case _OrderItemRequestDto() when $default != null:
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
case _OrderItemRequestDto():
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
case _OrderItemRequestDto() when $default != null:
return $default(_that.productId,_that.productOptionId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemRequestDto implements OrderItemRequestDto {
  const _OrderItemRequestDto({required this.productId, required this.productOptionId, required this.quantity});
  factory _OrderItemRequestDto.fromJson(Map<String, dynamic> json) => _$OrderItemRequestDtoFromJson(json);

@override final  int productId;
@override final  int productOptionId;
@override final  int quantity;

/// Create a copy of OrderItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemRequestDtoCopyWith<_OrderItemRequestDto> get copyWith => __$OrderItemRequestDtoCopyWithImpl<_OrderItemRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemRequestDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productOptionId,quantity);

@override
String toString() {
  return 'OrderItemRequestDto(productId: $productId, productOptionId: $productOptionId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$OrderItemRequestDtoCopyWith<$Res> implements $OrderItemRequestDtoCopyWith<$Res> {
  factory _$OrderItemRequestDtoCopyWith(_OrderItemRequestDto value, $Res Function(_OrderItemRequestDto) _then) = __$OrderItemRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 int productId, int productOptionId, int quantity
});




}
/// @nodoc
class __$OrderItemRequestDtoCopyWithImpl<$Res>
    implements _$OrderItemRequestDtoCopyWith<$Res> {
  __$OrderItemRequestDtoCopyWithImpl(this._self, this._then);

  final _OrderItemRequestDto _self;
  final $Res Function(_OrderItemRequestDto) _then;

/// Create a copy of OrderItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productOptionId = null,Object? quantity = null,}) {
  return _then(_OrderItemRequestDto(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
