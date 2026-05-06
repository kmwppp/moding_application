// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewListResponseWrapper {

 ReviewListResponseDto get data;
/// Create a copy of ReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewListResponseWrapperCopyWith<ReviewListResponseWrapper> get copyWith => _$ReviewListResponseWrapperCopyWithImpl<ReviewListResponseWrapper>(this as ReviewListResponseWrapper, _$identity);

  /// Serializes this ReviewListResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ReviewListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $ReviewListResponseWrapperCopyWith<$Res>  {
  factory $ReviewListResponseWrapperCopyWith(ReviewListResponseWrapper value, $Res Function(ReviewListResponseWrapper) _then) = _$ReviewListResponseWrapperCopyWithImpl;
@useResult
$Res call({
 ReviewListResponseDto data
});


$ReviewListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$ReviewListResponseWrapperCopyWithImpl<$Res>
    implements $ReviewListResponseWrapperCopyWith<$Res> {
  _$ReviewListResponseWrapperCopyWithImpl(this._self, this._then);

  final ReviewListResponseWrapper _self;
  final $Res Function(ReviewListResponseWrapper) _then;

/// Create a copy of ReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReviewListResponseDto,
  ));
}
/// Create a copy of ReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewListResponseDtoCopyWith<$Res> get data {
  
  return $ReviewListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewListResponseWrapper].
extension ReviewListResponseWrapperPatterns on ReviewListResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewListResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewListResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ReviewListResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewListResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewListResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewListResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _ReviewListResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewListResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _ReviewListResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewListResponseWrapper implements ReviewListResponseWrapper {
  const _ReviewListResponseWrapper({required this.data});
  factory _ReviewListResponseWrapper.fromJson(Map<String, dynamic> json) => _$ReviewListResponseWrapperFromJson(json);

@override final  ReviewListResponseDto data;

/// Create a copy of ReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewListResponseWrapperCopyWith<_ReviewListResponseWrapper> get copyWith => __$ReviewListResponseWrapperCopyWithImpl<_ReviewListResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewListResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ReviewListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ReviewListResponseWrapperCopyWith<$Res> implements $ReviewListResponseWrapperCopyWith<$Res> {
  factory _$ReviewListResponseWrapperCopyWith(_ReviewListResponseWrapper value, $Res Function(_ReviewListResponseWrapper) _then) = __$ReviewListResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 ReviewListResponseDto data
});


@override $ReviewListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$ReviewListResponseWrapperCopyWithImpl<$Res>
    implements _$ReviewListResponseWrapperCopyWith<$Res> {
  __$ReviewListResponseWrapperCopyWithImpl(this._self, this._then);

  final _ReviewListResponseWrapper _self;
  final $Res Function(_ReviewListResponseWrapper) _then;

/// Create a copy of ReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ReviewListResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReviewListResponseDto,
  ));
}

/// Create a copy of ReviewListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewListResponseDtoCopyWith<$Res> get data {
  
  return $ReviewListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ReviewListResponseDto {

 List<ReviewDto> get content; int get number; int get size; int get totalElements; int get totalPages;
/// Create a copy of ReviewListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewListResponseDtoCopyWith<ReviewListResponseDto> get copyWith => _$ReviewListResponseDtoCopyWithImpl<ReviewListResponseDto>(this as ReviewListResponseDto, _$identity);

  /// Serializes this ReviewListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewListResponseDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'ReviewListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $ReviewListResponseDtoCopyWith<$Res>  {
  factory $ReviewListResponseDtoCopyWith(ReviewListResponseDto value, $Res Function(ReviewListResponseDto) _then) = _$ReviewListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<ReviewDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class _$ReviewListResponseDtoCopyWithImpl<$Res>
    implements $ReviewListResponseDtoCopyWith<$Res> {
  _$ReviewListResponseDtoCopyWithImpl(this._self, this._then);

  final ReviewListResponseDto _self;
  final $Res Function(ReviewListResponseDto) _then;

/// Create a copy of ReviewListResponseDto
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


/// Adds pattern-matching-related methods to [ReviewListResponseDto].
extension ReviewListResponseDtoPatterns on ReviewListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewListResponseDto() when $default != null:
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
case _ReviewListResponseDto() when $default != null:
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
case _ReviewListResponseDto():
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
case _ReviewListResponseDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewListResponseDto implements ReviewListResponseDto {
  const _ReviewListResponseDto({required final  List<ReviewDto> content, required this.number, required this.size, required this.totalElements, required this.totalPages}): _content = content;
  factory _ReviewListResponseDto.fromJson(Map<String, dynamic> json) => _$ReviewListResponseDtoFromJson(json);

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

/// Create a copy of ReviewListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewListResponseDtoCopyWith<_ReviewListResponseDto> get copyWith => __$ReviewListResponseDtoCopyWithImpl<_ReviewListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewListResponseDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'ReviewListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$ReviewListResponseDtoCopyWith<$Res> implements $ReviewListResponseDtoCopyWith<$Res> {
  factory _$ReviewListResponseDtoCopyWith(_ReviewListResponseDto value, $Res Function(_ReviewListResponseDto) _then) = __$ReviewListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ReviewDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class __$ReviewListResponseDtoCopyWithImpl<$Res>
    implements _$ReviewListResponseDtoCopyWith<$Res> {
  __$ReviewListResponseDtoCopyWithImpl(this._self, this._then);

  final _ReviewListResponseDto _self;
  final $Res Function(_ReviewListResponseDto) _then;

/// Create a copy of ReviewListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_ReviewListResponseDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<ReviewDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReviewDto {

 int get id; int get productId; String get productName; String? get productThumbnailUrl; String? get orderItemOptionName; String get content; List<ReviewPhotoDto> get photos;@LocalDateTimeConverter() DateTime get createdAt;@LocalDateTimeConverter() DateTime get updatedAt; bool get canEdit;
/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDtoCopyWith<ReviewDto> get copyWith => _$ReviewDtoCopyWithImpl<ReviewDto>(this as ReviewDto, _$identity);

  /// Serializes this ReviewDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productThumbnailUrl, productThumbnailUrl) || other.productThumbnailUrl == productThumbnailUrl)&&(identical(other.orderItemOptionName, orderItemOptionName) || other.orderItemOptionName == orderItemOptionName)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,productThumbnailUrl,orderItemOptionName,content,const DeepCollectionEquality().hash(photos),createdAt,updatedAt,canEdit);

@override
String toString() {
  return 'ReviewDto(id: $id, productId: $productId, productName: $productName, productThumbnailUrl: $productThumbnailUrl, orderItemOptionName: $orderItemOptionName, content: $content, photos: $photos, createdAt: $createdAt, updatedAt: $updatedAt, canEdit: $canEdit)';
}


}

/// @nodoc
abstract mixin class $ReviewDtoCopyWith<$Res>  {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) _then) = _$ReviewDtoCopyWithImpl;
@useResult
$Res call({
 int id, int productId, String productName, String? productThumbnailUrl, String? orderItemOptionName, String content, List<ReviewPhotoDto> photos,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt, bool canEdit
});




}
/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res>
    implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._self, this._then);

  final ReviewDto _self;
  final $Res Function(ReviewDto) _then;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productThumbnailUrl = freezed,Object? orderItemOptionName = freezed,Object? content = null,Object? photos = null,Object? createdAt = null,Object? updatedAt = null,Object? canEdit = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productThumbnailUrl: freezed == productThumbnailUrl ? _self.productThumbnailUrl : productThumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,orderItemOptionName: freezed == orderItemOptionName ? _self.orderItemOptionName : orderItemOptionName // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<ReviewPhotoDto>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,canEdit: null == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewDto].
extension ReviewDtoPatterns on ReviewDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int productId,  String productName,  String? productThumbnailUrl,  String? orderItemOptionName,  String content,  List<ReviewPhotoDto> photos, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt,  bool canEdit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productThumbnailUrl,_that.orderItemOptionName,_that.content,_that.photos,_that.createdAt,_that.updatedAt,_that.canEdit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int productId,  String productName,  String? productThumbnailUrl,  String? orderItemOptionName,  String content,  List<ReviewPhotoDto> photos, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt,  bool canEdit)  $default,) {final _that = this;
switch (_that) {
case _ReviewDto():
return $default(_that.id,_that.productId,_that.productName,_that.productThumbnailUrl,_that.orderItemOptionName,_that.content,_that.photos,_that.createdAt,_that.updatedAt,_that.canEdit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int productId,  String productName,  String? productThumbnailUrl,  String? orderItemOptionName,  String content,  List<ReviewPhotoDto> photos, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt,  bool canEdit)?  $default,) {final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productThumbnailUrl,_that.orderItemOptionName,_that.content,_that.photos,_that.createdAt,_that.updatedAt,_that.canEdit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewDto implements ReviewDto {
  const _ReviewDto({required this.id, required this.productId, required this.productName, this.productThumbnailUrl, this.orderItemOptionName, required this.content, required final  List<ReviewPhotoDto> photos, @LocalDateTimeConverter() required this.createdAt, @LocalDateTimeConverter() required this.updatedAt, required this.canEdit}): _photos = photos;
  factory _ReviewDto.fromJson(Map<String, dynamic> json) => _$ReviewDtoFromJson(json);

@override final  int id;
@override final  int productId;
@override final  String productName;
@override final  String? productThumbnailUrl;
@override final  String? orderItemOptionName;
@override final  String content;
 final  List<ReviewPhotoDto> _photos;
@override List<ReviewPhotoDto> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@LocalDateTimeConverter() final  DateTime createdAt;
@override@LocalDateTimeConverter() final  DateTime updatedAt;
@override final  bool canEdit;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewDtoCopyWith<_ReviewDto> get copyWith => __$ReviewDtoCopyWithImpl<_ReviewDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productThumbnailUrl, productThumbnailUrl) || other.productThumbnailUrl == productThumbnailUrl)&&(identical(other.orderItemOptionName, orderItemOptionName) || other.orderItemOptionName == orderItemOptionName)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,productThumbnailUrl,orderItemOptionName,content,const DeepCollectionEquality().hash(_photos),createdAt,updatedAt,canEdit);

@override
String toString() {
  return 'ReviewDto(id: $id, productId: $productId, productName: $productName, productThumbnailUrl: $productThumbnailUrl, orderItemOptionName: $orderItemOptionName, content: $content, photos: $photos, createdAt: $createdAt, updatedAt: $updatedAt, canEdit: $canEdit)';
}


}

/// @nodoc
abstract mixin class _$ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$ReviewDtoCopyWith(_ReviewDto value, $Res Function(_ReviewDto) _then) = __$ReviewDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int productId, String productName, String? productThumbnailUrl, String? orderItemOptionName, String content, List<ReviewPhotoDto> photos,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt, bool canEdit
});




}
/// @nodoc
class __$ReviewDtoCopyWithImpl<$Res>
    implements _$ReviewDtoCopyWith<$Res> {
  __$ReviewDtoCopyWithImpl(this._self, this._then);

  final _ReviewDto _self;
  final $Res Function(_ReviewDto) _then;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productThumbnailUrl = freezed,Object? orderItemOptionName = freezed,Object? content = null,Object? photos = null,Object? createdAt = null,Object? updatedAt = null,Object? canEdit = null,}) {
  return _then(_ReviewDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productThumbnailUrl: freezed == productThumbnailUrl ? _self.productThumbnailUrl : productThumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,orderItemOptionName: freezed == orderItemOptionName ? _self.orderItemOptionName : orderItemOptionName // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<ReviewPhotoDto>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,canEdit: null == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReviewPhotoDto {

 String get photoUrl; int get sortOrder;
/// Create a copy of ReviewPhotoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewPhotoDtoCopyWith<ReviewPhotoDto> get copyWith => _$ReviewPhotoDtoCopyWithImpl<ReviewPhotoDto>(this as ReviewPhotoDto, _$identity);

  /// Serializes this ReviewPhotoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewPhotoDto&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoUrl,sortOrder);

@override
String toString() {
  return 'ReviewPhotoDto(photoUrl: $photoUrl, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ReviewPhotoDtoCopyWith<$Res>  {
  factory $ReviewPhotoDtoCopyWith(ReviewPhotoDto value, $Res Function(ReviewPhotoDto) _then) = _$ReviewPhotoDtoCopyWithImpl;
@useResult
$Res call({
 String photoUrl, int sortOrder
});




}
/// @nodoc
class _$ReviewPhotoDtoCopyWithImpl<$Res>
    implements $ReviewPhotoDtoCopyWith<$Res> {
  _$ReviewPhotoDtoCopyWithImpl(this._self, this._then);

  final ReviewPhotoDto _self;
  final $Res Function(ReviewPhotoDto) _then;

/// Create a copy of ReviewPhotoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? photoUrl = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
photoUrl: null == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewPhotoDto].
extension ReviewPhotoDtoPatterns on ReviewPhotoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewPhotoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewPhotoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewPhotoDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewPhotoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewPhotoDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewPhotoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String photoUrl,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewPhotoDto() when $default != null:
return $default(_that.photoUrl,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String photoUrl,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _ReviewPhotoDto():
return $default(_that.photoUrl,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String photoUrl,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _ReviewPhotoDto() when $default != null:
return $default(_that.photoUrl,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewPhotoDto implements ReviewPhotoDto {
  const _ReviewPhotoDto({required this.photoUrl, required this.sortOrder});
  factory _ReviewPhotoDto.fromJson(Map<String, dynamic> json) => _$ReviewPhotoDtoFromJson(json);

@override final  String photoUrl;
@override final  int sortOrder;

/// Create a copy of ReviewPhotoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewPhotoDtoCopyWith<_ReviewPhotoDto> get copyWith => __$ReviewPhotoDtoCopyWithImpl<_ReviewPhotoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewPhotoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewPhotoDto&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoUrl,sortOrder);

@override
String toString() {
  return 'ReviewPhotoDto(photoUrl: $photoUrl, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ReviewPhotoDtoCopyWith<$Res> implements $ReviewPhotoDtoCopyWith<$Res> {
  factory _$ReviewPhotoDtoCopyWith(_ReviewPhotoDto value, $Res Function(_ReviewPhotoDto) _then) = __$ReviewPhotoDtoCopyWithImpl;
@override @useResult
$Res call({
 String photoUrl, int sortOrder
});




}
/// @nodoc
class __$ReviewPhotoDtoCopyWithImpl<$Res>
    implements _$ReviewPhotoDtoCopyWith<$Res> {
  __$ReviewPhotoDtoCopyWithImpl(this._self, this._then);

  final _ReviewPhotoDto _self;
  final $Res Function(_ReviewPhotoDto) _then;

/// Create a copy of ReviewPhotoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? photoUrl = null,Object? sortOrder = null,}) {
  return _then(_ReviewPhotoDto(
photoUrl: null == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
