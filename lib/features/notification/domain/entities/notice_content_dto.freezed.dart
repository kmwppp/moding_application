// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_content_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoticeContentResponseWrapper {

 NoticeContentDto get data;
/// Create a copy of NoticeContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoticeContentResponseWrapperCopyWith<NoticeContentResponseWrapper> get copyWith => _$NoticeContentResponseWrapperCopyWithImpl<NoticeContentResponseWrapper>(this as NoticeContentResponseWrapper, _$identity);

  /// Serializes this NoticeContentResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoticeContentResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'NoticeContentResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $NoticeContentResponseWrapperCopyWith<$Res>  {
  factory $NoticeContentResponseWrapperCopyWith(NoticeContentResponseWrapper value, $Res Function(NoticeContentResponseWrapper) _then) = _$NoticeContentResponseWrapperCopyWithImpl;
@useResult
$Res call({
 NoticeContentDto data
});


$NoticeContentDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$NoticeContentResponseWrapperCopyWithImpl<$Res>
    implements $NoticeContentResponseWrapperCopyWith<$Res> {
  _$NoticeContentResponseWrapperCopyWithImpl(this._self, this._then);

  final NoticeContentResponseWrapper _self;
  final $Res Function(NoticeContentResponseWrapper) _then;

/// Create a copy of NoticeContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NoticeContentDto,
  ));
}
/// Create a copy of NoticeContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoticeContentDtoCopyWith<$Res> get data {
  
  return $NoticeContentDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NoticeContentResponseWrapper].
extension NoticeContentResponseWrapperPatterns on NoticeContentResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoticeContentResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoticeContentResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoticeContentResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _NoticeContentResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoticeContentResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _NoticeContentResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NoticeContentDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoticeContentResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NoticeContentDto data)  $default,) {final _that = this;
switch (_that) {
case _NoticeContentResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NoticeContentDto data)?  $default,) {final _that = this;
switch (_that) {
case _NoticeContentResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoticeContentResponseWrapper implements NoticeContentResponseWrapper {
  const _NoticeContentResponseWrapper({required this.data});
  factory _NoticeContentResponseWrapper.fromJson(Map<String, dynamic> json) => _$NoticeContentResponseWrapperFromJson(json);

@override final  NoticeContentDto data;

/// Create a copy of NoticeContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoticeContentResponseWrapperCopyWith<_NoticeContentResponseWrapper> get copyWith => __$NoticeContentResponseWrapperCopyWithImpl<_NoticeContentResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoticeContentResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoticeContentResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'NoticeContentResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$NoticeContentResponseWrapperCopyWith<$Res> implements $NoticeContentResponseWrapperCopyWith<$Res> {
  factory _$NoticeContentResponseWrapperCopyWith(_NoticeContentResponseWrapper value, $Res Function(_NoticeContentResponseWrapper) _then) = __$NoticeContentResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 NoticeContentDto data
});


@override $NoticeContentDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$NoticeContentResponseWrapperCopyWithImpl<$Res>
    implements _$NoticeContentResponseWrapperCopyWith<$Res> {
  __$NoticeContentResponseWrapperCopyWithImpl(this._self, this._then);

  final _NoticeContentResponseWrapper _self;
  final $Res Function(_NoticeContentResponseWrapper) _then;

/// Create a copy of NoticeContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_NoticeContentResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NoticeContentDto,
  ));
}

/// Create a copy of NoticeContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoticeContentDtoCopyWith<$Res> get data {
  
  return $NoticeContentDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NoticeContentDto {

 int get id; String get title; String get content; int get sortOrder; DateTime get createdAt; DateTime get updatedAt; bool get isVisible;
/// Create a copy of NoticeContentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoticeContentDtoCopyWith<NoticeContentDto> get copyWith => _$NoticeContentDtoCopyWithImpl<NoticeContentDto>(this as NoticeContentDto, _$identity);

  /// Serializes this NoticeContentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoticeContentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,sortOrder,createdAt,updatedAt,isVisible);

@override
String toString() {
  return 'NoticeContentDto(id: $id, title: $title, content: $content, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $NoticeContentDtoCopyWith<$Res>  {
  factory $NoticeContentDtoCopyWith(NoticeContentDto value, $Res Function(NoticeContentDto) _then) = _$NoticeContentDtoCopyWithImpl;
@useResult
$Res call({
 int id, String title, String content, int sortOrder, DateTime createdAt, DateTime updatedAt, bool isVisible
});




}
/// @nodoc
class _$NoticeContentDtoCopyWithImpl<$Res>
    implements $NoticeContentDtoCopyWith<$Res> {
  _$NoticeContentDtoCopyWithImpl(this._self, this._then);

  final NoticeContentDto _self;
  final $Res Function(NoticeContentDto) _then;

/// Create a copy of NoticeContentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? sortOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NoticeContentDto].
extension NoticeContentDtoPatterns on NoticeContentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoticeContentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoticeContentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoticeContentDto value)  $default,){
final _that = this;
switch (_that) {
case _NoticeContentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoticeContentDto value)?  $default,){
final _that = this;
switch (_that) {
case _NoticeContentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String content,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoticeContentDto() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.isVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String content,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _NoticeContentDto():
return $default(_that.id,_that.title,_that.content,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.isVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String content,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _NoticeContentDto() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoticeContentDto implements NoticeContentDto {
  const _NoticeContentDto({required this.id, required this.title, required this.content, required this.sortOrder, required this.createdAt, required this.updatedAt, required this.isVisible});
  factory _NoticeContentDto.fromJson(Map<String, dynamic> json) => _$NoticeContentDtoFromJson(json);

@override final  int id;
@override final  String title;
@override final  String content;
@override final  int sortOrder;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  bool isVisible;

/// Create a copy of NoticeContentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoticeContentDtoCopyWith<_NoticeContentDto> get copyWith => __$NoticeContentDtoCopyWithImpl<_NoticeContentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoticeContentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoticeContentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,sortOrder,createdAt,updatedAt,isVisible);

@override
String toString() {
  return 'NoticeContentDto(id: $id, title: $title, content: $content, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$NoticeContentDtoCopyWith<$Res> implements $NoticeContentDtoCopyWith<$Res> {
  factory _$NoticeContentDtoCopyWith(_NoticeContentDto value, $Res Function(_NoticeContentDto) _then) = __$NoticeContentDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String content, int sortOrder, DateTime createdAt, DateTime updatedAt, bool isVisible
});




}
/// @nodoc
class __$NoticeContentDtoCopyWithImpl<$Res>
    implements _$NoticeContentDtoCopyWith<$Res> {
  __$NoticeContentDtoCopyWithImpl(this._self, this._then);

  final _NoticeContentDto _self;
  final $Res Function(_NoticeContentDto) _then;

/// Create a copy of NoticeContentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? sortOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? isVisible = null,}) {
  return _then(_NoticeContentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
