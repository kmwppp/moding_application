// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DateListResponseWrapper {

 DateListResponseDto get data;
/// Create a copy of DateListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateListResponseWrapperCopyWith<DateListResponseWrapper> get copyWith => _$DateListResponseWrapperCopyWithImpl<DateListResponseWrapper>(this as DateListResponseWrapper, _$identity);

  /// Serializes this DateListResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'DateListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $DateListResponseWrapperCopyWith<$Res>  {
  factory $DateListResponseWrapperCopyWith(DateListResponseWrapper value, $Res Function(DateListResponseWrapper) _then) = _$DateListResponseWrapperCopyWithImpl;
@useResult
$Res call({
 DateListResponseDto data
});


$DateListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$DateListResponseWrapperCopyWithImpl<$Res>
    implements $DateListResponseWrapperCopyWith<$Res> {
  _$DateListResponseWrapperCopyWithImpl(this._self, this._then);

  final DateListResponseWrapper _self;
  final $Res Function(DateListResponseWrapper) _then;

/// Create a copy of DateListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateListResponseDto,
  ));
}
/// Create a copy of DateListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateListResponseDtoCopyWith<$Res> get data {
  
  return $DateListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DateListResponseWrapper].
extension DateListResponseWrapperPatterns on DateListResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DateListResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DateListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DateListResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _DateListResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DateListResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _DateListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateListResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DateListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateListResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _DateListResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateListResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _DateListResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DateListResponseWrapper implements DateListResponseWrapper {
  const _DateListResponseWrapper({required this.data});
  factory _DateListResponseWrapper.fromJson(Map<String, dynamic> json) => _$DateListResponseWrapperFromJson(json);

@override final  DateListResponseDto data;

/// Create a copy of DateListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateListResponseWrapperCopyWith<_DateListResponseWrapper> get copyWith => __$DateListResponseWrapperCopyWithImpl<_DateListResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DateListResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'DateListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$DateListResponseWrapperCopyWith<$Res> implements $DateListResponseWrapperCopyWith<$Res> {
  factory _$DateListResponseWrapperCopyWith(_DateListResponseWrapper value, $Res Function(_DateListResponseWrapper) _then) = __$DateListResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 DateListResponseDto data
});


@override $DateListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$DateListResponseWrapperCopyWithImpl<$Res>
    implements _$DateListResponseWrapperCopyWith<$Res> {
  __$DateListResponseWrapperCopyWithImpl(this._self, this._then);

  final _DateListResponseWrapper _self;
  final $Res Function(_DateListResponseWrapper) _then;

/// Create a copy of DateListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_DateListResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateListResponseDto,
  ));
}

/// Create a copy of DateListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateListResponseDtoCopyWith<$Res> get data {
  
  return $DateListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DateListResponseDto {

 List<String> get content; int get number; int get size; int get totalElements; int get totalPages;
/// Create a copy of DateListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateListResponseDtoCopyWith<DateListResponseDto> get copyWith => _$DateListResponseDtoCopyWithImpl<DateListResponseDto>(this as DateListResponseDto, _$identity);

  /// Serializes this DateListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateListResponseDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'DateListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $DateListResponseDtoCopyWith<$Res>  {
  factory $DateListResponseDtoCopyWith(DateListResponseDto value, $Res Function(DateListResponseDto) _then) = _$DateListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<String> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class _$DateListResponseDtoCopyWithImpl<$Res>
    implements $DateListResponseDtoCopyWith<$Res> {
  _$DateListResponseDtoCopyWithImpl(this._self, this._then);

  final DateListResponseDto _self;
  final $Res Function(DateListResponseDto) _then;

/// Create a copy of DateListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<String>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DateListResponseDto].
extension DateListResponseDtoPatterns on DateListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DateListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DateListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DateListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DateListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DateListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DateListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DateListResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> content,  int number,  int size,  int totalElements,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _DateListResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _DateListResponseDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DateListResponseDto implements DateListResponseDto {
  const _DateListResponseDto({required final  List<String> content, required this.number, required this.size, required this.totalElements, required this.totalPages}): _content = content;
  factory _DateListResponseDto.fromJson(Map<String, dynamic> json) => _$DateListResponseDtoFromJson(json);

 final  List<String> _content;
@override List<String> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int number;
@override final  int size;
@override final  int totalElements;
@override final  int totalPages;

/// Create a copy of DateListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateListResponseDtoCopyWith<_DateListResponseDto> get copyWith => __$DateListResponseDtoCopyWithImpl<_DateListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DateListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateListResponseDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'DateListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$DateListResponseDtoCopyWith<$Res> implements $DateListResponseDtoCopyWith<$Res> {
  factory _$DateListResponseDtoCopyWith(_DateListResponseDto value, $Res Function(_DateListResponseDto) _then) = __$DateListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class __$DateListResponseDtoCopyWithImpl<$Res>
    implements _$DateListResponseDtoCopyWith<$Res> {
  __$DateListResponseDtoCopyWithImpl(this._self, this._then);

  final _DateListResponseDto _self;
  final $Res Function(_DateListResponseDto) _then;

/// Create a copy of DateListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_DateListResponseDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<String>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
