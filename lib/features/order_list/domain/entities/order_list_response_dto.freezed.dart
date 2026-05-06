// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderListResponseWrapper {

 OrderListResponseDto get data;
/// Create a copy of OrderListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderListResponseWrapperCopyWith<OrderListResponseWrapper> get copyWith => _$OrderListResponseWrapperCopyWithImpl<OrderListResponseWrapper>(this as OrderListResponseWrapper, _$identity);

  /// Serializes this OrderListResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'OrderListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $OrderListResponseWrapperCopyWith<$Res>  {
  factory $OrderListResponseWrapperCopyWith(OrderListResponseWrapper value, $Res Function(OrderListResponseWrapper) _then) = _$OrderListResponseWrapperCopyWithImpl;
@useResult
$Res call({
 OrderListResponseDto data
});


$OrderListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$OrderListResponseWrapperCopyWithImpl<$Res>
    implements $OrderListResponseWrapperCopyWith<$Res> {
  _$OrderListResponseWrapperCopyWithImpl(this._self, this._then);

  final OrderListResponseWrapper _self;
  final $Res Function(OrderListResponseWrapper) _then;

/// Create a copy of OrderListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OrderListResponseDto,
  ));
}
/// Create a copy of OrderListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderListResponseDtoCopyWith<$Res> get data {
  
  return $OrderListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderListResponseWrapper].
extension OrderListResponseWrapperPatterns on OrderListResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderListResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderListResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _OrderListResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderListResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _OrderListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderListResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderListResponseWrapper() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderListResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _OrderListResponseWrapper():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderListResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _OrderListResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderListResponseWrapper implements OrderListResponseWrapper {
  const _OrderListResponseWrapper({required this.data});
  factory _OrderListResponseWrapper.fromJson(Map<String, dynamic> json) => _$OrderListResponseWrapperFromJson(json);

@override final  OrderListResponseDto data;

/// Create a copy of OrderListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderListResponseWrapperCopyWith<_OrderListResponseWrapper> get copyWith => __$OrderListResponseWrapperCopyWithImpl<_OrderListResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderListResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'OrderListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$OrderListResponseWrapperCopyWith<$Res> implements $OrderListResponseWrapperCopyWith<$Res> {
  factory _$OrderListResponseWrapperCopyWith(_OrderListResponseWrapper value, $Res Function(_OrderListResponseWrapper) _then) = __$OrderListResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 OrderListResponseDto data
});


@override $OrderListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$OrderListResponseWrapperCopyWithImpl<$Res>
    implements _$OrderListResponseWrapperCopyWith<$Res> {
  __$OrderListResponseWrapperCopyWithImpl(this._self, this._then);

  final _OrderListResponseWrapper _self;
  final $Res Function(_OrderListResponseWrapper) _then;

/// Create a copy of OrderListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_OrderListResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OrderListResponseDto,
  ));
}

/// Create a copy of OrderListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderListResponseDtoCopyWith<$Res> get data {
  
  return $OrderListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$OrderListResponseDto {

 List<OrderListItemDto> get content; int get number; int get size; int get totalElements; int get totalPages;
/// Create a copy of OrderListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderListResponseDtoCopyWith<OrderListResponseDto> get copyWith => _$OrderListResponseDtoCopyWithImpl<OrderListResponseDto>(this as OrderListResponseDto, _$identity);

  /// Serializes this OrderListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderListResponseDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'OrderListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $OrderListResponseDtoCopyWith<$Res>  {
  factory $OrderListResponseDtoCopyWith(OrderListResponseDto value, $Res Function(OrderListResponseDto) _then) = _$OrderListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<OrderListItemDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class _$OrderListResponseDtoCopyWithImpl<$Res>
    implements $OrderListResponseDtoCopyWith<$Res> {
  _$OrderListResponseDtoCopyWithImpl(this._self, this._then);

  final OrderListResponseDto _self;
  final $Res Function(OrderListResponseDto) _then;

/// Create a copy of OrderListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<OrderListItemDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderListResponseDto].
extension OrderListResponseDtoPatterns on OrderListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderListItemDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderListResponseDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderListItemDto> content,  int number,  int size,  int totalElements,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _OrderListResponseDto():
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderListItemDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _OrderListResponseDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderListResponseDto implements OrderListResponseDto {
  const _OrderListResponseDto({required final  List<OrderListItemDto> content, required this.number, required this.size, required this.totalElements, required this.totalPages}): _content = content;
  factory _OrderListResponseDto.fromJson(Map<String, dynamic> json) => _$OrderListResponseDtoFromJson(json);

 final  List<OrderListItemDto> _content;
@override List<OrderListItemDto> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int number;
@override final  int size;
@override final  int totalElements;
@override final  int totalPages;

/// Create a copy of OrderListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderListResponseDtoCopyWith<_OrderListResponseDto> get copyWith => __$OrderListResponseDtoCopyWithImpl<_OrderListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderListResponseDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'OrderListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$OrderListResponseDtoCopyWith<$Res> implements $OrderListResponseDtoCopyWith<$Res> {
  factory _$OrderListResponseDtoCopyWith(_OrderListResponseDto value, $Res Function(_OrderListResponseDto) _then) = __$OrderListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<OrderListItemDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class __$OrderListResponseDtoCopyWithImpl<$Res>
    implements _$OrderListResponseDtoCopyWith<$Res> {
  __$OrderListResponseDtoCopyWithImpl(this._self, this._then);

  final _OrderListResponseDto _self;
  final $Res Function(_OrderListResponseDto) _then;

/// Create a copy of OrderListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_OrderListResponseDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<OrderListItemDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OrderListItemDto {

 int get id; String get orderCode; String get deliveryAddressName; String get deliveryAddressRecipientName; String get deliveryAddressPhone; String get deliveryAddressFull; String get status; int get totalAmount; String? get rejectionReason; int? get claimId; int? get paymentId; bool? get isReviewable; List<OrderListProductItemDto> get items;@LocalDateTimeConverter() DateTime get createdAt;
/// Create a copy of OrderListItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderListItemDtoCopyWith<OrderListItemDto> get copyWith => _$OrderListItemDtoCopyWithImpl<OrderListItemDto>(this as OrderListItemDto, _$identity);

  /// Serializes this OrderListItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderListItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.deliveryAddressName, deliveryAddressName) || other.deliveryAddressName == deliveryAddressName)&&(identical(other.deliveryAddressRecipientName, deliveryAddressRecipientName) || other.deliveryAddressRecipientName == deliveryAddressRecipientName)&&(identical(other.deliveryAddressPhone, deliveryAddressPhone) || other.deliveryAddressPhone == deliveryAddressPhone)&&(identical(other.deliveryAddressFull, deliveryAddressFull) || other.deliveryAddressFull == deliveryAddressFull)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.isReviewable, isReviewable) || other.isReviewable == isReviewable)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderCode,deliveryAddressName,deliveryAddressRecipientName,deliveryAddressPhone,deliveryAddressFull,status,totalAmount,rejectionReason,claimId,paymentId,isReviewable,const DeepCollectionEquality().hash(items),createdAt);

@override
String toString() {
  return 'OrderListItemDto(id: $id, orderCode: $orderCode, deliveryAddressName: $deliveryAddressName, deliveryAddressRecipientName: $deliveryAddressRecipientName, deliveryAddressPhone: $deliveryAddressPhone, deliveryAddressFull: $deliveryAddressFull, status: $status, totalAmount: $totalAmount, rejectionReason: $rejectionReason, claimId: $claimId, paymentId: $paymentId, isReviewable: $isReviewable, items: $items, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderListItemDtoCopyWith<$Res>  {
  factory $OrderListItemDtoCopyWith(OrderListItemDto value, $Res Function(OrderListItemDto) _then) = _$OrderListItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, String orderCode, String deliveryAddressName, String deliveryAddressRecipientName, String deliveryAddressPhone, String deliveryAddressFull, String status, int totalAmount, String? rejectionReason, int? claimId, int? paymentId, bool? isReviewable, List<OrderListProductItemDto> items,@LocalDateTimeConverter() DateTime createdAt
});




}
/// @nodoc
class _$OrderListItemDtoCopyWithImpl<$Res>
    implements $OrderListItemDtoCopyWith<$Res> {
  _$OrderListItemDtoCopyWithImpl(this._self, this._then);

  final OrderListItemDto _self;
  final $Res Function(OrderListItemDto) _then;

/// Create a copy of OrderListItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderCode = null,Object? deliveryAddressName = null,Object? deliveryAddressRecipientName = null,Object? deliveryAddressPhone = null,Object? deliveryAddressFull = null,Object? status = null,Object? totalAmount = null,Object? rejectionReason = freezed,Object? claimId = freezed,Object? paymentId = freezed,Object? isReviewable = freezed,Object? items = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressName: null == deliveryAddressName ? _self.deliveryAddressName : deliveryAddressName // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressRecipientName: null == deliveryAddressRecipientName ? _self.deliveryAddressRecipientName : deliveryAddressRecipientName // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressPhone: null == deliveryAddressPhone ? _self.deliveryAddressPhone : deliveryAddressPhone // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressFull: null == deliveryAddressFull ? _self.deliveryAddressFull : deliveryAddressFull // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,claimId: freezed == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as int?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as int?,isReviewable: freezed == isReviewable ? _self.isReviewable : isReviewable // ignore: cast_nullable_to_non_nullable
as bool?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderListProductItemDto>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderListItemDto].
extension OrderListItemDtoPatterns on OrderListItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderListItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderListItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderListItemDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderListItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderListItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderListItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String orderCode,  String deliveryAddressName,  String deliveryAddressRecipientName,  String deliveryAddressPhone,  String deliveryAddressFull,  String status,  int totalAmount,  String? rejectionReason,  int? claimId,  int? paymentId,  bool? isReviewable,  List<OrderListProductItemDto> items, @LocalDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderListItemDto() when $default != null:
return $default(_that.id,_that.orderCode,_that.deliveryAddressName,_that.deliveryAddressRecipientName,_that.deliveryAddressPhone,_that.deliveryAddressFull,_that.status,_that.totalAmount,_that.rejectionReason,_that.claimId,_that.paymentId,_that.isReviewable,_that.items,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String orderCode,  String deliveryAddressName,  String deliveryAddressRecipientName,  String deliveryAddressPhone,  String deliveryAddressFull,  String status,  int totalAmount,  String? rejectionReason,  int? claimId,  int? paymentId,  bool? isReviewable,  List<OrderListProductItemDto> items, @LocalDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrderListItemDto():
return $default(_that.id,_that.orderCode,_that.deliveryAddressName,_that.deliveryAddressRecipientName,_that.deliveryAddressPhone,_that.deliveryAddressFull,_that.status,_that.totalAmount,_that.rejectionReason,_that.claimId,_that.paymentId,_that.isReviewable,_that.items,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String orderCode,  String deliveryAddressName,  String deliveryAddressRecipientName,  String deliveryAddressPhone,  String deliveryAddressFull,  String status,  int totalAmount,  String? rejectionReason,  int? claimId,  int? paymentId,  bool? isReviewable,  List<OrderListProductItemDto> items, @LocalDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderListItemDto() when $default != null:
return $default(_that.id,_that.orderCode,_that.deliveryAddressName,_that.deliveryAddressRecipientName,_that.deliveryAddressPhone,_that.deliveryAddressFull,_that.status,_that.totalAmount,_that.rejectionReason,_that.claimId,_that.paymentId,_that.isReviewable,_that.items,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderListItemDto implements OrderListItemDto {
  const _OrderListItemDto({required this.id, required this.orderCode, required this.deliveryAddressName, required this.deliveryAddressRecipientName, required this.deliveryAddressPhone, required this.deliveryAddressFull, required this.status, required this.totalAmount, this.rejectionReason, this.claimId, this.paymentId, this.isReviewable, required final  List<OrderListProductItemDto> items, @LocalDateTimeConverter() required this.createdAt}): _items = items;
  factory _OrderListItemDto.fromJson(Map<String, dynamic> json) => _$OrderListItemDtoFromJson(json);

@override final  int id;
@override final  String orderCode;
@override final  String deliveryAddressName;
@override final  String deliveryAddressRecipientName;
@override final  String deliveryAddressPhone;
@override final  String deliveryAddressFull;
@override final  String status;
@override final  int totalAmount;
@override final  String? rejectionReason;
@override final  int? claimId;
@override final  int? paymentId;
@override final  bool? isReviewable;
 final  List<OrderListProductItemDto> _items;
@override List<OrderListProductItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@LocalDateTimeConverter() final  DateTime createdAt;

/// Create a copy of OrderListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderListItemDtoCopyWith<_OrderListItemDto> get copyWith => __$OrderListItemDtoCopyWithImpl<_OrderListItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderListItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderListItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.deliveryAddressName, deliveryAddressName) || other.deliveryAddressName == deliveryAddressName)&&(identical(other.deliveryAddressRecipientName, deliveryAddressRecipientName) || other.deliveryAddressRecipientName == deliveryAddressRecipientName)&&(identical(other.deliveryAddressPhone, deliveryAddressPhone) || other.deliveryAddressPhone == deliveryAddressPhone)&&(identical(other.deliveryAddressFull, deliveryAddressFull) || other.deliveryAddressFull == deliveryAddressFull)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.isReviewable, isReviewable) || other.isReviewable == isReviewable)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderCode,deliveryAddressName,deliveryAddressRecipientName,deliveryAddressPhone,deliveryAddressFull,status,totalAmount,rejectionReason,claimId,paymentId,isReviewable,const DeepCollectionEquality().hash(_items),createdAt);

@override
String toString() {
  return 'OrderListItemDto(id: $id, orderCode: $orderCode, deliveryAddressName: $deliveryAddressName, deliveryAddressRecipientName: $deliveryAddressRecipientName, deliveryAddressPhone: $deliveryAddressPhone, deliveryAddressFull: $deliveryAddressFull, status: $status, totalAmount: $totalAmount, rejectionReason: $rejectionReason, claimId: $claimId, paymentId: $paymentId, isReviewable: $isReviewable, items: $items, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderListItemDtoCopyWith<$Res> implements $OrderListItemDtoCopyWith<$Res> {
  factory _$OrderListItemDtoCopyWith(_OrderListItemDto value, $Res Function(_OrderListItemDto) _then) = __$OrderListItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String orderCode, String deliveryAddressName, String deliveryAddressRecipientName, String deliveryAddressPhone, String deliveryAddressFull, String status, int totalAmount, String? rejectionReason, int? claimId, int? paymentId, bool? isReviewable, List<OrderListProductItemDto> items,@LocalDateTimeConverter() DateTime createdAt
});




}
/// @nodoc
class __$OrderListItemDtoCopyWithImpl<$Res>
    implements _$OrderListItemDtoCopyWith<$Res> {
  __$OrderListItemDtoCopyWithImpl(this._self, this._then);

  final _OrderListItemDto _self;
  final $Res Function(_OrderListItemDto) _then;

/// Create a copy of OrderListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderCode = null,Object? deliveryAddressName = null,Object? deliveryAddressRecipientName = null,Object? deliveryAddressPhone = null,Object? deliveryAddressFull = null,Object? status = null,Object? totalAmount = null,Object? rejectionReason = freezed,Object? claimId = freezed,Object? paymentId = freezed,Object? isReviewable = freezed,Object? items = null,Object? createdAt = null,}) {
  return _then(_OrderListItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressName: null == deliveryAddressName ? _self.deliveryAddressName : deliveryAddressName // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressRecipientName: null == deliveryAddressRecipientName ? _self.deliveryAddressRecipientName : deliveryAddressRecipientName // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressPhone: null == deliveryAddressPhone ? _self.deliveryAddressPhone : deliveryAddressPhone // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressFull: null == deliveryAddressFull ? _self.deliveryAddressFull : deliveryAddressFull // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,claimId: freezed == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as int?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as int?,isReviewable: freezed == isReviewable ? _self.isReviewable : isReviewable // ignore: cast_nullable_to_non_nullable
as bool?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderListProductItemDto>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$OrderListProductItemDto {

 int get id; int get productId; String get thumbnailImageUrl; String get productName; String get optionName; int get unitPrice; int get quantity; int get totalPrice;@JsonKey(fromJson: _shippingLeadTimeFromJson) int get shippingLeadTime;@JsonKey(fromJson: _deliveryDaysFromJson) int get deliveryDays;@JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson) bool get weekendDeliveryAvailability;@JsonKey(fromJson: _isSameDayShippingFromJson) bool get isSameDayShipping;@JsonKey(fromJson: _shippingCutoffTimeFromJson) String get shippingCutoffTime;
/// Create a copy of OrderListProductItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderListProductItemDtoCopyWith<OrderListProductItemDto> get copyWith => _$OrderListProductItemDtoCopyWithImpl<OrderListProductItemDto>(this as OrderListProductItemDto, _$identity);

  /// Serializes this OrderListProductItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderListProductItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.weekendDeliveryAvailability, weekendDeliveryAvailability) || other.weekendDeliveryAvailability == weekendDeliveryAvailability)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,thumbnailImageUrl,productName,optionName,unitPrice,quantity,totalPrice,shippingLeadTime,deliveryDays,weekendDeliveryAvailability,isSameDayShipping,shippingCutoffTime);

@override
String toString() {
  return 'OrderListProductItemDto(id: $id, productId: $productId, thumbnailImageUrl: $thumbnailImageUrl, productName: $productName, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, shippingLeadTime: $shippingLeadTime, deliveryDays: $deliveryDays, weekendDeliveryAvailability: $weekendDeliveryAvailability, isSameDayShipping: $isSameDayShipping, shippingCutoffTime: $shippingCutoffTime)';
}


}

/// @nodoc
abstract mixin class $OrderListProductItemDtoCopyWith<$Res>  {
  factory $OrderListProductItemDtoCopyWith(OrderListProductItemDto value, $Res Function(OrderListProductItemDto) _then) = _$OrderListProductItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, int productId, String thumbnailImageUrl, String productName, String optionName, int unitPrice, int quantity, int totalPrice,@JsonKey(fromJson: _shippingLeadTimeFromJson) int shippingLeadTime,@JsonKey(fromJson: _deliveryDaysFromJson) int deliveryDays,@JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson) bool weekendDeliveryAvailability,@JsonKey(fromJson: _isSameDayShippingFromJson) bool isSameDayShipping,@JsonKey(fromJson: _shippingCutoffTimeFromJson) String shippingCutoffTime
});




}
/// @nodoc
class _$OrderListProductItemDtoCopyWithImpl<$Res>
    implements $OrderListProductItemDtoCopyWith<$Res> {
  _$OrderListProductItemDtoCopyWithImpl(this._self, this._then);

  final OrderListProductItemDto _self;
  final $Res Function(OrderListProductItemDto) _then;

/// Create a copy of OrderListProductItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? thumbnailImageUrl = null,Object? productName = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? shippingLeadTime = null,Object? deliveryDays = null,Object? weekendDeliveryAvailability = null,Object? isSameDayShipping = null,Object? shippingCutoffTime = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,shippingLeadTime: null == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int,deliveryDays: null == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int,weekendDeliveryAvailability: null == weekendDeliveryAvailability ? _self.weekendDeliveryAvailability : weekendDeliveryAvailability // ignore: cast_nullable_to_non_nullable
as bool,isSameDayShipping: null == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool,shippingCutoffTime: null == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderListProductItemDto].
extension OrderListProductItemDtoPatterns on OrderListProductItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderListProductItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderListProductItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderListProductItemDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderListProductItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderListProductItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderListProductItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int productId,  String thumbnailImageUrl,  String productName,  String optionName,  int unitPrice,  int quantity,  int totalPrice, @JsonKey(fromJson: _shippingLeadTimeFromJson)  int shippingLeadTime, @JsonKey(fromJson: _deliveryDaysFromJson)  int deliveryDays, @JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson)  bool weekendDeliveryAvailability, @JsonKey(fromJson: _isSameDayShippingFromJson)  bool isSameDayShipping, @JsonKey(fromJson: _shippingCutoffTimeFromJson)  String shippingCutoffTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderListProductItemDto() when $default != null:
return $default(_that.id,_that.productId,_that.thumbnailImageUrl,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.shippingLeadTime,_that.deliveryDays,_that.weekendDeliveryAvailability,_that.isSameDayShipping,_that.shippingCutoffTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int productId,  String thumbnailImageUrl,  String productName,  String optionName,  int unitPrice,  int quantity,  int totalPrice, @JsonKey(fromJson: _shippingLeadTimeFromJson)  int shippingLeadTime, @JsonKey(fromJson: _deliveryDaysFromJson)  int deliveryDays, @JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson)  bool weekendDeliveryAvailability, @JsonKey(fromJson: _isSameDayShippingFromJson)  bool isSameDayShipping, @JsonKey(fromJson: _shippingCutoffTimeFromJson)  String shippingCutoffTime)  $default,) {final _that = this;
switch (_that) {
case _OrderListProductItemDto():
return $default(_that.id,_that.productId,_that.thumbnailImageUrl,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.shippingLeadTime,_that.deliveryDays,_that.weekendDeliveryAvailability,_that.isSameDayShipping,_that.shippingCutoffTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int productId,  String thumbnailImageUrl,  String productName,  String optionName,  int unitPrice,  int quantity,  int totalPrice, @JsonKey(fromJson: _shippingLeadTimeFromJson)  int shippingLeadTime, @JsonKey(fromJson: _deliveryDaysFromJson)  int deliveryDays, @JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson)  bool weekendDeliveryAvailability, @JsonKey(fromJson: _isSameDayShippingFromJson)  bool isSameDayShipping, @JsonKey(fromJson: _shippingCutoffTimeFromJson)  String shippingCutoffTime)?  $default,) {final _that = this;
switch (_that) {
case _OrderListProductItemDto() when $default != null:
return $default(_that.id,_that.productId,_that.thumbnailImageUrl,_that.productName,_that.optionName,_that.unitPrice,_that.quantity,_that.totalPrice,_that.shippingLeadTime,_that.deliveryDays,_that.weekendDeliveryAvailability,_that.isSameDayShipping,_that.shippingCutoffTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderListProductItemDto implements OrderListProductItemDto {
  const _OrderListProductItemDto({required this.id, required this.productId, required this.thumbnailImageUrl, required this.productName, required this.optionName, required this.unitPrice, required this.quantity, required this.totalPrice, @JsonKey(fromJson: _shippingLeadTimeFromJson) required this.shippingLeadTime, @JsonKey(fromJson: _deliveryDaysFromJson) required this.deliveryDays, @JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson) required this.weekendDeliveryAvailability, @JsonKey(fromJson: _isSameDayShippingFromJson) required this.isSameDayShipping, @JsonKey(fromJson: _shippingCutoffTimeFromJson) required this.shippingCutoffTime});
  factory _OrderListProductItemDto.fromJson(Map<String, dynamic> json) => _$OrderListProductItemDtoFromJson(json);

@override final  int id;
@override final  int productId;
@override final  String thumbnailImageUrl;
@override final  String productName;
@override final  String optionName;
@override final  int unitPrice;
@override final  int quantity;
@override final  int totalPrice;
@override@JsonKey(fromJson: _shippingLeadTimeFromJson) final  int shippingLeadTime;
@override@JsonKey(fromJson: _deliveryDaysFromJson) final  int deliveryDays;
@override@JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson) final  bool weekendDeliveryAvailability;
@override@JsonKey(fromJson: _isSameDayShippingFromJson) final  bool isSameDayShipping;
@override@JsonKey(fromJson: _shippingCutoffTimeFromJson) final  String shippingCutoffTime;

/// Create a copy of OrderListProductItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderListProductItemDtoCopyWith<_OrderListProductItemDto> get copyWith => __$OrderListProductItemDtoCopyWithImpl<_OrderListProductItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderListProductItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderListProductItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.weekendDeliveryAvailability, weekendDeliveryAvailability) || other.weekendDeliveryAvailability == weekendDeliveryAvailability)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,thumbnailImageUrl,productName,optionName,unitPrice,quantity,totalPrice,shippingLeadTime,deliveryDays,weekendDeliveryAvailability,isSameDayShipping,shippingCutoffTime);

@override
String toString() {
  return 'OrderListProductItemDto(id: $id, productId: $productId, thumbnailImageUrl: $thumbnailImageUrl, productName: $productName, optionName: $optionName, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, shippingLeadTime: $shippingLeadTime, deliveryDays: $deliveryDays, weekendDeliveryAvailability: $weekendDeliveryAvailability, isSameDayShipping: $isSameDayShipping, shippingCutoffTime: $shippingCutoffTime)';
}


}

/// @nodoc
abstract mixin class _$OrderListProductItemDtoCopyWith<$Res> implements $OrderListProductItemDtoCopyWith<$Res> {
  factory _$OrderListProductItemDtoCopyWith(_OrderListProductItemDto value, $Res Function(_OrderListProductItemDto) _then) = __$OrderListProductItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int productId, String thumbnailImageUrl, String productName, String optionName, int unitPrice, int quantity, int totalPrice,@JsonKey(fromJson: _shippingLeadTimeFromJson) int shippingLeadTime,@JsonKey(fromJson: _deliveryDaysFromJson) int deliveryDays,@JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson) bool weekendDeliveryAvailability,@JsonKey(fromJson: _isSameDayShippingFromJson) bool isSameDayShipping,@JsonKey(fromJson: _shippingCutoffTimeFromJson) String shippingCutoffTime
});




}
/// @nodoc
class __$OrderListProductItemDtoCopyWithImpl<$Res>
    implements _$OrderListProductItemDtoCopyWith<$Res> {
  __$OrderListProductItemDtoCopyWithImpl(this._self, this._then);

  final _OrderListProductItemDto _self;
  final $Res Function(_OrderListProductItemDto) _then;

/// Create a copy of OrderListProductItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? thumbnailImageUrl = null,Object? productName = null,Object? optionName = null,Object? unitPrice = null,Object? quantity = null,Object? totalPrice = null,Object? shippingLeadTime = null,Object? deliveryDays = null,Object? weekendDeliveryAvailability = null,Object? isSameDayShipping = null,Object? shippingCutoffTime = null,}) {
  return _then(_OrderListProductItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,shippingLeadTime: null == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int,deliveryDays: null == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int,weekendDeliveryAvailability: null == weekendDeliveryAvailability ? _self.weekendDeliveryAvailability : weekendDeliveryAvailability // ignore: cast_nullable_to_non_nullable
as bool,isSameDayShipping: null == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool,shippingCutoffTime: null == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
