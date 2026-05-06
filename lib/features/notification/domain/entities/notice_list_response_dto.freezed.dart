// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoticeListResponseWrapper {

 NoticeListResponseDto get data;
/// Create a copy of NoticeListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoticeListResponseWrapperCopyWith<NoticeListResponseWrapper> get copyWith => _$NoticeListResponseWrapperCopyWithImpl<NoticeListResponseWrapper>(this as NoticeListResponseWrapper, _$identity);

  /// Serializes this NoticeListResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoticeListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'NoticeListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $NoticeListResponseWrapperCopyWith<$Res>  {
  factory $NoticeListResponseWrapperCopyWith(NoticeListResponseWrapper value, $Res Function(NoticeListResponseWrapper) _then) = _$NoticeListResponseWrapperCopyWithImpl;
@useResult
$Res call({
 NoticeListResponseDto data
});


$NoticeListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$NoticeListResponseWrapperCopyWithImpl<$Res>
    implements $NoticeListResponseWrapperCopyWith<$Res> {
  _$NoticeListResponseWrapperCopyWithImpl(this._self, this._then);

  final NoticeListResponseWrapper _self;
  final $Res Function(NoticeListResponseWrapper) _then;

/// Create a copy of NoticeListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NoticeListResponseDto,
  ));
}
/// Create a copy of NoticeListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoticeListResponseDtoCopyWith<$Res> get data {
  
  return $NoticeListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NoticeListResponseWrapper].
extension NoticeListResponseWrapperPatterns on NoticeListResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoticeListResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoticeListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoticeListResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _NoticeListResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoticeListResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _NoticeListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NoticeListResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoticeListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NoticeListResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _NoticeListResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NoticeListResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _NoticeListResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoticeListResponseWrapper implements NoticeListResponseWrapper {
  const _NoticeListResponseWrapper({required this.data});
  factory _NoticeListResponseWrapper.fromJson(Map<String, dynamic> json) => _$NoticeListResponseWrapperFromJson(json);

@override final  NoticeListResponseDto data;

/// Create a copy of NoticeListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoticeListResponseWrapperCopyWith<_NoticeListResponseWrapper> get copyWith => __$NoticeListResponseWrapperCopyWithImpl<_NoticeListResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoticeListResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoticeListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'NoticeListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$NoticeListResponseWrapperCopyWith<$Res> implements $NoticeListResponseWrapperCopyWith<$Res> {
  factory _$NoticeListResponseWrapperCopyWith(_NoticeListResponseWrapper value, $Res Function(_NoticeListResponseWrapper) _then) = __$NoticeListResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 NoticeListResponseDto data
});


@override $NoticeListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$NoticeListResponseWrapperCopyWithImpl<$Res>
    implements _$NoticeListResponseWrapperCopyWith<$Res> {
  __$NoticeListResponseWrapperCopyWithImpl(this._self, this._then);

  final _NoticeListResponseWrapper _self;
  final $Res Function(_NoticeListResponseWrapper) _then;

/// Create a copy of NoticeListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_NoticeListResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NoticeListResponseDto,
  ));
}

/// Create a copy of NoticeListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoticeListResponseDtoCopyWith<$Res> get data {
  
  return $NoticeListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NoticeListResponseDto {

 List<NoticeListDto> get content; int get number; int get size; int get totalElements; int get totalPages;
/// Create a copy of NoticeListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoticeListResponseDtoCopyWith<NoticeListResponseDto> get copyWith => _$NoticeListResponseDtoCopyWithImpl<NoticeListResponseDto>(this as NoticeListResponseDto, _$identity);

  /// Serializes this NoticeListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoticeListResponseDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'NoticeListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $NoticeListResponseDtoCopyWith<$Res>  {
  factory $NoticeListResponseDtoCopyWith(NoticeListResponseDto value, $Res Function(NoticeListResponseDto) _then) = _$NoticeListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<NoticeListDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class _$NoticeListResponseDtoCopyWithImpl<$Res>
    implements $NoticeListResponseDtoCopyWith<$Res> {
  _$NoticeListResponseDtoCopyWithImpl(this._self, this._then);

  final NoticeListResponseDto _self;
  final $Res Function(NoticeListResponseDto) _then;

/// Create a copy of NoticeListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<NoticeListDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NoticeListResponseDto].
extension NoticeListResponseDtoPatterns on NoticeListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoticeListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoticeListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoticeListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _NoticeListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoticeListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _NoticeListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NoticeListDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoticeListResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NoticeListDto> content,  int number,  int size,  int totalElements,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _NoticeListResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NoticeListDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _NoticeListResponseDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoticeListResponseDto implements NoticeListResponseDto {
  const _NoticeListResponseDto({required final  List<NoticeListDto> content, required this.number, required this.size, required this.totalElements, required this.totalPages}): _content = content;
  factory _NoticeListResponseDto.fromJson(Map<String, dynamic> json) => _$NoticeListResponseDtoFromJson(json);

 final  List<NoticeListDto> _content;
@override List<NoticeListDto> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int number;
@override final  int size;
@override final  int totalElements;
@override final  int totalPages;

/// Create a copy of NoticeListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoticeListResponseDtoCopyWith<_NoticeListResponseDto> get copyWith => __$NoticeListResponseDtoCopyWithImpl<_NoticeListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoticeListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoticeListResponseDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'NoticeListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$NoticeListResponseDtoCopyWith<$Res> implements $NoticeListResponseDtoCopyWith<$Res> {
  factory _$NoticeListResponseDtoCopyWith(_NoticeListResponseDto value, $Res Function(_NoticeListResponseDto) _then) = __$NoticeListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<NoticeListDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class __$NoticeListResponseDtoCopyWithImpl<$Res>
    implements _$NoticeListResponseDtoCopyWith<$Res> {
  __$NoticeListResponseDtoCopyWithImpl(this._self, this._then);

  final _NoticeListResponseDto _self;
  final $Res Function(_NoticeListResponseDto) _then;

/// Create a copy of NoticeListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_NoticeListResponseDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<NoticeListDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$NoticeListDto {

 int get id; String get title; int get sortOrder; DateTime get createdAt; bool get isVisible;
/// Create a copy of NoticeListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoticeListDtoCopyWith<NoticeListDto> get copyWith => _$NoticeListDtoCopyWithImpl<NoticeListDto>(this as NoticeListDto, _$identity);

  /// Serializes this NoticeListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoticeListDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,sortOrder,createdAt,isVisible);

@override
String toString() {
  return 'NoticeListDto(id: $id, title: $title, sortOrder: $sortOrder, createdAt: $createdAt, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $NoticeListDtoCopyWith<$Res>  {
  factory $NoticeListDtoCopyWith(NoticeListDto value, $Res Function(NoticeListDto) _then) = _$NoticeListDtoCopyWithImpl;
@useResult
$Res call({
 int id, String title, int sortOrder, DateTime createdAt, bool isVisible
});




}
/// @nodoc
class _$NoticeListDtoCopyWithImpl<$Res>
    implements $NoticeListDtoCopyWith<$Res> {
  _$NoticeListDtoCopyWithImpl(this._self, this._then);

  final NoticeListDto _self;
  final $Res Function(NoticeListDto) _then;

/// Create a copy of NoticeListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? sortOrder = null,Object? createdAt = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NoticeListDto].
extension NoticeListDtoPatterns on NoticeListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoticeListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoticeListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoticeListDto value)  $default,){
final _that = this;
switch (_that) {
case _NoticeListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoticeListDto value)?  $default,){
final _that = this;
switch (_that) {
case _NoticeListDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  int sortOrder,  DateTime createdAt,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoticeListDto() when $default != null:
return $default(_that.id,_that.title,_that.sortOrder,_that.createdAt,_that.isVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  int sortOrder,  DateTime createdAt,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _NoticeListDto():
return $default(_that.id,_that.title,_that.sortOrder,_that.createdAt,_that.isVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  int sortOrder,  DateTime createdAt,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _NoticeListDto() when $default != null:
return $default(_that.id,_that.title,_that.sortOrder,_that.createdAt,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoticeListDto implements NoticeListDto {
  const _NoticeListDto({required this.id, required this.title, required this.sortOrder, required this.createdAt, required this.isVisible});
  factory _NoticeListDto.fromJson(Map<String, dynamic> json) => _$NoticeListDtoFromJson(json);

@override final  int id;
@override final  String title;
@override final  int sortOrder;
@override final  DateTime createdAt;
@override final  bool isVisible;

/// Create a copy of NoticeListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoticeListDtoCopyWith<_NoticeListDto> get copyWith => __$NoticeListDtoCopyWithImpl<_NoticeListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoticeListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoticeListDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,sortOrder,createdAt,isVisible);

@override
String toString() {
  return 'NoticeListDto(id: $id, title: $title, sortOrder: $sortOrder, createdAt: $createdAt, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$NoticeListDtoCopyWith<$Res> implements $NoticeListDtoCopyWith<$Res> {
  factory _$NoticeListDtoCopyWith(_NoticeListDto value, $Res Function(_NoticeListDto) _then) = __$NoticeListDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, int sortOrder, DateTime createdAt, bool isVisible
});




}
/// @nodoc
class __$NoticeListDtoCopyWithImpl<$Res>
    implements _$NoticeListDtoCopyWith<$Res> {
  __$NoticeListDtoCopyWithImpl(this._self, this._then);

  final _NoticeListDto _self;
  final $Res Function(_NoticeListDto) _then;

/// Create a copy of NoticeListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? sortOrder = null,Object? createdAt = null,Object? isVisible = null,}) {
  return _then(_NoticeListDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
