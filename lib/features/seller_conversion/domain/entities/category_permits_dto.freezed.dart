// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_permits_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryPermitsResponseWrapper {

 List<CategoryPermitsDto> get data;
/// Create a copy of CategoryPermitsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryPermitsResponseWrapperCopyWith<CategoryPermitsResponseWrapper> get copyWith => _$CategoryPermitsResponseWrapperCopyWithImpl<CategoryPermitsResponseWrapper>(this as CategoryPermitsResponseWrapper, _$identity);

  /// Serializes this CategoryPermitsResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryPermitsResponseWrapper&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CategoryPermitsResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $CategoryPermitsResponseWrapperCopyWith<$Res>  {
  factory $CategoryPermitsResponseWrapperCopyWith(CategoryPermitsResponseWrapper value, $Res Function(CategoryPermitsResponseWrapper) _then) = _$CategoryPermitsResponseWrapperCopyWithImpl;
@useResult
$Res call({
 List<CategoryPermitsDto> data
});




}
/// @nodoc
class _$CategoryPermitsResponseWrapperCopyWithImpl<$Res>
    implements $CategoryPermitsResponseWrapperCopyWith<$Res> {
  _$CategoryPermitsResponseWrapperCopyWithImpl(this._self, this._then);

  final CategoryPermitsResponseWrapper _self;
  final $Res Function(CategoryPermitsResponseWrapper) _then;

/// Create a copy of CategoryPermitsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryPermitsResponseWrapper].
extension CategoryPermitsResponseWrapperPatterns on CategoryPermitsResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryPermitsResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryPermitsResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryPermitsResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _CategoryPermitsResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryPermitsResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryPermitsResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryPermitsDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryPermitsResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryPermitsDto> data)  $default,) {final _that = this;
switch (_that) {
case _CategoryPermitsResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryPermitsDto> data)?  $default,) {final _that = this;
switch (_that) {
case _CategoryPermitsResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryPermitsResponseWrapper implements CategoryPermitsResponseWrapper {
  const _CategoryPermitsResponseWrapper({required final  List<CategoryPermitsDto> data}): _data = data;
  factory _CategoryPermitsResponseWrapper.fromJson(Map<String, dynamic> json) => _$CategoryPermitsResponseWrapperFromJson(json);

 final  List<CategoryPermitsDto> _data;
@override List<CategoryPermitsDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of CategoryPermitsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryPermitsResponseWrapperCopyWith<_CategoryPermitsResponseWrapper> get copyWith => __$CategoryPermitsResponseWrapperCopyWithImpl<_CategoryPermitsResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryPermitsResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryPermitsResponseWrapper&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CategoryPermitsResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CategoryPermitsResponseWrapperCopyWith<$Res> implements $CategoryPermitsResponseWrapperCopyWith<$Res> {
  factory _$CategoryPermitsResponseWrapperCopyWith(_CategoryPermitsResponseWrapper value, $Res Function(_CategoryPermitsResponseWrapper) _then) = __$CategoryPermitsResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryPermitsDto> data
});




}
/// @nodoc
class __$CategoryPermitsResponseWrapperCopyWithImpl<$Res>
    implements _$CategoryPermitsResponseWrapperCopyWith<$Res> {
  __$CategoryPermitsResponseWrapperCopyWithImpl(this._self, this._then);

  final _CategoryPermitsResponseWrapper _self;
  final $Res Function(_CategoryPermitsResponseWrapper) _then;

/// Create a copy of CategoryPermitsResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_CategoryPermitsResponseWrapper(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,
  ));
}


}


/// @nodoc
mixin _$CategoryPermitsDto {

 int get id; int? get parentId; String get name; int get sortOrder; List<CategoryPermitsDto> get children;
/// Create a copy of CategoryPermitsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryPermitsDtoCopyWith<CategoryPermitsDto> get copyWith => _$CategoryPermitsDtoCopyWithImpl<CategoryPermitsDto>(this as CategoryPermitsDto, _$identity);

  /// Serializes this CategoryPermitsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryPermitsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,name,sortOrder,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'CategoryPermitsDto(id: $id, parentId: $parentId, name: $name, sortOrder: $sortOrder, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryPermitsDtoCopyWith<$Res>  {
  factory $CategoryPermitsDtoCopyWith(CategoryPermitsDto value, $Res Function(CategoryPermitsDto) _then) = _$CategoryPermitsDtoCopyWithImpl;
@useResult
$Res call({
 int id, int? parentId, String name, int sortOrder, List<CategoryPermitsDto> children
});




}
/// @nodoc
class _$CategoryPermitsDtoCopyWithImpl<$Res>
    implements $CategoryPermitsDtoCopyWith<$Res> {
  _$CategoryPermitsDtoCopyWithImpl(this._self, this._then);

  final CategoryPermitsDto _self;
  final $Res Function(CategoryPermitsDto) _then;

/// Create a copy of CategoryPermitsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? parentId = freezed,Object? name = null,Object? sortOrder = null,Object? children = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryPermitsDto].
extension CategoryPermitsDtoPatterns on CategoryPermitsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryPermitsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryPermitsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryPermitsDto value)  $default,){
final _that = this;
switch (_that) {
case _CategoryPermitsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryPermitsDto value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryPermitsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? parentId,  String name,  int sortOrder,  List<CategoryPermitsDto> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryPermitsDto() when $default != null:
return $default(_that.id,_that.parentId,_that.name,_that.sortOrder,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? parentId,  String name,  int sortOrder,  List<CategoryPermitsDto> children)  $default,) {final _that = this;
switch (_that) {
case _CategoryPermitsDto():
return $default(_that.id,_that.parentId,_that.name,_that.sortOrder,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? parentId,  String name,  int sortOrder,  List<CategoryPermitsDto> children)?  $default,) {final _that = this;
switch (_that) {
case _CategoryPermitsDto() when $default != null:
return $default(_that.id,_that.parentId,_that.name,_that.sortOrder,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryPermitsDto implements CategoryPermitsDto {
  const _CategoryPermitsDto({required this.id, this.parentId, required this.name, required this.sortOrder, required final  List<CategoryPermitsDto> children}): _children = children;
  factory _CategoryPermitsDto.fromJson(Map<String, dynamic> json) => _$CategoryPermitsDtoFromJson(json);

@override final  int id;
@override final  int? parentId;
@override final  String name;
@override final  int sortOrder;
 final  List<CategoryPermitsDto> _children;
@override List<CategoryPermitsDto> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of CategoryPermitsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryPermitsDtoCopyWith<_CategoryPermitsDto> get copyWith => __$CategoryPermitsDtoCopyWithImpl<_CategoryPermitsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryPermitsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryPermitsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,name,sortOrder,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'CategoryPermitsDto(id: $id, parentId: $parentId, name: $name, sortOrder: $sortOrder, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryPermitsDtoCopyWith<$Res> implements $CategoryPermitsDtoCopyWith<$Res> {
  factory _$CategoryPermitsDtoCopyWith(_CategoryPermitsDto value, $Res Function(_CategoryPermitsDto) _then) = __$CategoryPermitsDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int? parentId, String name, int sortOrder, List<CategoryPermitsDto> children
});




}
/// @nodoc
class __$CategoryPermitsDtoCopyWithImpl<$Res>
    implements _$CategoryPermitsDtoCopyWith<$Res> {
  __$CategoryPermitsDtoCopyWithImpl(this._self, this._then);

  final _CategoryPermitsDto _self;
  final $Res Function(_CategoryPermitsDto) _then;

/// Create a copy of CategoryPermitsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? parentId = freezed,Object? name = null,Object? sortOrder = null,Object? children = null,}) {
  return _then(_CategoryPermitsDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,
  ));
}


}

// dart format on
