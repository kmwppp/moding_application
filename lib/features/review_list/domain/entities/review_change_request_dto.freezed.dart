// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_change_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewChangeRequestDto {

 String get content; List<String> get photos;
/// Create a copy of ReviewChangeRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewChangeRequestDtoCopyWith<ReviewChangeRequestDto> get copyWith => _$ReviewChangeRequestDtoCopyWithImpl<ReviewChangeRequestDto>(this as ReviewChangeRequestDto, _$identity);

  /// Serializes this ReviewChangeRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewChangeRequestDto&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.photos, photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(photos));

@override
String toString() {
  return 'ReviewChangeRequestDto(content: $content, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $ReviewChangeRequestDtoCopyWith<$Res>  {
  factory $ReviewChangeRequestDtoCopyWith(ReviewChangeRequestDto value, $Res Function(ReviewChangeRequestDto) _then) = _$ReviewChangeRequestDtoCopyWithImpl;
@useResult
$Res call({
 String content, List<String> photos
});




}
/// @nodoc
class _$ReviewChangeRequestDtoCopyWithImpl<$Res>
    implements $ReviewChangeRequestDtoCopyWith<$Res> {
  _$ReviewChangeRequestDtoCopyWithImpl(this._self, this._then);

  final ReviewChangeRequestDto _self;
  final $Res Function(ReviewChangeRequestDto) _then;

/// Create a copy of ReviewChangeRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? photos = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewChangeRequestDto].
extension ReviewChangeRequestDtoPatterns on ReviewChangeRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewChangeRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewChangeRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewChangeRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewChangeRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewChangeRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewChangeRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  List<String> photos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewChangeRequestDto() when $default != null:
return $default(_that.content,_that.photos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  List<String> photos)  $default,) {final _that = this;
switch (_that) {
case _ReviewChangeRequestDto():
return $default(_that.content,_that.photos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  List<String> photos)?  $default,) {final _that = this;
switch (_that) {
case _ReviewChangeRequestDto() when $default != null:
return $default(_that.content,_that.photos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewChangeRequestDto implements ReviewChangeRequestDto {
  const _ReviewChangeRequestDto({required this.content, final  List<String> photos = const []}): _photos = photos;
  factory _ReviewChangeRequestDto.fromJson(Map<String, dynamic> json) => _$ReviewChangeRequestDtoFromJson(json);

@override final  String content;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}


/// Create a copy of ReviewChangeRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewChangeRequestDtoCopyWith<_ReviewChangeRequestDto> get copyWith => __$ReviewChangeRequestDtoCopyWithImpl<_ReviewChangeRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewChangeRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewChangeRequestDto&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._photos, _photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'ReviewChangeRequestDto(content: $content, photos: $photos)';
}


}

/// @nodoc
abstract mixin class _$ReviewChangeRequestDtoCopyWith<$Res> implements $ReviewChangeRequestDtoCopyWith<$Res> {
  factory _$ReviewChangeRequestDtoCopyWith(_ReviewChangeRequestDto value, $Res Function(_ReviewChangeRequestDto) _then) = __$ReviewChangeRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String content, List<String> photos
});




}
/// @nodoc
class __$ReviewChangeRequestDtoCopyWithImpl<$Res>
    implements _$ReviewChangeRequestDtoCopyWith<$Res> {
  __$ReviewChangeRequestDtoCopyWithImpl(this._self, this._then);

  final _ReviewChangeRequestDto _self;
  final $Res Function(_ReviewChangeRequestDto) _then;

/// Create a copy of ReviewChangeRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? photos = null,}) {
  return _then(_ReviewChangeRequestDto(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
