// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_review_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductReviewListResponseWrapper {

 ProductReviewListResponseDto get data;
/// Create a copy of ProductReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewListResponseWrapperCopyWith<ProductReviewListResponseWrapper> get copyWith => _$ProductReviewListResponseWrapperCopyWithImpl<ProductReviewListResponseWrapper>(this as ProductReviewListResponseWrapper, _$identity);

  /// Serializes this ProductReviewListResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductReviewListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductReviewListResponseWrapperCopyWith<$Res>  {
  factory $ProductReviewListResponseWrapperCopyWith(ProductReviewListResponseWrapper value, $Res Function(ProductReviewListResponseWrapper) _then) = _$ProductReviewListResponseWrapperCopyWithImpl;
@useResult
$Res call({
 ProductReviewListResponseDto data
});


$ProductReviewListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$ProductReviewListResponseWrapperCopyWithImpl<$Res>
    implements $ProductReviewListResponseWrapperCopyWith<$Res> {
  _$ProductReviewListResponseWrapperCopyWithImpl(this._self, this._then);

  final ProductReviewListResponseWrapper _self;
  final $Res Function(ProductReviewListResponseWrapper) _then;

/// Create a copy of ProductReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductReviewListResponseDto,
  ));
}
/// Create a copy of ProductReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductReviewListResponseDtoCopyWith<$Res> get data {
  
  return $ProductReviewListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductReviewListResponseWrapper].
extension ProductReviewListResponseWrapperPatterns on ProductReviewListResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewListResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewListResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewListResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewListResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductReviewListResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductReviewListResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewListResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductReviewListResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewListResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReviewListResponseWrapper implements ProductReviewListResponseWrapper {
  const _ProductReviewListResponseWrapper({required this.data});
  factory _ProductReviewListResponseWrapper.fromJson(Map<String, dynamic> json) => _$ProductReviewListResponseWrapperFromJson(json);

@override final  ProductReviewListResponseDto data;

/// Create a copy of ProductReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewListResponseWrapperCopyWith<_ProductReviewListResponseWrapper> get copyWith => __$ProductReviewListResponseWrapperCopyWithImpl<_ProductReviewListResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReviewListResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductReviewListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewListResponseWrapperCopyWith<$Res> implements $ProductReviewListResponseWrapperCopyWith<$Res> {
  factory _$ProductReviewListResponseWrapperCopyWith(_ProductReviewListResponseWrapper value, $Res Function(_ProductReviewListResponseWrapper) _then) = __$ProductReviewListResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 ProductReviewListResponseDto data
});


@override $ProductReviewListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$ProductReviewListResponseWrapperCopyWithImpl<$Res>
    implements _$ProductReviewListResponseWrapperCopyWith<$Res> {
  __$ProductReviewListResponseWrapperCopyWithImpl(this._self, this._then);

  final _ProductReviewListResponseWrapper _self;
  final $Res Function(_ProductReviewListResponseWrapper) _then;

/// Create a copy of ProductReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProductReviewListResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductReviewListResponseDto,
  ));
}

/// Create a copy of ProductReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductReviewListResponseDtoCopyWith<$Res> get data {
  
  return $ProductReviewListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ProductReviewListResponseDto {

 List<ReviewDto> get content; int get number; int get size; int get totalElements; int get totalPages;
/// Create a copy of ProductReviewListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewListResponseDtoCopyWith<ProductReviewListResponseDto> get copyWith => _$ProductReviewListResponseDtoCopyWithImpl<ProductReviewListResponseDto>(this as ProductReviewListResponseDto, _$identity);

  /// Serializes this ProductReviewListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewListResponseDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'ProductReviewListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $ProductReviewListResponseDtoCopyWith<$Res>  {
  factory $ProductReviewListResponseDtoCopyWith(ProductReviewListResponseDto value, $Res Function(ProductReviewListResponseDto) _then) = _$ProductReviewListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<ReviewDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class _$ProductReviewListResponseDtoCopyWithImpl<$Res>
    implements $ProductReviewListResponseDtoCopyWith<$Res> {
  _$ProductReviewListResponseDtoCopyWithImpl(this._self, this._then);

  final ProductReviewListResponseDto _self;
  final $Res Function(ProductReviewListResponseDto) _then;

/// Create a copy of ProductReviewListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<ReviewDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductReviewListResponseDto].
extension ProductReviewListResponseDtoPatterns on ProductReviewListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReviewDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewListResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReviewDto> content,  int number,  int size,  int totalElements,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewListResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReviewDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewListResponseDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReviewListResponseDto implements ProductReviewListResponseDto {
  const _ProductReviewListResponseDto({required final  List<ReviewDto> content, required this.number, required this.size, required this.totalElements, required this.totalPages}): _content = content;
  factory _ProductReviewListResponseDto.fromJson(Map<String, dynamic> json) => _$ProductReviewListResponseDtoFromJson(json);

 final  List<ReviewDto> _content;
@override List<ReviewDto> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int number;
@override final  int size;
@override final  int totalElements;
@override final  int totalPages;

/// Create a copy of ProductReviewListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewListResponseDtoCopyWith<_ProductReviewListResponseDto> get copyWith => __$ProductReviewListResponseDtoCopyWithImpl<_ProductReviewListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReviewListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewListResponseDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'ProductReviewListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewListResponseDtoCopyWith<$Res> implements $ProductReviewListResponseDtoCopyWith<$Res> {
  factory _$ProductReviewListResponseDtoCopyWith(_ProductReviewListResponseDto value, $Res Function(_ProductReviewListResponseDto) _then) = __$ProductReviewListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ReviewDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class __$ProductReviewListResponseDtoCopyWithImpl<$Res>
    implements _$ProductReviewListResponseDtoCopyWith<$Res> {
  __$ProductReviewListResponseDtoCopyWithImpl(this._self, this._then);

  final _ProductReviewListResponseDto _self;
  final $Res Function(_ProductReviewListResponseDto) _then;

/// Create a copy of ProductReviewListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_ProductReviewListResponseDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<ReviewDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
