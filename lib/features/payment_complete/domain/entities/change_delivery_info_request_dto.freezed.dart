// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_delivery_info_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeDeliveryInfoRequestDto {

 int get deliveryAddressId; String get deliveryRequest;
/// Create a copy of ChangeDeliveryInfoRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeDeliveryInfoRequestDtoCopyWith<ChangeDeliveryInfoRequestDto> get copyWith => _$ChangeDeliveryInfoRequestDtoCopyWithImpl<ChangeDeliveryInfoRequestDto>(this as ChangeDeliveryInfoRequestDto, _$identity);

  /// Serializes this ChangeDeliveryInfoRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeDeliveryInfoRequestDto&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryAddressId,deliveryRequest);

@override
String toString() {
  return 'ChangeDeliveryInfoRequestDto(deliveryAddressId: $deliveryAddressId, deliveryRequest: $deliveryRequest)';
}


}

/// @nodoc
abstract mixin class $ChangeDeliveryInfoRequestDtoCopyWith<$Res>  {
  factory $ChangeDeliveryInfoRequestDtoCopyWith(ChangeDeliveryInfoRequestDto value, $Res Function(ChangeDeliveryInfoRequestDto) _then) = _$ChangeDeliveryInfoRequestDtoCopyWithImpl;
@useResult
$Res call({
 int deliveryAddressId, String deliveryRequest
});




}
/// @nodoc
class _$ChangeDeliveryInfoRequestDtoCopyWithImpl<$Res>
    implements $ChangeDeliveryInfoRequestDtoCopyWith<$Res> {
  _$ChangeDeliveryInfoRequestDtoCopyWithImpl(this._self, this._then);

  final ChangeDeliveryInfoRequestDto _self;
  final $Res Function(ChangeDeliveryInfoRequestDto) _then;

/// Create a copy of ChangeDeliveryInfoRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deliveryAddressId = null,Object? deliveryRequest = null,}) {
  return _then(_self.copyWith(
deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,deliveryRequest: null == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeDeliveryInfoRequestDto].
extension ChangeDeliveryInfoRequestDtoPatterns on ChangeDeliveryInfoRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeDeliveryInfoRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeDeliveryInfoRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeDeliveryInfoRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ChangeDeliveryInfoRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeDeliveryInfoRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeDeliveryInfoRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int deliveryAddressId,  String deliveryRequest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeDeliveryInfoRequestDto() when $default != null:
return $default(_that.deliveryAddressId,_that.deliveryRequest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int deliveryAddressId,  String deliveryRequest)  $default,) {final _that = this;
switch (_that) {
case _ChangeDeliveryInfoRequestDto():
return $default(_that.deliveryAddressId,_that.deliveryRequest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int deliveryAddressId,  String deliveryRequest)?  $default,) {final _that = this;
switch (_that) {
case _ChangeDeliveryInfoRequestDto() when $default != null:
return $default(_that.deliveryAddressId,_that.deliveryRequest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeDeliveryInfoRequestDto implements ChangeDeliveryInfoRequestDto {
  const _ChangeDeliveryInfoRequestDto({required this.deliveryAddressId, required this.deliveryRequest});
  factory _ChangeDeliveryInfoRequestDto.fromJson(Map<String, dynamic> json) => _$ChangeDeliveryInfoRequestDtoFromJson(json);

@override final  int deliveryAddressId;
@override final  String deliveryRequest;

/// Create a copy of ChangeDeliveryInfoRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeDeliveryInfoRequestDtoCopyWith<_ChangeDeliveryInfoRequestDto> get copyWith => __$ChangeDeliveryInfoRequestDtoCopyWithImpl<_ChangeDeliveryInfoRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeDeliveryInfoRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeDeliveryInfoRequestDto&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.deliveryRequest, deliveryRequest) || other.deliveryRequest == deliveryRequest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryAddressId,deliveryRequest);

@override
String toString() {
  return 'ChangeDeliveryInfoRequestDto(deliveryAddressId: $deliveryAddressId, deliveryRequest: $deliveryRequest)';
}


}

/// @nodoc
abstract mixin class _$ChangeDeliveryInfoRequestDtoCopyWith<$Res> implements $ChangeDeliveryInfoRequestDtoCopyWith<$Res> {
  factory _$ChangeDeliveryInfoRequestDtoCopyWith(_ChangeDeliveryInfoRequestDto value, $Res Function(_ChangeDeliveryInfoRequestDto) _then) = __$ChangeDeliveryInfoRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 int deliveryAddressId, String deliveryRequest
});




}
/// @nodoc
class __$ChangeDeliveryInfoRequestDtoCopyWithImpl<$Res>
    implements _$ChangeDeliveryInfoRequestDtoCopyWith<$Res> {
  __$ChangeDeliveryInfoRequestDtoCopyWithImpl(this._self, this._then);

  final _ChangeDeliveryInfoRequestDto _self;
  final $Res Function(_ChangeDeliveryInfoRequestDto) _then;

/// Create a copy of ChangeDeliveryInfoRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deliveryAddressId = null,Object? deliveryRequest = null,}) {
  return _then(_ChangeDeliveryInfoRequestDto(
deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,deliveryRequest: null == deliveryRequest ? _self.deliveryRequest : deliveryRequest // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
