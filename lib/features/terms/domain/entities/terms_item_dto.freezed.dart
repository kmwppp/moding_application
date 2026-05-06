// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TermsItemDto {

 int get id; TermsType get type; String get typeLabel; String get pdfUrl;@LocalDateTimeConverter() DateTime get createdAt;
/// Create a copy of TermsItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TermsItemDtoCopyWith<TermsItemDto> get copyWith => _$TermsItemDtoCopyWithImpl<TermsItemDto>(this as TermsItemDto, _$identity);

  /// Serializes this TermsItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TermsItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeLabel, typeLabel) || other.typeLabel == typeLabel)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,typeLabel,pdfUrl,createdAt);

@override
String toString() {
  return 'TermsItemDto(id: $id, type: $type, typeLabel: $typeLabel, pdfUrl: $pdfUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TermsItemDtoCopyWith<$Res>  {
  factory $TermsItemDtoCopyWith(TermsItemDto value, $Res Function(TermsItemDto) _then) = _$TermsItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, TermsType type, String typeLabel, String pdfUrl,@LocalDateTimeConverter() DateTime createdAt
});




}
/// @nodoc
class _$TermsItemDtoCopyWithImpl<$Res>
    implements $TermsItemDtoCopyWith<$Res> {
  _$TermsItemDtoCopyWithImpl(this._self, this._then);

  final TermsItemDto _self;
  final $Res Function(TermsItemDto) _then;

/// Create a copy of TermsItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? typeLabel = null,Object? pdfUrl = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TermsType,typeLabel: null == typeLabel ? _self.typeLabel : typeLabel // ignore: cast_nullable_to_non_nullable
as String,pdfUrl: null == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TermsItemDto].
extension TermsItemDtoPatterns on TermsItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TermsItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TermsItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TermsItemDto value)  $default,){
final _that = this;
switch (_that) {
case _TermsItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TermsItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _TermsItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  TermsType type,  String typeLabel,  String pdfUrl, @LocalDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TermsItemDto() when $default != null:
return $default(_that.id,_that.type,_that.typeLabel,_that.pdfUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  TermsType type,  String typeLabel,  String pdfUrl, @LocalDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _TermsItemDto():
return $default(_that.id,_that.type,_that.typeLabel,_that.pdfUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  TermsType type,  String typeLabel,  String pdfUrl, @LocalDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TermsItemDto() when $default != null:
return $default(_that.id,_that.type,_that.typeLabel,_that.pdfUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TermsItemDto implements TermsItemDto {
  const _TermsItemDto({required this.id, required this.type, required this.typeLabel, required this.pdfUrl, @LocalDateTimeConverter() required this.createdAt});
  factory _TermsItemDto.fromJson(Map<String, dynamic> json) => _$TermsItemDtoFromJson(json);

@override final  int id;
@override final  TermsType type;
@override final  String typeLabel;
@override final  String pdfUrl;
@override@LocalDateTimeConverter() final  DateTime createdAt;

/// Create a copy of TermsItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TermsItemDtoCopyWith<_TermsItemDto> get copyWith => __$TermsItemDtoCopyWithImpl<_TermsItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TermsItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TermsItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeLabel, typeLabel) || other.typeLabel == typeLabel)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,typeLabel,pdfUrl,createdAt);

@override
String toString() {
  return 'TermsItemDto(id: $id, type: $type, typeLabel: $typeLabel, pdfUrl: $pdfUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TermsItemDtoCopyWith<$Res> implements $TermsItemDtoCopyWith<$Res> {
  factory _$TermsItemDtoCopyWith(_TermsItemDto value, $Res Function(_TermsItemDto) _then) = __$TermsItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, TermsType type, String typeLabel, String pdfUrl,@LocalDateTimeConverter() DateTime createdAt
});




}
/// @nodoc
class __$TermsItemDtoCopyWithImpl<$Res>
    implements _$TermsItemDtoCopyWith<$Res> {
  __$TermsItemDtoCopyWithImpl(this._self, this._then);

  final _TermsItemDto _self;
  final $Res Function(_TermsItemDto) _then;

/// Create a copy of TermsItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? typeLabel = null,Object? pdfUrl = null,Object? createdAt = null,}) {
  return _then(_TermsItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TermsType,typeLabel: null == typeLabel ? _self.typeLabel : typeLabel // ignore: cast_nullable_to_non_nullable
as String,pdfUrl: null == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$TermsDto {

 List<TermsItemDto> get data;
/// Create a copy of TermsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TermsDtoCopyWith<TermsDto> get copyWith => _$TermsDtoCopyWithImpl<TermsDto>(this as TermsDto, _$identity);

  /// Serializes this TermsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TermsDto&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TermsDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $TermsDtoCopyWith<$Res>  {
  factory $TermsDtoCopyWith(TermsDto value, $Res Function(TermsDto) _then) = _$TermsDtoCopyWithImpl;
@useResult
$Res call({
 List<TermsItemDto> data
});




}
/// @nodoc
class _$TermsDtoCopyWithImpl<$Res>
    implements $TermsDtoCopyWith<$Res> {
  _$TermsDtoCopyWithImpl(this._self, this._then);

  final TermsDto _self;
  final $Res Function(TermsDto) _then;

/// Create a copy of TermsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<TermsItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TermsDto].
extension TermsDtoPatterns on TermsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TermsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TermsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TermsDto value)  $default,){
final _that = this;
switch (_that) {
case _TermsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TermsDto value)?  $default,){
final _that = this;
switch (_that) {
case _TermsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TermsItemDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TermsDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TermsItemDto> data)  $default,) {final _that = this;
switch (_that) {
case _TermsDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TermsItemDto> data)?  $default,) {final _that = this;
switch (_that) {
case _TermsDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TermsDto implements TermsDto {
  const _TermsDto({required final  List<TermsItemDto> data}): _data = data;
  factory _TermsDto.fromJson(Map<String, dynamic> json) => _$TermsDtoFromJson(json);

 final  List<TermsItemDto> _data;
@override List<TermsItemDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of TermsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TermsDtoCopyWith<_TermsDto> get copyWith => __$TermsDtoCopyWithImpl<_TermsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TermsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TermsDto&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TermsDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$TermsDtoCopyWith<$Res> implements $TermsDtoCopyWith<$Res> {
  factory _$TermsDtoCopyWith(_TermsDto value, $Res Function(_TermsDto) _then) = __$TermsDtoCopyWithImpl;
@override @useResult
$Res call({
 List<TermsItemDto> data
});




}
/// @nodoc
class __$TermsDtoCopyWithImpl<$Res>
    implements _$TermsDtoCopyWith<$Res> {
  __$TermsDtoCopyWithImpl(this._self, this._then);

  final _TermsDto _self;
  final $Res Function(_TermsDto) _then;

/// Create a copy of TermsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_TermsDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<TermsItemDto>,
  ));
}


}

// dart format on
