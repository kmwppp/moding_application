// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_notification_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcmNotificationPayload {

 FcmNotificationContent get notification; FcmNotificationData get data;
/// Create a copy of FcmNotificationPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmNotificationPayloadCopyWith<FcmNotificationPayload> get copyWith => _$FcmNotificationPayloadCopyWithImpl<FcmNotificationPayload>(this as FcmNotificationPayload, _$identity);

  /// Serializes this FcmNotificationPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmNotificationPayload&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notification,data);

@override
String toString() {
  return 'FcmNotificationPayload(notification: $notification, data: $data)';
}


}

/// @nodoc
abstract mixin class $FcmNotificationPayloadCopyWith<$Res>  {
  factory $FcmNotificationPayloadCopyWith(FcmNotificationPayload value, $Res Function(FcmNotificationPayload) _then) = _$FcmNotificationPayloadCopyWithImpl;
@useResult
$Res call({
 FcmNotificationContent notification, FcmNotificationData data
});


$FcmNotificationContentCopyWith<$Res> get notification;$FcmNotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FcmNotificationPayloadCopyWithImpl<$Res>
    implements $FcmNotificationPayloadCopyWith<$Res> {
  _$FcmNotificationPayloadCopyWithImpl(this._self, this._then);

  final FcmNotificationPayload _self;
  final $Res Function(FcmNotificationPayload) _then;

/// Create a copy of FcmNotificationPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notification = null,Object? data = null,}) {
  return _then(_self.copyWith(
notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as FcmNotificationContent,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmNotificationData,
  ));
}
/// Create a copy of FcmNotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmNotificationContentCopyWith<$Res> get notification {
  
  return $FcmNotificationContentCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}/// Create a copy of FcmNotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmNotificationDataCopyWith<$Res> get data {
  
  return $FcmNotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FcmNotificationPayload].
extension FcmNotificationPayloadPatterns on FcmNotificationPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmNotificationPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmNotificationPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmNotificationPayload value)  $default,){
final _that = this;
switch (_that) {
case _FcmNotificationPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmNotificationPayload value)?  $default,){
final _that = this;
switch (_that) {
case _FcmNotificationPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FcmNotificationContent notification,  FcmNotificationData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmNotificationPayload() when $default != null:
return $default(_that.notification,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FcmNotificationContent notification,  FcmNotificationData data)  $default,) {final _that = this;
switch (_that) {
case _FcmNotificationPayload():
return $default(_that.notification,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FcmNotificationContent notification,  FcmNotificationData data)?  $default,) {final _that = this;
switch (_that) {
case _FcmNotificationPayload() when $default != null:
return $default(_that.notification,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmNotificationPayload extends FcmNotificationPayload {
  const _FcmNotificationPayload({required this.notification, required this.data}): super._();
  factory _FcmNotificationPayload.fromJson(Map<String, dynamic> json) => _$FcmNotificationPayloadFromJson(json);

@override final  FcmNotificationContent notification;
@override final  FcmNotificationData data;

/// Create a copy of FcmNotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmNotificationPayloadCopyWith<_FcmNotificationPayload> get copyWith => __$FcmNotificationPayloadCopyWithImpl<_FcmNotificationPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmNotificationPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmNotificationPayload&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notification,data);

@override
String toString() {
  return 'FcmNotificationPayload(notification: $notification, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FcmNotificationPayloadCopyWith<$Res> implements $FcmNotificationPayloadCopyWith<$Res> {
  factory _$FcmNotificationPayloadCopyWith(_FcmNotificationPayload value, $Res Function(_FcmNotificationPayload) _then) = __$FcmNotificationPayloadCopyWithImpl;
@override @useResult
$Res call({
 FcmNotificationContent notification, FcmNotificationData data
});


@override $FcmNotificationContentCopyWith<$Res> get notification;@override $FcmNotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FcmNotificationPayloadCopyWithImpl<$Res>
    implements _$FcmNotificationPayloadCopyWith<$Res> {
  __$FcmNotificationPayloadCopyWithImpl(this._self, this._then);

  final _FcmNotificationPayload _self;
  final $Res Function(_FcmNotificationPayload) _then;

/// Create a copy of FcmNotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notification = null,Object? data = null,}) {
  return _then(_FcmNotificationPayload(
notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as FcmNotificationContent,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmNotificationData,
  ));
}

/// Create a copy of FcmNotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmNotificationContentCopyWith<$Res> get notification {
  
  return $FcmNotificationContentCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}/// Create a copy of FcmNotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmNotificationDataCopyWith<$Res> get data {
  
  return $FcmNotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FcmNotificationContent {

 String get title; String get body;
/// Create a copy of FcmNotificationContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmNotificationContentCopyWith<FcmNotificationContent> get copyWith => _$FcmNotificationContentCopyWithImpl<FcmNotificationContent>(this as FcmNotificationContent, _$identity);

  /// Serializes this FcmNotificationContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmNotificationContent&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body);

@override
String toString() {
  return 'FcmNotificationContent(title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class $FcmNotificationContentCopyWith<$Res>  {
  factory $FcmNotificationContentCopyWith(FcmNotificationContent value, $Res Function(FcmNotificationContent) _then) = _$FcmNotificationContentCopyWithImpl;
@useResult
$Res call({
 String title, String body
});




}
/// @nodoc
class _$FcmNotificationContentCopyWithImpl<$Res>
    implements $FcmNotificationContentCopyWith<$Res> {
  _$FcmNotificationContentCopyWithImpl(this._self, this._then);

  final FcmNotificationContent _self;
  final $Res Function(FcmNotificationContent) _then;

/// Create a copy of FcmNotificationContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? body = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmNotificationContent].
extension FcmNotificationContentPatterns on FcmNotificationContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmNotificationContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmNotificationContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmNotificationContent value)  $default,){
final _that = this;
switch (_that) {
case _FcmNotificationContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmNotificationContent value)?  $default,){
final _that = this;
switch (_that) {
case _FcmNotificationContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmNotificationContent() when $default != null:
return $default(_that.title,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String body)  $default,) {final _that = this;
switch (_that) {
case _FcmNotificationContent():
return $default(_that.title,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String body)?  $default,) {final _that = this;
switch (_that) {
case _FcmNotificationContent() when $default != null:
return $default(_that.title,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmNotificationContent implements FcmNotificationContent {
  const _FcmNotificationContent({required this.title, required this.body});
  factory _FcmNotificationContent.fromJson(Map<String, dynamic> json) => _$FcmNotificationContentFromJson(json);

@override final  String title;
@override final  String body;

/// Create a copy of FcmNotificationContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmNotificationContentCopyWith<_FcmNotificationContent> get copyWith => __$FcmNotificationContentCopyWithImpl<_FcmNotificationContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmNotificationContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmNotificationContent&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body);

@override
String toString() {
  return 'FcmNotificationContent(title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class _$FcmNotificationContentCopyWith<$Res> implements $FcmNotificationContentCopyWith<$Res> {
  factory _$FcmNotificationContentCopyWith(_FcmNotificationContent value, $Res Function(_FcmNotificationContent) _then) = __$FcmNotificationContentCopyWithImpl;
@override @useResult
$Res call({
 String title, String body
});




}
/// @nodoc
class __$FcmNotificationContentCopyWithImpl<$Res>
    implements _$FcmNotificationContentCopyWith<$Res> {
  __$FcmNotificationContentCopyWithImpl(this._self, this._then);

  final _FcmNotificationContent _self;
  final $Res Function(_FcmNotificationContent) _then;

/// Create a copy of FcmNotificationContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,}) {
  return _then(_FcmNotificationContent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FcmNotificationData {

@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) int? get notificationId;@JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson) FcmTargetPage get page;@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) int? get referenceId;
/// Create a copy of FcmNotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmNotificationDataCopyWith<FcmNotificationData> get copyWith => _$FcmNotificationDataCopyWithImpl<FcmNotificationData>(this as FcmNotificationData, _$identity);

  /// Serializes this FcmNotificationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmNotificationData&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.page, page) || other.page == page)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationId,page,referenceId);

@override
String toString() {
  return 'FcmNotificationData(notificationId: $notificationId, page: $page, referenceId: $referenceId)';
}


}

/// @nodoc
abstract mixin class $FcmNotificationDataCopyWith<$Res>  {
  factory $FcmNotificationDataCopyWith(FcmNotificationData value, $Res Function(FcmNotificationData) _then) = _$FcmNotificationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) int? notificationId,@JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson) FcmTargetPage page,@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) int? referenceId
});




}
/// @nodoc
class _$FcmNotificationDataCopyWithImpl<$Res>
    implements $FcmNotificationDataCopyWith<$Res> {
  _$FcmNotificationDataCopyWithImpl(this._self, this._then);

  final FcmNotificationData _self;
  final $Res Function(FcmNotificationData) _then;

/// Create a copy of FcmNotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = freezed,Object? page = null,Object? referenceId = freezed,}) {
  return _then(_self.copyWith(
notificationId: freezed == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as FcmTargetPage,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmNotificationData].
extension FcmNotificationDataPatterns on FcmNotificationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmNotificationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmNotificationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmNotificationData value)  $default,){
final _that = this;
switch (_that) {
case _FcmNotificationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmNotificationData value)?  $default,){
final _that = this;
switch (_that) {
case _FcmNotificationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson)  int? notificationId, @JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson)  FcmTargetPage page, @JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson)  int? referenceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmNotificationData() when $default != null:
return $default(_that.notificationId,_that.page,_that.referenceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson)  int? notificationId, @JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson)  FcmTargetPage page, @JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson)  int? referenceId)  $default,) {final _that = this;
switch (_that) {
case _FcmNotificationData():
return $default(_that.notificationId,_that.page,_that.referenceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson)  int? notificationId, @JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson)  FcmTargetPage page, @JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson)  int? referenceId)?  $default,) {final _that = this;
switch (_that) {
case _FcmNotificationData() when $default != null:
return $default(_that.notificationId,_that.page,_that.referenceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmNotificationData extends FcmNotificationData {
  const _FcmNotificationData({@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) this.notificationId, @JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson) required this.page, @JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) this.referenceId}): super._();
  factory _FcmNotificationData.fromJson(Map<String, dynamic> json) => _$FcmNotificationDataFromJson(json);

@override@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) final  int? notificationId;
@override@JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson) final  FcmTargetPage page;
@override@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) final  int? referenceId;

/// Create a copy of FcmNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmNotificationDataCopyWith<_FcmNotificationData> get copyWith => __$FcmNotificationDataCopyWithImpl<_FcmNotificationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmNotificationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmNotificationData&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.page, page) || other.page == page)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationId,page,referenceId);

@override
String toString() {
  return 'FcmNotificationData(notificationId: $notificationId, page: $page, referenceId: $referenceId)';
}


}

/// @nodoc
abstract mixin class _$FcmNotificationDataCopyWith<$Res> implements $FcmNotificationDataCopyWith<$Res> {
  factory _$FcmNotificationDataCopyWith(_FcmNotificationData value, $Res Function(_FcmNotificationData) _then) = __$FcmNotificationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) int? notificationId,@JsonKey(fromJson: _fcmPageFromJson, toJson: _fcmPageToJson) FcmTargetPage page,@JsonKey(fromJson: _nullableIntFromJson, toJson: _nullableIntToJson) int? referenceId
});




}
/// @nodoc
class __$FcmNotificationDataCopyWithImpl<$Res>
    implements _$FcmNotificationDataCopyWith<$Res> {
  __$FcmNotificationDataCopyWithImpl(this._self, this._then);

  final _FcmNotificationData _self;
  final $Res Function(_FcmNotificationData) _then;

/// Create a copy of FcmNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationId = freezed,Object? page = null,Object? referenceId = freezed,}) {
  return _then(_FcmNotificationData(
notificationId: freezed == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as FcmTargetPage,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
