// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainCategoryResponseDto {

 List<MainCategoryDto> get data;
/// Create a copy of MainCategoryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainCategoryResponseDtoCopyWith<MainCategoryResponseDto> get copyWith => _$MainCategoryResponseDtoCopyWithImpl<MainCategoryResponseDto>(this as MainCategoryResponseDto, _$identity);

  /// Serializes this MainCategoryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainCategoryResponseDto&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'MainCategoryResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $MainCategoryResponseDtoCopyWith<$Res>  {
  factory $MainCategoryResponseDtoCopyWith(MainCategoryResponseDto value, $Res Function(MainCategoryResponseDto) _then) = _$MainCategoryResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<MainCategoryDto> data
});




}
/// @nodoc
class _$MainCategoryResponseDtoCopyWithImpl<$Res>
    implements $MainCategoryResponseDtoCopyWith<$Res> {
  _$MainCategoryResponseDtoCopyWithImpl(this._self, this._then);

  final MainCategoryResponseDto _self;
  final $Res Function(MainCategoryResponseDto) _then;

/// Create a copy of MainCategoryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MainCategoryDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [MainCategoryResponseDto].
extension MainCategoryResponseDtoPatterns on MainCategoryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainCategoryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainCategoryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainCategoryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _MainCategoryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainCategoryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _MainCategoryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MainCategoryDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainCategoryResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MainCategoryDto> data)  $default,) {final _that = this;
switch (_that) {
case _MainCategoryResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MainCategoryDto> data)?  $default,) {final _that = this;
switch (_that) {
case _MainCategoryResponseDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MainCategoryResponseDto implements MainCategoryResponseDto {
  const _MainCategoryResponseDto({required final  List<MainCategoryDto> data}): _data = data;
  factory _MainCategoryResponseDto.fromJson(Map<String, dynamic> json) => _$MainCategoryResponseDtoFromJson(json);

 final  List<MainCategoryDto> _data;
@override List<MainCategoryDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of MainCategoryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainCategoryResponseDtoCopyWith<_MainCategoryResponseDto> get copyWith => __$MainCategoryResponseDtoCopyWithImpl<_MainCategoryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainCategoryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainCategoryResponseDto&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'MainCategoryResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$MainCategoryResponseDtoCopyWith<$Res> implements $MainCategoryResponseDtoCopyWith<$Res> {
  factory _$MainCategoryResponseDtoCopyWith(_MainCategoryResponseDto value, $Res Function(_MainCategoryResponseDto) _then) = __$MainCategoryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<MainCategoryDto> data
});




}
/// @nodoc
class __$MainCategoryResponseDtoCopyWithImpl<$Res>
    implements _$MainCategoryResponseDtoCopyWith<$Res> {
  __$MainCategoryResponseDtoCopyWithImpl(this._self, this._then);

  final _MainCategoryResponseDto _self;
  final $Res Function(_MainCategoryResponseDto) _then;

/// Create a copy of MainCategoryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_MainCategoryResponseDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MainCategoryDto>,
  ));
}


}


/// @nodoc
mixin _$MainCategoryDto {

 int get id; int? get parentId; String get name; int? get sortOrder; List<MainCategoryDto>? get children;
/// Create a copy of MainCategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainCategoryDtoCopyWith<MainCategoryDto> get copyWith => _$MainCategoryDtoCopyWithImpl<MainCategoryDto>(this as MainCategoryDto, _$identity);

  /// Serializes this MainCategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainCategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,name,sortOrder,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'MainCategoryDto(id: $id, parentId: $parentId, name: $name, sortOrder: $sortOrder, children: $children)';
}


}

/// @nodoc
abstract mixin class $MainCategoryDtoCopyWith<$Res>  {
  factory $MainCategoryDtoCopyWith(MainCategoryDto value, $Res Function(MainCategoryDto) _then) = _$MainCategoryDtoCopyWithImpl;
@useResult
$Res call({
 int id, int? parentId, String name, int? sortOrder, List<MainCategoryDto>? children
});




}
/// @nodoc
class _$MainCategoryDtoCopyWithImpl<$Res>
    implements $MainCategoryDtoCopyWith<$Res> {
  _$MainCategoryDtoCopyWithImpl(this._self, this._then);

  final MainCategoryDto _self;
  final $Res Function(MainCategoryDto) _then;

/// Create a copy of MainCategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? parentId = freezed,Object? name = null,Object? sortOrder = freezed,Object? children = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<MainCategoryDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MainCategoryDto].
extension MainCategoryDtoPatterns on MainCategoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainCategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainCategoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainCategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _MainCategoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainCategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _MainCategoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? parentId,  String name,  int? sortOrder,  List<MainCategoryDto>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainCategoryDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? parentId,  String name,  int? sortOrder,  List<MainCategoryDto>? children)  $default,) {final _that = this;
switch (_that) {
case _MainCategoryDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? parentId,  String name,  int? sortOrder,  List<MainCategoryDto>? children)?  $default,) {final _that = this;
switch (_that) {
case _MainCategoryDto() when $default != null:
return $default(_that.id,_that.parentId,_that.name,_that.sortOrder,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MainCategoryDto implements MainCategoryDto {
  const _MainCategoryDto({required this.id, this.parentId, required this.name, this.sortOrder, final  List<MainCategoryDto>? children}): _children = children;
  factory _MainCategoryDto.fromJson(Map<String, dynamic> json) => _$MainCategoryDtoFromJson(json);

@override final  int id;
@override final  int? parentId;
@override final  String name;
@override final  int? sortOrder;
 final  List<MainCategoryDto>? _children;
@override List<MainCategoryDto>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MainCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainCategoryDtoCopyWith<_MainCategoryDto> get copyWith => __$MainCategoryDtoCopyWithImpl<_MainCategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainCategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainCategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,name,sortOrder,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'MainCategoryDto(id: $id, parentId: $parentId, name: $name, sortOrder: $sortOrder, children: $children)';
}


}

/// @nodoc
abstract mixin class _$MainCategoryDtoCopyWith<$Res> implements $MainCategoryDtoCopyWith<$Res> {
  factory _$MainCategoryDtoCopyWith(_MainCategoryDto value, $Res Function(_MainCategoryDto) _then) = __$MainCategoryDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int? parentId, String name, int? sortOrder, List<MainCategoryDto>? children
});




}
/// @nodoc
class __$MainCategoryDtoCopyWithImpl<$Res>
    implements _$MainCategoryDtoCopyWith<$Res> {
  __$MainCategoryDtoCopyWithImpl(this._self, this._then);

  final _MainCategoryDto _self;
  final $Res Function(_MainCategoryDto) _then;

/// Create a copy of MainCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? parentId = freezed,Object? name = null,Object? sortOrder = freezed,Object? children = freezed,}) {
  return _then(_MainCategoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<MainCategoryDto>?,
  ));
}


}

// dart format on
