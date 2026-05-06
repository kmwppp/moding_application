// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderListState {

 OrderListSearchType get searchType; DateListResponseWrapper? get dateListWrapper;
/// Create a copy of OrderListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderListStateCopyWith<OrderListState> get copyWith => _$OrderListStateCopyWithImpl<OrderListState>(this as OrderListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderListState&&(identical(other.searchType, searchType) || other.searchType == searchType)&&(identical(other.dateListWrapper, dateListWrapper) || other.dateListWrapper == dateListWrapper));
}


@override
int get hashCode => Object.hash(runtimeType,searchType,dateListWrapper);

@override
String toString() {
  return 'OrderListState(searchType: $searchType, dateListWrapper: $dateListWrapper)';
}


}

/// @nodoc
abstract mixin class $OrderListStateCopyWith<$Res>  {
  factory $OrderListStateCopyWith(OrderListState value, $Res Function(OrderListState) _then) = _$OrderListStateCopyWithImpl;
@useResult
$Res call({
 OrderListSearchType searchType, DateListResponseWrapper? dateListWrapper
});


$DateListResponseWrapperCopyWith<$Res>? get dateListWrapper;

}
/// @nodoc
class _$OrderListStateCopyWithImpl<$Res>
    implements $OrderListStateCopyWith<$Res> {
  _$OrderListStateCopyWithImpl(this._self, this._then);

  final OrderListState _self;
  final $Res Function(OrderListState) _then;

/// Create a copy of OrderListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchType = null,Object? dateListWrapper = freezed,}) {
  return _then(_self.copyWith(
searchType: null == searchType ? _self.searchType : searchType // ignore: cast_nullable_to_non_nullable
as OrderListSearchType,dateListWrapper: freezed == dateListWrapper ? _self.dateListWrapper : dateListWrapper // ignore: cast_nullable_to_non_nullable
as DateListResponseWrapper?,
  ));
}
/// Create a copy of OrderListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateListResponseWrapperCopyWith<$Res>? get dateListWrapper {
    if (_self.dateListWrapper == null) {
    return null;
  }

  return $DateListResponseWrapperCopyWith<$Res>(_self.dateListWrapper!, (value) {
    return _then(_self.copyWith(dateListWrapper: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderListState].
extension OrderListStatePatterns on OrderListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderListState value)  $default,){
final _that = this;
switch (_that) {
case _OrderListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderListState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderListSearchType searchType,  DateListResponseWrapper? dateListWrapper)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderListState() when $default != null:
return $default(_that.searchType,_that.dateListWrapper);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderListSearchType searchType,  DateListResponseWrapper? dateListWrapper)  $default,) {final _that = this;
switch (_that) {
case _OrderListState():
return $default(_that.searchType,_that.dateListWrapper);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderListSearchType searchType,  DateListResponseWrapper? dateListWrapper)?  $default,) {final _that = this;
switch (_that) {
case _OrderListState() when $default != null:
return $default(_that.searchType,_that.dateListWrapper);case _:
  return null;

}
}

}

/// @nodoc


class _OrderListState extends OrderListState {
  const _OrderListState({required this.searchType, required this.dateListWrapper}): super._();
  

@override final  OrderListSearchType searchType;
@override final  DateListResponseWrapper? dateListWrapper;

/// Create a copy of OrderListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderListStateCopyWith<_OrderListState> get copyWith => __$OrderListStateCopyWithImpl<_OrderListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderListState&&(identical(other.searchType, searchType) || other.searchType == searchType)&&(identical(other.dateListWrapper, dateListWrapper) || other.dateListWrapper == dateListWrapper));
}


@override
int get hashCode => Object.hash(runtimeType,searchType,dateListWrapper);

@override
String toString() {
  return 'OrderListState(searchType: $searchType, dateListWrapper: $dateListWrapper)';
}


}

/// @nodoc
abstract mixin class _$OrderListStateCopyWith<$Res> implements $OrderListStateCopyWith<$Res> {
  factory _$OrderListStateCopyWith(_OrderListState value, $Res Function(_OrderListState) _then) = __$OrderListStateCopyWithImpl;
@override @useResult
$Res call({
 OrderListSearchType searchType, DateListResponseWrapper? dateListWrapper
});


@override $DateListResponseWrapperCopyWith<$Res>? get dateListWrapper;

}
/// @nodoc
class __$OrderListStateCopyWithImpl<$Res>
    implements _$OrderListStateCopyWith<$Res> {
  __$OrderListStateCopyWithImpl(this._self, this._then);

  final _OrderListState _self;
  final $Res Function(_OrderListState) _then;

/// Create a copy of OrderListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchType = null,Object? dateListWrapper = freezed,}) {
  return _then(_OrderListState(
searchType: null == searchType ? _self.searchType : searchType // ignore: cast_nullable_to_non_nullable
as OrderListSearchType,dateListWrapper: freezed == dateListWrapper ? _self.dateListWrapper : dateListWrapper // ignore: cast_nullable_to_non_nullable
as DateListResponseWrapper?,
  ));
}

/// Create a copy of OrderListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateListResponseWrapperCopyWith<$Res>? get dateListWrapper {
    if (_self.dateListWrapper == null) {
    return null;
  }

  return $DateListResponseWrapperCopyWith<$Res>(_self.dateListWrapper!, (value) {
    return _then(_self.copyWith(dateListWrapper: value));
  });
}
}

// dart format on
