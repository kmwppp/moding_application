// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_my_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditMyInfoState {

 bool get isLoading; UserInfoMaskingResponseWrapper? get maskingMyInfo;
/// Create a copy of EditMyInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditMyInfoStateCopyWith<EditMyInfoState> get copyWith => _$EditMyInfoStateCopyWithImpl<EditMyInfoState>(this as EditMyInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditMyInfoState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.maskingMyInfo, maskingMyInfo) || other.maskingMyInfo == maskingMyInfo));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,maskingMyInfo);

@override
String toString() {
  return 'EditMyInfoState(isLoading: $isLoading, maskingMyInfo: $maskingMyInfo)';
}


}

/// @nodoc
abstract mixin class $EditMyInfoStateCopyWith<$Res>  {
  factory $EditMyInfoStateCopyWith(EditMyInfoState value, $Res Function(EditMyInfoState) _then) = _$EditMyInfoStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, UserInfoMaskingResponseWrapper? maskingMyInfo
});


$UserInfoMaskingResponseWrapperCopyWith<$Res>? get maskingMyInfo;

}
/// @nodoc
class _$EditMyInfoStateCopyWithImpl<$Res>
    implements $EditMyInfoStateCopyWith<$Res> {
  _$EditMyInfoStateCopyWithImpl(this._self, this._then);

  final EditMyInfoState _self;
  final $Res Function(EditMyInfoState) _then;

/// Create a copy of EditMyInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? maskingMyInfo = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,maskingMyInfo: freezed == maskingMyInfo ? _self.maskingMyInfo : maskingMyInfo // ignore: cast_nullable_to_non_nullable
as UserInfoMaskingResponseWrapper?,
  ));
}
/// Create a copy of EditMyInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoMaskingResponseWrapperCopyWith<$Res>? get maskingMyInfo {
    if (_self.maskingMyInfo == null) {
    return null;
  }

  return $UserInfoMaskingResponseWrapperCopyWith<$Res>(_self.maskingMyInfo!, (value) {
    return _then(_self.copyWith(maskingMyInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditMyInfoState].
extension EditMyInfoStatePatterns on EditMyInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditMyInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditMyInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditMyInfoState value)  $default,){
final _that = this;
switch (_that) {
case _EditMyInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditMyInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _EditMyInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  UserInfoMaskingResponseWrapper? maskingMyInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditMyInfoState() when $default != null:
return $default(_that.isLoading,_that.maskingMyInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  UserInfoMaskingResponseWrapper? maskingMyInfo)  $default,) {final _that = this;
switch (_that) {
case _EditMyInfoState():
return $default(_that.isLoading,_that.maskingMyInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  UserInfoMaskingResponseWrapper? maskingMyInfo)?  $default,) {final _that = this;
switch (_that) {
case _EditMyInfoState() when $default != null:
return $default(_that.isLoading,_that.maskingMyInfo);case _:
  return null;

}
}

}

/// @nodoc


class _EditMyInfoState extends EditMyInfoState {
  const _EditMyInfoState({required this.isLoading, this.maskingMyInfo}): super._();
  

@override final  bool isLoading;
@override final  UserInfoMaskingResponseWrapper? maskingMyInfo;

/// Create a copy of EditMyInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditMyInfoStateCopyWith<_EditMyInfoState> get copyWith => __$EditMyInfoStateCopyWithImpl<_EditMyInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditMyInfoState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.maskingMyInfo, maskingMyInfo) || other.maskingMyInfo == maskingMyInfo));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,maskingMyInfo);

@override
String toString() {
  return 'EditMyInfoState(isLoading: $isLoading, maskingMyInfo: $maskingMyInfo)';
}


}

/// @nodoc
abstract mixin class _$EditMyInfoStateCopyWith<$Res> implements $EditMyInfoStateCopyWith<$Res> {
  factory _$EditMyInfoStateCopyWith(_EditMyInfoState value, $Res Function(_EditMyInfoState) _then) = __$EditMyInfoStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, UserInfoMaskingResponseWrapper? maskingMyInfo
});


@override $UserInfoMaskingResponseWrapperCopyWith<$Res>? get maskingMyInfo;

}
/// @nodoc
class __$EditMyInfoStateCopyWithImpl<$Res>
    implements _$EditMyInfoStateCopyWith<$Res> {
  __$EditMyInfoStateCopyWithImpl(this._self, this._then);

  final _EditMyInfoState _self;
  final $Res Function(_EditMyInfoState) _then;

/// Create a copy of EditMyInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? maskingMyInfo = freezed,}) {
  return _then(_EditMyInfoState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,maskingMyInfo: freezed == maskingMyInfo ? _self.maskingMyInfo : maskingMyInfo // ignore: cast_nullable_to_non_nullable
as UserInfoMaskingResponseWrapper?,
  ));
}

/// Create a copy of EditMyInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoMaskingResponseWrapperCopyWith<$Res>? get maskingMyInfo {
    if (_self.maskingMyInfo == null) {
    return null;
  }

  return $UserInfoMaskingResponseWrapperCopyWith<$Res>(_self.maskingMyInfo!, (value) {
    return _then(_self.copyWith(maskingMyInfo: value));
  });
}
}

// dart format on
