// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alcohol_buyer_status_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AlcoholBuyerStatusResponseWrapper {

 AlcoholBuyerStatusData get data;
/// Create a copy of AlcoholBuyerStatusResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlcoholBuyerStatusResponseWrapperCopyWith<AlcoholBuyerStatusResponseWrapper> get copyWith => _$AlcoholBuyerStatusResponseWrapperCopyWithImpl<AlcoholBuyerStatusResponseWrapper>(this as AlcoholBuyerStatusResponseWrapper, _$identity);

  /// Serializes this AlcoholBuyerStatusResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlcoholBuyerStatusResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AlcoholBuyerStatusResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $AlcoholBuyerStatusResponseWrapperCopyWith<$Res>  {
  factory $AlcoholBuyerStatusResponseWrapperCopyWith(AlcoholBuyerStatusResponseWrapper value, $Res Function(AlcoholBuyerStatusResponseWrapper) _then) = _$AlcoholBuyerStatusResponseWrapperCopyWithImpl;
@useResult
$Res call({
 AlcoholBuyerStatusData data
});


$AlcoholBuyerStatusDataCopyWith<$Res> get data;

}
/// @nodoc
class _$AlcoholBuyerStatusResponseWrapperCopyWithImpl<$Res>
    implements $AlcoholBuyerStatusResponseWrapperCopyWith<$Res> {
  _$AlcoholBuyerStatusResponseWrapperCopyWithImpl(this._self, this._then);

  final AlcoholBuyerStatusResponseWrapper _self;
  final $Res Function(AlcoholBuyerStatusResponseWrapper) _then;

/// Create a copy of AlcoholBuyerStatusResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AlcoholBuyerStatusData,
  ));
}
/// Create a copy of AlcoholBuyerStatusResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlcoholBuyerStatusDataCopyWith<$Res> get data {
  
  return $AlcoholBuyerStatusDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlcoholBuyerStatusResponseWrapper].
extension AlcoholBuyerStatusResponseWrapperPatterns on AlcoholBuyerStatusResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlcoholBuyerStatusResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlcoholBuyerStatusResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlcoholBuyerStatusResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _AlcoholBuyerStatusResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlcoholBuyerStatusResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _AlcoholBuyerStatusResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AlcoholBuyerStatusData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlcoholBuyerStatusResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AlcoholBuyerStatusData data)  $default,) {final _that = this;
switch (_that) {
case _AlcoholBuyerStatusResponseWrapper():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AlcoholBuyerStatusData data)?  $default,) {final _that = this;
switch (_that) {
case _AlcoholBuyerStatusResponseWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlcoholBuyerStatusResponseWrapper implements AlcoholBuyerStatusResponseWrapper {
  const _AlcoholBuyerStatusResponseWrapper({required this.data});
  factory _AlcoholBuyerStatusResponseWrapper.fromJson(Map<String, dynamic> json) => _$AlcoholBuyerStatusResponseWrapperFromJson(json);

@override final  AlcoholBuyerStatusData data;

/// Create a copy of AlcoholBuyerStatusResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlcoholBuyerStatusResponseWrapperCopyWith<_AlcoholBuyerStatusResponseWrapper> get copyWith => __$AlcoholBuyerStatusResponseWrapperCopyWithImpl<_AlcoholBuyerStatusResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlcoholBuyerStatusResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlcoholBuyerStatusResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AlcoholBuyerStatusResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$AlcoholBuyerStatusResponseWrapperCopyWith<$Res> implements $AlcoholBuyerStatusResponseWrapperCopyWith<$Res> {
  factory _$AlcoholBuyerStatusResponseWrapperCopyWith(_AlcoholBuyerStatusResponseWrapper value, $Res Function(_AlcoholBuyerStatusResponseWrapper) _then) = __$AlcoholBuyerStatusResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 AlcoholBuyerStatusData data
});


@override $AlcoholBuyerStatusDataCopyWith<$Res> get data;

}
/// @nodoc
class __$AlcoholBuyerStatusResponseWrapperCopyWithImpl<$Res>
    implements _$AlcoholBuyerStatusResponseWrapperCopyWith<$Res> {
  __$AlcoholBuyerStatusResponseWrapperCopyWithImpl(this._self, this._then);

  final _AlcoholBuyerStatusResponseWrapper _self;
  final $Res Function(_AlcoholBuyerStatusResponseWrapper) _then;

/// Create a copy of AlcoholBuyerStatusResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_AlcoholBuyerStatusResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AlcoholBuyerStatusData,
  ));
}

/// Create a copy of AlcoholBuyerStatusResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlcoholBuyerStatusDataCopyWith<$Res> get data {
  
  return $AlcoholBuyerStatusDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AlcoholBuyerStatusData {

@JsonKey(fromJson: AlcoholBuyerStatus.fromJson) AlcoholBuyerStatus get status; String? get rejectReason;
/// Create a copy of AlcoholBuyerStatusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlcoholBuyerStatusDataCopyWith<AlcoholBuyerStatusData> get copyWith => _$AlcoholBuyerStatusDataCopyWithImpl<AlcoholBuyerStatusData>(this as AlcoholBuyerStatusData, _$identity);

  /// Serializes this AlcoholBuyerStatusData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlcoholBuyerStatusData&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,rejectReason);

@override
String toString() {
  return 'AlcoholBuyerStatusData(status: $status, rejectReason: $rejectReason)';
}


}

/// @nodoc
abstract mixin class $AlcoholBuyerStatusDataCopyWith<$Res>  {
  factory $AlcoholBuyerStatusDataCopyWith(AlcoholBuyerStatusData value, $Res Function(AlcoholBuyerStatusData) _then) = _$AlcoholBuyerStatusDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: AlcoholBuyerStatus.fromJson) AlcoholBuyerStatus status, String? rejectReason
});




}
/// @nodoc
class _$AlcoholBuyerStatusDataCopyWithImpl<$Res>
    implements $AlcoholBuyerStatusDataCopyWith<$Res> {
  _$AlcoholBuyerStatusDataCopyWithImpl(this._self, this._then);

  final AlcoholBuyerStatusData _self;
  final $Res Function(AlcoholBuyerStatusData) _then;

/// Create a copy of AlcoholBuyerStatusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? rejectReason = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AlcoholBuyerStatus,rejectReason: freezed == rejectReason ? _self.rejectReason : rejectReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AlcoholBuyerStatusData].
extension AlcoholBuyerStatusDataPatterns on AlcoholBuyerStatusData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlcoholBuyerStatusData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlcoholBuyerStatusData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlcoholBuyerStatusData value)  $default,){
final _that = this;
switch (_that) {
case _AlcoholBuyerStatusData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlcoholBuyerStatusData value)?  $default,){
final _that = this;
switch (_that) {
case _AlcoholBuyerStatusData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: AlcoholBuyerStatus.fromJson)  AlcoholBuyerStatus status,  String? rejectReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlcoholBuyerStatusData() when $default != null:
return $default(_that.status,_that.rejectReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: AlcoholBuyerStatus.fromJson)  AlcoholBuyerStatus status,  String? rejectReason)  $default,) {final _that = this;
switch (_that) {
case _AlcoholBuyerStatusData():
return $default(_that.status,_that.rejectReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: AlcoholBuyerStatus.fromJson)  AlcoholBuyerStatus status,  String? rejectReason)?  $default,) {final _that = this;
switch (_that) {
case _AlcoholBuyerStatusData() when $default != null:
return $default(_that.status,_that.rejectReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlcoholBuyerStatusData implements AlcoholBuyerStatusData {
  const _AlcoholBuyerStatusData({@JsonKey(fromJson: AlcoholBuyerStatus.fromJson) required this.status, this.rejectReason});
  factory _AlcoholBuyerStatusData.fromJson(Map<String, dynamic> json) => _$AlcoholBuyerStatusDataFromJson(json);

@override@JsonKey(fromJson: AlcoholBuyerStatus.fromJson) final  AlcoholBuyerStatus status;
@override final  String? rejectReason;

/// Create a copy of AlcoholBuyerStatusData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlcoholBuyerStatusDataCopyWith<_AlcoholBuyerStatusData> get copyWith => __$AlcoholBuyerStatusDataCopyWithImpl<_AlcoholBuyerStatusData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlcoholBuyerStatusDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlcoholBuyerStatusData&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,rejectReason);

@override
String toString() {
  return 'AlcoholBuyerStatusData(status: $status, rejectReason: $rejectReason)';
}


}

/// @nodoc
abstract mixin class _$AlcoholBuyerStatusDataCopyWith<$Res> implements $AlcoholBuyerStatusDataCopyWith<$Res> {
  factory _$AlcoholBuyerStatusDataCopyWith(_AlcoholBuyerStatusData value, $Res Function(_AlcoholBuyerStatusData) _then) = __$AlcoholBuyerStatusDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: AlcoholBuyerStatus.fromJson) AlcoholBuyerStatus status, String? rejectReason
});




}
/// @nodoc
class __$AlcoholBuyerStatusDataCopyWithImpl<$Res>
    implements _$AlcoholBuyerStatusDataCopyWith<$Res> {
  __$AlcoholBuyerStatusDataCopyWithImpl(this._self, this._then);

  final _AlcoholBuyerStatusData _self;
  final $Res Function(_AlcoholBuyerStatusData) _then;

/// Create a copy of AlcoholBuyerStatusData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? rejectReason = freezed,}) {
  return _then(_AlcoholBuyerStatusData(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AlcoholBuyerStatus,rejectReason: freezed == rejectReason ? _self.rejectReason : rejectReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
