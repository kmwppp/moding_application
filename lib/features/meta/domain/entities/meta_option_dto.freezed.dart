// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_option_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetaOptionDto {

 String get value; String get label; String? get path;
/// Create a copy of MetaOptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaOptionDtoCopyWith<MetaOptionDto> get copyWith => _$MetaOptionDtoCopyWithImpl<MetaOptionDto>(this as MetaOptionDto, _$identity);

  /// Serializes this MetaOptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaOptionDto&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label,path);

@override
String toString() {
  return 'MetaOptionDto(value: $value, label: $label, path: $path)';
}


}

/// @nodoc
abstract mixin class $MetaOptionDtoCopyWith<$Res>  {
  factory $MetaOptionDtoCopyWith(MetaOptionDto value, $Res Function(MetaOptionDto) _then) = _$MetaOptionDtoCopyWithImpl;
@useResult
$Res call({
 String value, String label, String? path
});




}
/// @nodoc
class _$MetaOptionDtoCopyWithImpl<$Res>
    implements $MetaOptionDtoCopyWith<$Res> {
  _$MetaOptionDtoCopyWithImpl(this._self, this._then);

  final MetaOptionDto _self;
  final $Res Function(MetaOptionDto) _then;

/// Create a copy of MetaOptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,Object? path = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaOptionDto].
extension MetaOptionDtoPatterns on MetaOptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaOptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaOptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaOptionDto value)  $default,){
final _that = this;
switch (_that) {
case _MetaOptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaOptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _MetaOptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String label,  String? path)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaOptionDto() when $default != null:
return $default(_that.value,_that.label,_that.path);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String label,  String? path)  $default,) {final _that = this;
switch (_that) {
case _MetaOptionDto():
return $default(_that.value,_that.label,_that.path);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String label,  String? path)?  $default,) {final _that = this;
switch (_that) {
case _MetaOptionDto() when $default != null:
return $default(_that.value,_that.label,_that.path);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaOptionDto implements MetaOptionDto {
  const _MetaOptionDto({required this.value, required this.label, this.path});
  factory _MetaOptionDto.fromJson(Map<String, dynamic> json) => _$MetaOptionDtoFromJson(json);

@override final  String value;
@override final  String label;
@override final  String? path;

/// Create a copy of MetaOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaOptionDtoCopyWith<_MetaOptionDto> get copyWith => __$MetaOptionDtoCopyWithImpl<_MetaOptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaOptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaOptionDto&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label,path);

@override
String toString() {
  return 'MetaOptionDto(value: $value, label: $label, path: $path)';
}


}

/// @nodoc
abstract mixin class _$MetaOptionDtoCopyWith<$Res> implements $MetaOptionDtoCopyWith<$Res> {
  factory _$MetaOptionDtoCopyWith(_MetaOptionDto value, $Res Function(_MetaOptionDto) _then) = __$MetaOptionDtoCopyWithImpl;
@override @useResult
$Res call({
 String value, String label, String? path
});




}
/// @nodoc
class __$MetaOptionDtoCopyWithImpl<$Res>
    implements _$MetaOptionDtoCopyWith<$Res> {
  __$MetaOptionDtoCopyWithImpl(this._self, this._then);

  final _MetaOptionDto _self;
  final $Res Function(_MetaOptionDto) _then;

/// Create a copy of MetaOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,Object? path = freezed,}) {
  return _then(_MetaOptionDto(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
