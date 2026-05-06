// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_content_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaqContentResponseWrapper {

 FaqContentDto get data;
/// Create a copy of FaqContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqContentResponseWrapperCopyWith<FaqContentResponseWrapper> get copyWith => _$FaqContentResponseWrapperCopyWithImpl<FaqContentResponseWrapper>(this as FaqContentResponseWrapper, _$identity);

  /// Serializes this FaqContentResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqContentResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'FaqContentResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $FaqContentResponseWrapperCopyWith<$Res>  {
  factory $FaqContentResponseWrapperCopyWith(FaqContentResponseWrapper value, $Res Function(FaqContentResponseWrapper) _then) = _$FaqContentResponseWrapperCopyWithImpl;
@useResult
$Res call({
 FaqContentDto data
});


$FaqContentDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$FaqContentResponseWrapperCopyWithImpl<$Res>
    implements $FaqContentResponseWrapperCopyWith<$Res> {
  _$FaqContentResponseWrapperCopyWithImpl(this._self, this._then);

  final FaqContentResponseWrapper _self;
  final $Res Function(FaqContentResponseWrapper) _then;

/// Create a copy of FaqContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FaqContentDto,
  ));
}
/// Create a copy of FaqContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FaqContentDtoCopyWith<$Res> get data {
  
  return $FaqContentDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FaqContentResponseWrapper].
extension FaqContentResponseWrapperPatterns on FaqContentResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqContentResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqContentResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqContentResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _FaqContentResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqContentResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _FaqContentResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FaqContentDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqContentResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FaqContentDto data)  $default,) {final _that = this;
switch (_that) {
case _FaqContentResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FaqContentDto data)?  $default,) {final _that = this;
switch (_that) {
case _FaqContentResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqContentResponseWrapper implements FaqContentResponseWrapper {
  const _FaqContentResponseWrapper({required this.data});
  factory _FaqContentResponseWrapper.fromJson(Map<String, dynamic> json) => _$FaqContentResponseWrapperFromJson(json);

@override final  FaqContentDto data;

/// Create a copy of FaqContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqContentResponseWrapperCopyWith<_FaqContentResponseWrapper> get copyWith => __$FaqContentResponseWrapperCopyWithImpl<_FaqContentResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqContentResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqContentResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'FaqContentResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$FaqContentResponseWrapperCopyWith<$Res> implements $FaqContentResponseWrapperCopyWith<$Res> {
  factory _$FaqContentResponseWrapperCopyWith(_FaqContentResponseWrapper value, $Res Function(_FaqContentResponseWrapper) _then) = __$FaqContentResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 FaqContentDto data
});


@override $FaqContentDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$FaqContentResponseWrapperCopyWithImpl<$Res>
    implements _$FaqContentResponseWrapperCopyWith<$Res> {
  __$FaqContentResponseWrapperCopyWithImpl(this._self, this._then);

  final _FaqContentResponseWrapper _self;
  final $Res Function(_FaqContentResponseWrapper) _then;

/// Create a copy of FaqContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_FaqContentResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FaqContentDto,
  ));
}

/// Create a copy of FaqContentResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FaqContentDtoCopyWith<$Res> get data {
  
  return $FaqContentDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FaqContentDto {

 int get id; String get category; String get question; String get answer; int get sortOrder; DateTime get createdAt; DateTime get updatedAt; bool get isVisible;
/// Create a copy of FaqContentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqContentDtoCopyWith<FaqContentDto> get copyWith => _$FaqContentDtoCopyWithImpl<FaqContentDto>(this as FaqContentDto, _$identity);

  /// Serializes this FaqContentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqContentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,question,answer,sortOrder,createdAt,updatedAt,isVisible);

@override
String toString() {
  return 'FaqContentDto(id: $id, category: $category, question: $question, answer: $answer, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $FaqContentDtoCopyWith<$Res>  {
  factory $FaqContentDtoCopyWith(FaqContentDto value, $Res Function(FaqContentDto) _then) = _$FaqContentDtoCopyWithImpl;
@useResult
$Res call({
 int id, String category, String question, String answer, int sortOrder, DateTime createdAt, DateTime updatedAt, bool isVisible
});




}
/// @nodoc
class _$FaqContentDtoCopyWithImpl<$Res>
    implements $FaqContentDtoCopyWith<$Res> {
  _$FaqContentDtoCopyWithImpl(this._self, this._then);

  final FaqContentDto _self;
  final $Res Function(FaqContentDto) _then;

/// Create a copy of FaqContentDto
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


/// Adds pattern-matching-related methods to [FaqContentDto].
extension FaqContentDtoPatterns on FaqContentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqContentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqContentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqContentDto value)  $default,){
final _that = this;
switch (_that) {
case _FaqContentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqContentDto value)?  $default,){
final _that = this;
switch (_that) {
case _FaqContentDto() when $default != null:
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
case _FaqContentDto() when $default != null:
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
case _FaqContentDto():
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
case _FaqContentDto() when $default != null:
return $default(_that.id,_that.category,_that.question,_that.answer,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqContentDto implements FaqContentDto {
  const _FaqContentDto({required this.id, required this.category, required this.question, required this.answer, required this.sortOrder, required this.createdAt, required this.updatedAt, required this.isVisible});
  factory _FaqContentDto.fromJson(Map<String, dynamic> json) => _$FaqContentDtoFromJson(json);

@override final  int id;
@override final  String category;
@override final  String question;
@override final  String answer;
@override final  int sortOrder;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  bool isVisible;

/// Create a copy of FaqContentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqContentDtoCopyWith<_FaqContentDto> get copyWith => __$FaqContentDtoCopyWithImpl<_FaqContentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqContentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqContentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,question,answer,sortOrder,createdAt,updatedAt,isVisible);

@override
String toString() {
  return 'FaqContentDto(id: $id, category: $category, question: $question, answer: $answer, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$FaqContentDtoCopyWith<$Res> implements $FaqContentDtoCopyWith<$Res> {
  factory _$FaqContentDtoCopyWith(_FaqContentDto value, $Res Function(_FaqContentDto) _then) = __$FaqContentDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String category, String question, String answer, int sortOrder, DateTime createdAt, DateTime updatedAt, bool isVisible
});




}
/// @nodoc
class __$FaqContentDtoCopyWithImpl<$Res>
    implements _$FaqContentDtoCopyWith<$Res> {
  __$FaqContentDtoCopyWithImpl(this._self, this._then);

  final _FaqContentDto _self;
  final $Res Function(_FaqContentDto) _then;

/// Create a copy of FaqContentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? question = null,Object? answer = null,Object? sortOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? isVisible = null,}) {
  return _then(_FaqContentDto(
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
