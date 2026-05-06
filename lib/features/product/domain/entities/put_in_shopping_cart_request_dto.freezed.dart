// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'put_in_shopping_cart_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PutInShoppingCartRequestDto {

 int get productId; int get productOptionId; int get quantity;
/// Create a copy of PutInShoppingCartRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PutInShoppingCartRequestDtoCopyWith<PutInShoppingCartRequestDto> get copyWith => _$PutInShoppingCartRequestDtoCopyWithImpl<PutInShoppingCartRequestDto>(this as PutInShoppingCartRequestDto, _$identity);

  /// Serializes this PutInShoppingCartRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PutInShoppingCartRequestDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productOptionId,quantity);

@override
String toString() {
  return 'PutInShoppingCartRequestDto(productId: $productId, productOptionId: $productOptionId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $PutInShoppingCartRequestDtoCopyWith<$Res>  {
  factory $PutInShoppingCartRequestDtoCopyWith(PutInShoppingCartRequestDto value, $Res Function(PutInShoppingCartRequestDto) _then) = _$PutInShoppingCartRequestDtoCopyWithImpl;
@useResult
$Res call({
 int productId, int productOptionId, int quantity
});




}
/// @nodoc
class _$PutInShoppingCartRequestDtoCopyWithImpl<$Res>
    implements $PutInShoppingCartRequestDtoCopyWith<$Res> {
  _$PutInShoppingCartRequestDtoCopyWithImpl(this._self, this._then);

  final PutInShoppingCartRequestDto _self;
  final $Res Function(PutInShoppingCartRequestDto) _then;

/// Create a copy of PutInShoppingCartRequestDto
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


/// Adds pattern-matching-related methods to [PutInShoppingCartRequestDto].
extension PutInShoppingCartRequestDtoPatterns on PutInShoppingCartRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PutInShoppingCartRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PutInShoppingCartRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PutInShoppingCartRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _PutInShoppingCartRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PutInShoppingCartRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _PutInShoppingCartRequestDto() when $default != null:
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
case _PutInShoppingCartRequestDto() when $default != null:
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
case _PutInShoppingCartRequestDto():
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
case _PutInShoppingCartRequestDto() when $default != null:
return $default(_that.productId,_that.productOptionId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PutInShoppingCartRequestDto implements PutInShoppingCartRequestDto {
  const _PutInShoppingCartRequestDto({required this.productId, required this.productOptionId, required this.quantity});
  factory _PutInShoppingCartRequestDto.fromJson(Map<String, dynamic> json) => _$PutInShoppingCartRequestDtoFromJson(json);

@override final  int productId;
@override final  int productOptionId;
@override final  int quantity;

/// Create a copy of PutInShoppingCartRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PutInShoppingCartRequestDtoCopyWith<_PutInShoppingCartRequestDto> get copyWith => __$PutInShoppingCartRequestDtoCopyWithImpl<_PutInShoppingCartRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PutInShoppingCartRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PutInShoppingCartRequestDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productOptionId, productOptionId) || other.productOptionId == productOptionId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productOptionId,quantity);

@override
String toString() {
  return 'PutInShoppingCartRequestDto(productId: $productId, productOptionId: $productOptionId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$PutInShoppingCartRequestDtoCopyWith<$Res> implements $PutInShoppingCartRequestDtoCopyWith<$Res> {
  factory _$PutInShoppingCartRequestDtoCopyWith(_PutInShoppingCartRequestDto value, $Res Function(_PutInShoppingCartRequestDto) _then) = __$PutInShoppingCartRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 int productId, int productOptionId, int quantity
});




}
/// @nodoc
class __$PutInShoppingCartRequestDtoCopyWithImpl<$Res>
    implements _$PutInShoppingCartRequestDtoCopyWith<$Res> {
  __$PutInShoppingCartRequestDtoCopyWithImpl(this._self, this._then);

  final _PutInShoppingCartRequestDto _self;
  final $Res Function(_PutInShoppingCartRequestDto) _then;

/// Create a copy of PutInShoppingCartRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productOptionId = null,Object? quantity = null,}) {
  return _then(_PutInShoppingCartRequestDto(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productOptionId: null == productOptionId ? _self.productOptionId : productOptionId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
