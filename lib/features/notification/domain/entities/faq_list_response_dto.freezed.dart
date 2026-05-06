// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaqListResponseWrapper {

 FaqListResponseDto get data;
/// Create a copy of FaqListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqListResponseWrapperCopyWith<FaqListResponseWrapper> get copyWith => _$FaqListResponseWrapperCopyWithImpl<FaqListResponseWrapper>(this as FaqListResponseWrapper, _$identity);

  /// Serializes this FaqListResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'FaqListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $FaqListResponseWrapperCopyWith<$Res>  {
  factory $FaqListResponseWrapperCopyWith(FaqListResponseWrapper value, $Res Function(FaqListResponseWrapper) _then) = _$FaqListResponseWrapperCopyWithImpl;
@useResult
$Res call({
 FaqListResponseDto data
});


$FaqListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$FaqListResponseWrapperCopyWithImpl<$Res>
    implements $FaqListResponseWrapperCopyWith<$Res> {
  _$FaqListResponseWrapperCopyWithImpl(this._self, this._then);

  final FaqListResponseWrapper _self;
  final $Res Function(FaqListResponseWrapper) _then;

/// Create a copy of FaqListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FaqListResponseDto,
  ));
}
/// Create a copy of FaqListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FaqListResponseDtoCopyWith<$Res> get data {
  
  return $FaqListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FaqListResponseWrapper].
extension FaqListResponseWrapperPatterns on FaqListResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqListResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqListResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _FaqListResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqListResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _FaqListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FaqListResponseDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqListResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FaqListResponseDto data)  $default,) {final _that = this;
switch (_that) {
case _FaqListResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FaqListResponseDto data)?  $default,) {final _that = this;
switch (_that) {
case _FaqListResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqListResponseWrapper implements FaqListResponseWrapper {
  const _FaqListResponseWrapper({required this.data});
  factory _FaqListResponseWrapper.fromJson(Map<String, dynamic> json) => _$FaqListResponseWrapperFromJson(json);

@override final  FaqListResponseDto data;

/// Create a copy of FaqListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqListResponseWrapperCopyWith<_FaqListResponseWrapper> get copyWith => __$FaqListResponseWrapperCopyWithImpl<_FaqListResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqListResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqListResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'FaqListResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$FaqListResponseWrapperCopyWith<$Res> implements $FaqListResponseWrapperCopyWith<$Res> {
  factory _$FaqListResponseWrapperCopyWith(_FaqListResponseWrapper value, $Res Function(_FaqListResponseWrapper) _then) = __$FaqListResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 FaqListResponseDto data
});


@override $FaqListResponseDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$FaqListResponseWrapperCopyWithImpl<$Res>
    implements _$FaqListResponseWrapperCopyWith<$Res> {
  __$FaqListResponseWrapperCopyWithImpl(this._self, this._then);

  final _FaqListResponseWrapper _self;
  final $Res Function(_FaqListResponseWrapper) _then;

/// Create a copy of FaqListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_FaqListResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FaqListResponseDto,
  ));
}

/// Create a copy of FaqListResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FaqListResponseDtoCopyWith<$Res> get data {
  
  return $FaqListResponseDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FaqListResponseDto {

 List<FaqDto> get content; int get number; int get size; int get totalElements; int get totalPages;
/// Create a copy of FaqListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqListResponseDtoCopyWith<FaqListResponseDto> get copyWith => _$FaqListResponseDtoCopyWithImpl<FaqListResponseDto>(this as FaqListResponseDto, _$identity);

  /// Serializes this FaqListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqListResponseDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'FaqListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $FaqListResponseDtoCopyWith<$Res>  {
  factory $FaqListResponseDtoCopyWith(FaqListResponseDto value, $Res Function(FaqListResponseDto) _then) = _$FaqListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<FaqDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class _$FaqListResponseDtoCopyWithImpl<$Res>
    implements $FaqListResponseDtoCopyWith<$Res> {
  _$FaqListResponseDtoCopyWithImpl(this._self, this._then);

  final FaqListResponseDto _self;
  final $Res Function(FaqListResponseDto) _then;

/// Create a copy of FaqListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<FaqDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqListResponseDto].
extension FaqListResponseDtoPatterns on FaqListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _FaqListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _FaqListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FaqDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqListResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FaqDto> content,  int number,  int size,  int totalElements,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _FaqListResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FaqDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _FaqListResponseDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqListResponseDto implements FaqListResponseDto {
  const _FaqListResponseDto({required final  List<FaqDto> content, required this.number, required this.size, required this.totalElements, required this.totalPages}): _content = content;
  factory _FaqListResponseDto.fromJson(Map<String, dynamic> json) => _$FaqListResponseDtoFromJson(json);

 final  List<FaqDto> _content;
@override List<FaqDto> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int number;
@override final  int size;
@override final  int totalElements;
@override final  int totalPages;

/// Create a copy of FaqListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqListResponseDtoCopyWith<_FaqListResponseDto> get copyWith => __$FaqListResponseDtoCopyWithImpl<_FaqListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqListResponseDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'FaqListResponseDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$FaqListResponseDtoCopyWith<$Res> implements $FaqListResponseDtoCopyWith<$Res> {
  factory _$FaqListResponseDtoCopyWith(_FaqListResponseDto value, $Res Function(_FaqListResponseDto) _then) = __$FaqListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<FaqDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class __$FaqListResponseDtoCopyWithImpl<$Res>
    implements _$FaqListResponseDtoCopyWith<$Res> {
  __$FaqListResponseDtoCopyWithImpl(this._self, this._then);

  final _FaqListResponseDto _self;
  final $Res Function(_FaqListResponseDto) _then;

/// Create a copy of FaqListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_FaqListResponseDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<FaqDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FaqDto {

 int get id; String get category; String get question; String get answer; int get sortOrder; DateTime get createdAt; DateTime get updatedAt; bool get isVisible;
/// Create a copy of FaqDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqDtoCopyWith<FaqDto> get copyWith => _$FaqDtoCopyWithImpl<FaqDto>(this as FaqDto, _$identity);

  /// Serializes this FaqDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqDto&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,question,answer,sortOrder,createdAt,updatedAt,isVisible);

@override
String toString() {
  return 'FaqDto(id: $id, category: $category, question: $question, answer: $answer, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $FaqDtoCopyWith<$Res>  {
  factory $FaqDtoCopyWith(FaqDto value, $Res Function(FaqDto) _then) = _$FaqDtoCopyWithImpl;
@useResult
$Res call({
 int id, String category, String question, String answer, int sortOrder, DateTime createdAt, DateTime updatedAt, bool isVisible
});




}
/// @nodoc
class _$FaqDtoCopyWithImpl<$Res>
    implements $FaqDtoCopyWith<$Res> {
  _$FaqDtoCopyWithImpl(this._self, this._then);

  final FaqDto _self;
  final $Res Function(FaqDto) _then;

/// Create a copy of FaqDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? question = null,Object? answer = null,Object? sortOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqDto].
extension FaqDtoPatterns on FaqDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqDto value)  $default,){
final _that = this;
switch (_that) {
case _FaqDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqDto value)?  $default,){
final _that = this;
switch (_that) {
case _FaqDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String category,  String question,  String answer,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqDto() when $default != null:
return $default(_that.id,_that.category,_that.question,_that.answer,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.isVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String category,  String question,  String answer,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _FaqDto():
return $default(_that.id,_that.category,_that.question,_that.answer,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.isVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String category,  String question,  String answer,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _FaqDto() when $default != null:
return $default(_that.id,_that.category,_that.question,_that.answer,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqDto implements FaqDto {
  const _FaqDto({required this.id, required this.category, required this.question, required this.answer, required this.sortOrder, required this.createdAt, required this.updatedAt, required this.isVisible});
  factory _FaqDto.fromJson(Map<String, dynamic> json) => _$FaqDtoFromJson(json);

@override final  int id;
@override final  String category;
@override final  String question;
@override final  String answer;
@override final  int sortOrder;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  bool isVisible;

/// Create a copy of FaqDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqDtoCopyWith<_FaqDto> get copyWith => __$FaqDtoCopyWithImpl<_FaqDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqDto&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,question,answer,sortOrder,createdAt,updatedAt,isVisible);

@override
String toString() {
  return 'FaqDto(id: $id, category: $category, question: $question, answer: $answer, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$FaqDtoCopyWith<$Res> implements $FaqDtoCopyWith<$Res> {
  factory _$FaqDtoCopyWith(_FaqDto value, $Res Function(_FaqDto) _then) = __$FaqDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String category, String question, String answer, int sortOrder, DateTime createdAt, DateTime updatedAt, bool isVisible
});




}
/// @nodoc
class __$FaqDtoCopyWithImpl<$Res>
    implements _$FaqDtoCopyWith<$Res> {
  __$FaqDtoCopyWithImpl(this._self, this._then);

  final _FaqDto _self;
  final $Res Function(_FaqDto) _then;

/// Create a copy of FaqDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? question = null,Object? answer = null,Object? sortOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? isVisible = null,}) {
  return _then(_FaqDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
