// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlarmState {

 bool get isActivityInitialLoading; bool get isActivityFetchingMore; List<AlarmItemDto> get activityItems; int get activityPage; bool get activityHasNext; bool get isNoticeInitialLoading; bool get isNoticeFetchingMore; List<AlarmItemDto> get noticeItems; int get noticePage; bool get noticeHasNext;
/// Create a copy of AlarmState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlarmStateCopyWith<AlarmState> get copyWith => _$AlarmStateCopyWithImpl<AlarmState>(this as AlarmState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlarmState&&(identical(other.isActivityInitialLoading, isActivityInitialLoading) || other.isActivityInitialLoading == isActivityInitialLoading)&&(identical(other.isActivityFetchingMore, isActivityFetchingMore) || other.isActivityFetchingMore == isActivityFetchingMore)&&const DeepCollectionEquality().equals(other.activityItems, activityItems)&&(identical(other.activityPage, activityPage) || other.activityPage == activityPage)&&(identical(other.activityHasNext, activityHasNext) || other.activityHasNext == activityHasNext)&&(identical(other.isNoticeInitialLoading, isNoticeInitialLoading) || other.isNoticeInitialLoading == isNoticeInitialLoading)&&(identical(other.isNoticeFetchingMore, isNoticeFetchingMore) || other.isNoticeFetchingMore == isNoticeFetchingMore)&&const DeepCollectionEquality().equals(other.noticeItems, noticeItems)&&(identical(other.noticePage, noticePage) || other.noticePage == noticePage)&&(identical(other.noticeHasNext, noticeHasNext) || other.noticeHasNext == noticeHasNext));
}


@override
int get hashCode => Object.hash(runtimeType,isActivityInitialLoading,isActivityFetchingMore,const DeepCollectionEquality().hash(activityItems),activityPage,activityHasNext,isNoticeInitialLoading,isNoticeFetchingMore,const DeepCollectionEquality().hash(noticeItems),noticePage,noticeHasNext);

@override
String toString() {
  return 'AlarmState(isActivityInitialLoading: $isActivityInitialLoading, isActivityFetchingMore: $isActivityFetchingMore, activityItems: $activityItems, activityPage: $activityPage, activityHasNext: $activityHasNext, isNoticeInitialLoading: $isNoticeInitialLoading, isNoticeFetchingMore: $isNoticeFetchingMore, noticeItems: $noticeItems, noticePage: $noticePage, noticeHasNext: $noticeHasNext)';
}


}

/// @nodoc
abstract mixin class $AlarmStateCopyWith<$Res>  {
  factory $AlarmStateCopyWith(AlarmState value, $Res Function(AlarmState) _then) = _$AlarmStateCopyWithImpl;
@useResult
$Res call({
 bool isActivityInitialLoading, bool isActivityFetchingMore, List<AlarmItemDto> activityItems, int activityPage, bool activityHasNext, bool isNoticeInitialLoading, bool isNoticeFetchingMore, List<AlarmItemDto> noticeItems, int noticePage, bool noticeHasNext
});




}
/// @nodoc
class _$AlarmStateCopyWithImpl<$Res>
    implements $AlarmStateCopyWith<$Res> {
  _$AlarmStateCopyWithImpl(this._self, this._then);

  final AlarmState _self;
  final $Res Function(AlarmState) _then;

/// Create a copy of AlarmState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isActivityInitialLoading = null,Object? isActivityFetchingMore = null,Object? activityItems = null,Object? activityPage = null,Object? activityHasNext = null,Object? isNoticeInitialLoading = null,Object? isNoticeFetchingMore = null,Object? noticeItems = null,Object? noticePage = null,Object? noticeHasNext = null,}) {
  return _then(_self.copyWith(
isActivityInitialLoading: null == isActivityInitialLoading ? _self.isActivityInitialLoading : isActivityInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isActivityFetchingMore: null == isActivityFetchingMore ? _self.isActivityFetchingMore : isActivityFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,activityItems: null == activityItems ? _self.activityItems : activityItems // ignore: cast_nullable_to_non_nullable
as List<AlarmItemDto>,activityPage: null == activityPage ? _self.activityPage : activityPage // ignore: cast_nullable_to_non_nullable
as int,activityHasNext: null == activityHasNext ? _self.activityHasNext : activityHasNext // ignore: cast_nullable_to_non_nullable
as bool,isNoticeInitialLoading: null == isNoticeInitialLoading ? _self.isNoticeInitialLoading : isNoticeInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isNoticeFetchingMore: null == isNoticeFetchingMore ? _self.isNoticeFetchingMore : isNoticeFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,noticeItems: null == noticeItems ? _self.noticeItems : noticeItems // ignore: cast_nullable_to_non_nullable
as List<AlarmItemDto>,noticePage: null == noticePage ? _self.noticePage : noticePage // ignore: cast_nullable_to_non_nullable
as int,noticeHasNext: null == noticeHasNext ? _self.noticeHasNext : noticeHasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlarmState].
extension AlarmStatePatterns on AlarmState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlarmState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlarmState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlarmState value)  $default,){
final _that = this;
switch (_that) {
case _AlarmState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlarmState value)?  $default,){
final _that = this;
switch (_that) {
case _AlarmState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isActivityInitialLoading,  bool isActivityFetchingMore,  List<AlarmItemDto> activityItems,  int activityPage,  bool activityHasNext,  bool isNoticeInitialLoading,  bool isNoticeFetchingMore,  List<AlarmItemDto> noticeItems,  int noticePage,  bool noticeHasNext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlarmState() when $default != null:
return $default(_that.isActivityInitialLoading,_that.isActivityFetchingMore,_that.activityItems,_that.activityPage,_that.activityHasNext,_that.isNoticeInitialLoading,_that.isNoticeFetchingMore,_that.noticeItems,_that.noticePage,_that.noticeHasNext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isActivityInitialLoading,  bool isActivityFetchingMore,  List<AlarmItemDto> activityItems,  int activityPage,  bool activityHasNext,  bool isNoticeInitialLoading,  bool isNoticeFetchingMore,  List<AlarmItemDto> noticeItems,  int noticePage,  bool noticeHasNext)  $default,) {final _that = this;
switch (_that) {
case _AlarmState():
return $default(_that.isActivityInitialLoading,_that.isActivityFetchingMore,_that.activityItems,_that.activityPage,_that.activityHasNext,_that.isNoticeInitialLoading,_that.isNoticeFetchingMore,_that.noticeItems,_that.noticePage,_that.noticeHasNext);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isActivityInitialLoading,  bool isActivityFetchingMore,  List<AlarmItemDto> activityItems,  int activityPage,  bool activityHasNext,  bool isNoticeInitialLoading,  bool isNoticeFetchingMore,  List<AlarmItemDto> noticeItems,  int noticePage,  bool noticeHasNext)?  $default,) {final _that = this;
switch (_that) {
case _AlarmState() when $default != null:
return $default(_that.isActivityInitialLoading,_that.isActivityFetchingMore,_that.activityItems,_that.activityPage,_that.activityHasNext,_that.isNoticeInitialLoading,_that.isNoticeFetchingMore,_that.noticeItems,_that.noticePage,_that.noticeHasNext);case _:
  return null;

}
}

}

/// @nodoc


class _AlarmState implements AlarmState {
  const _AlarmState({this.isActivityInitialLoading = true, this.isActivityFetchingMore = false, final  List<AlarmItemDto> activityItems = const <AlarmItemDto>[], this.activityPage = 0, this.activityHasNext = true, this.isNoticeInitialLoading = true, this.isNoticeFetchingMore = false, final  List<AlarmItemDto> noticeItems = const <AlarmItemDto>[], this.noticePage = 0, this.noticeHasNext = true}): _activityItems = activityItems,_noticeItems = noticeItems;
  

@override@JsonKey() final  bool isActivityInitialLoading;
@override@JsonKey() final  bool isActivityFetchingMore;
 final  List<AlarmItemDto> _activityItems;
@override@JsonKey() List<AlarmItemDto> get activityItems {
  if (_activityItems is EqualUnmodifiableListView) return _activityItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activityItems);
}

@override@JsonKey() final  int activityPage;
@override@JsonKey() final  bool activityHasNext;
@override@JsonKey() final  bool isNoticeInitialLoading;
@override@JsonKey() final  bool isNoticeFetchingMore;
 final  List<AlarmItemDto> _noticeItems;
@override@JsonKey() List<AlarmItemDto> get noticeItems {
  if (_noticeItems is EqualUnmodifiableListView) return _noticeItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_noticeItems);
}

@override@JsonKey() final  int noticePage;
@override@JsonKey() final  bool noticeHasNext;

/// Create a copy of AlarmState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlarmStateCopyWith<_AlarmState> get copyWith => __$AlarmStateCopyWithImpl<_AlarmState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlarmState&&(identical(other.isActivityInitialLoading, isActivityInitialLoading) || other.isActivityInitialLoading == isActivityInitialLoading)&&(identical(other.isActivityFetchingMore, isActivityFetchingMore) || other.isActivityFetchingMore == isActivityFetchingMore)&&const DeepCollectionEquality().equals(other._activityItems, _activityItems)&&(identical(other.activityPage, activityPage) || other.activityPage == activityPage)&&(identical(other.activityHasNext, activityHasNext) || other.activityHasNext == activityHasNext)&&(identical(other.isNoticeInitialLoading, isNoticeInitialLoading) || other.isNoticeInitialLoading == isNoticeInitialLoading)&&(identical(other.isNoticeFetchingMore, isNoticeFetchingMore) || other.isNoticeFetchingMore == isNoticeFetchingMore)&&const DeepCollectionEquality().equals(other._noticeItems, _noticeItems)&&(identical(other.noticePage, noticePage) || other.noticePage == noticePage)&&(identical(other.noticeHasNext, noticeHasNext) || other.noticeHasNext == noticeHasNext));
}


@override
int get hashCode => Object.hash(runtimeType,isActivityInitialLoading,isActivityFetchingMore,const DeepCollectionEquality().hash(_activityItems),activityPage,activityHasNext,isNoticeInitialLoading,isNoticeFetchingMore,const DeepCollectionEquality().hash(_noticeItems),noticePage,noticeHasNext);

@override
String toString() {
  return 'AlarmState(isActivityInitialLoading: $isActivityInitialLoading, isActivityFetchingMore: $isActivityFetchingMore, activityItems: $activityItems, activityPage: $activityPage, activityHasNext: $activityHasNext, isNoticeInitialLoading: $isNoticeInitialLoading, isNoticeFetchingMore: $isNoticeFetchingMore, noticeItems: $noticeItems, noticePage: $noticePage, noticeHasNext: $noticeHasNext)';
}


}

/// @nodoc
abstract mixin class _$AlarmStateCopyWith<$Res> implements $AlarmStateCopyWith<$Res> {
  factory _$AlarmStateCopyWith(_AlarmState value, $Res Function(_AlarmState) _then) = __$AlarmStateCopyWithImpl;
@override @useResult
$Res call({
 bool isActivityInitialLoading, bool isActivityFetchingMore, List<AlarmItemDto> activityItems, int activityPage, bool activityHasNext, bool isNoticeInitialLoading, bool isNoticeFetchingMore, List<AlarmItemDto> noticeItems, int noticePage, bool noticeHasNext
});




}
/// @nodoc
class __$AlarmStateCopyWithImpl<$Res>
    implements _$AlarmStateCopyWith<$Res> {
  __$AlarmStateCopyWithImpl(this._self, this._then);

  final _AlarmState _self;
  final $Res Function(_AlarmState) _then;

/// Create a copy of AlarmState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isActivityInitialLoading = null,Object? isActivityFetchingMore = null,Object? activityItems = null,Object? activityPage = null,Object? activityHasNext = null,Object? isNoticeInitialLoading = null,Object? isNoticeFetchingMore = null,Object? noticeItems = null,Object? noticePage = null,Object? noticeHasNext = null,}) {
  return _then(_AlarmState(
isActivityInitialLoading: null == isActivityInitialLoading ? _self.isActivityInitialLoading : isActivityInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isActivityFetchingMore: null == isActivityFetchingMore ? _self.isActivityFetchingMore : isActivityFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,activityItems: null == activityItems ? _self._activityItems : activityItems // ignore: cast_nullable_to_non_nullable
as List<AlarmItemDto>,activityPage: null == activityPage ? _self.activityPage : activityPage // ignore: cast_nullable_to_non_nullable
as int,activityHasNext: null == activityHasNext ? _self.activityHasNext : activityHasNext // ignore: cast_nullable_to_non_nullable
as bool,isNoticeInitialLoading: null == isNoticeInitialLoading ? _self.isNoticeInitialLoading : isNoticeInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isNoticeFetchingMore: null == isNoticeFetchingMore ? _self.isNoticeFetchingMore : isNoticeFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,noticeItems: null == noticeItems ? _self._noticeItems : noticeItems // ignore: cast_nullable_to_non_nullable
as List<AlarmItemDto>,noticePage: null == noticePage ? _self.noticePage : noticePage // ignore: cast_nullable_to_non_nullable
as int,noticeHasNext: null == noticeHasNext ? _self.noticeHasNext : noticeHasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
