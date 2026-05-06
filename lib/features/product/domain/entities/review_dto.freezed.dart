// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewDto {

 int get id; String get name; String get content;@JsonKey(fromJson: _photosFromJson) List<ReviewPhotoDto> get photos;@LocalDateTimeConverter() DateTime get createdAt;
/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDtoCopyWith<ReviewDto> get copyWith => _$ReviewDtoCopyWithImpl<ReviewDto>(this as ReviewDto, _$identity);

  /// Serializes this ReviewDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,content,const DeepCollectionEquality().hash(photos),createdAt);

@override
String toString() {
  return 'ReviewDto(id: $id, name: $name, content: $content, photos: $photos, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReviewDtoCopyWith<$Res>  {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) _then) = _$ReviewDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String content,@JsonKey(fromJson: _photosFromJson) List<ReviewPhotoDto> photos,@LocalDateTimeConverter() DateTime createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? content = null,Object? photos = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<ReviewPhotoDto>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String content, @JsonKey(fromJson: _photosFromJson)  List<ReviewPhotoDto> photos, @LocalDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
return $default(_that.id,_that.name,_that.content,_that.photos,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String content, @JsonKey(fromJson: _photosFromJson)  List<ReviewPhotoDto> photos, @LocalDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReviewDto():
return $default(_that.id,_that.name,_that.content,_that.photos,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String content, @JsonKey(fromJson: _photosFromJson)  List<ReviewPhotoDto> photos, @LocalDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
return $default(_that.id,_that.name,_that.content,_that.photos,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewDto implements ReviewDto {
  const _ReviewDto({required this.id, required this.name, required this.content, @JsonKey(fromJson: _photosFromJson) required final  List<ReviewPhotoDto> photos, @LocalDateTimeConverter() required this.createdAt}): _photos = photos;
  factory _ReviewDto.fromJson(Map<String, dynamic> json) => _$ReviewDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String content;
 final  List<ReviewPhotoDto> _photos;
@override@JsonKey(fromJson: _photosFromJson) List<ReviewPhotoDto> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@LocalDateTimeConverter() final  DateTime createdAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,content,const DeepCollectionEquality().hash(_photos),createdAt);

@override
String toString() {
  return 'ReviewDto(id: $id, name: $name, content: $content, photos: $photos, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$ReviewDtoCopyWith(_ReviewDto value, $Res Function(_ReviewDto) _then) = __$ReviewDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String content,@JsonKey(fromJson: _photosFromJson) List<ReviewPhotoDto> photos,@LocalDateTimeConverter() DateTime createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? content = null,Object? photos = null,Object? createdAt = null,}) {
  return _then(_ReviewDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<ReviewPhotoDto>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
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
