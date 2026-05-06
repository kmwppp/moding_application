// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartState {

 CartResponseDto? get cartData; Set<int> get selectedCartItemIds; List<RecommandDto>? get recentlyList;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&(identical(other.cartData, cartData) || other.cartData == cartData)&&const DeepCollectionEquality().equals(other.selectedCartItemIds, selectedCartItemIds)&&const DeepCollectionEquality().equals(other.recentlyList, recentlyList));
}


@override
int get hashCode => Object.hash(runtimeType,cartData,const DeepCollectionEquality().hash(selectedCartItemIds),const DeepCollectionEquality().hash(recentlyList));

@override
String toString() {
  return 'CartState(cartData: $cartData, selectedCartItemIds: $selectedCartItemIds, recentlyList: $recentlyList)';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 CartResponseDto? cartData, Set<int> selectedCartItemIds, List<RecommandDto>? recentlyList
});


$CartResponseDtoCopyWith<$Res>? get cartData;

}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartData = freezed,Object? selectedCartItemIds = null,Object? recentlyList = freezed,}) {
  return _then(_self.copyWith(
cartData: freezed == cartData ? _self.cartData : cartData // ignore: cast_nullable_to_non_nullable
as CartResponseDto?,selectedCartItemIds: null == selectedCartItemIds ? _self.selectedCartItemIds : selectedCartItemIds // ignore: cast_nullable_to_non_nullable
as Set<int>,recentlyList: freezed == recentlyList ? _self.recentlyList : recentlyList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,
  ));
}
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartResponseDtoCopyWith<$Res>? get cartData {
    if (_self.cartData == null) {
    return null;
  }

  return $CartResponseDtoCopyWith<$Res>(_self.cartData!, (value) {
    return _then(_self.copyWith(cartData: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartState value)  $default,){
final _that = this;
switch (_that) {
case _CartState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartState value)?  $default,){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartResponseDto? cartData,  Set<int> selectedCartItemIds,  List<RecommandDto>? recentlyList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.cartData,_that.selectedCartItemIds,_that.recentlyList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartResponseDto? cartData,  Set<int> selectedCartItemIds,  List<RecommandDto>? recentlyList)  $default,) {final _that = this;
switch (_that) {
case _CartState():
return $default(_that.cartData,_that.selectedCartItemIds,_that.recentlyList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartResponseDto? cartData,  Set<int> selectedCartItemIds,  List<RecommandDto>? recentlyList)?  $default,) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.cartData,_that.selectedCartItemIds,_that.recentlyList);case _:
  return null;

}
}

}

/// @nodoc


class _CartState extends CartState {
  const _CartState({this.cartData, final  Set<int> selectedCartItemIds = const <int>{}, required final  List<RecommandDto>? recentlyList}): _selectedCartItemIds = selectedCartItemIds,_recentlyList = recentlyList,super._();
  

@override final  CartResponseDto? cartData;
 final  Set<int> _selectedCartItemIds;
@override@JsonKey() Set<int> get selectedCartItemIds {
  if (_selectedCartItemIds is EqualUnmodifiableSetView) return _selectedCartItemIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedCartItemIds);
}

 final  List<RecommandDto>? _recentlyList;
@override List<RecommandDto>? get recentlyList {
  final value = _recentlyList;
  if (value == null) return null;
  if (_recentlyList is EqualUnmodifiableListView) return _recentlyList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartStateCopyWith<_CartState> get copyWith => __$CartStateCopyWithImpl<_CartState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartState&&(identical(other.cartData, cartData) || other.cartData == cartData)&&const DeepCollectionEquality().equals(other._selectedCartItemIds, _selectedCartItemIds)&&const DeepCollectionEquality().equals(other._recentlyList, _recentlyList));
}


@override
int get hashCode => Object.hash(runtimeType,cartData,const DeepCollectionEquality().hash(_selectedCartItemIds),const DeepCollectionEquality().hash(_recentlyList));

@override
String toString() {
  return 'CartState(cartData: $cartData, selectedCartItemIds: $selectedCartItemIds, recentlyList: $recentlyList)';
}


}

/// @nodoc
abstract mixin class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(_CartState value, $Res Function(_CartState) _then) = __$CartStateCopyWithImpl;
@override @useResult
$Res call({
 CartResponseDto? cartData, Set<int> selectedCartItemIds, List<RecommandDto>? recentlyList
});


@override $CartResponseDtoCopyWith<$Res>? get cartData;

}
/// @nodoc
class __$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(this._self, this._then);

  final _CartState _self;
  final $Res Function(_CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartData = freezed,Object? selectedCartItemIds = null,Object? recentlyList = freezed,}) {
  return _then(_CartState(
cartData: freezed == cartData ? _self.cartData : cartData // ignore: cast_nullable_to_non_nullable
as CartResponseDto?,selectedCartItemIds: null == selectedCartItemIds ? _self._selectedCartItemIds : selectedCartItemIds // ignore: cast_nullable_to_non_nullable
as Set<int>,recentlyList: freezed == recentlyList ? _self._recentlyList : recentlyList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartResponseDtoCopyWith<$Res>? get cartData {
    if (_self.cartData == null) {
    return null;
  }

  return $CartResponseDtoCopyWith<$Res>(_self.cartData!, (value) {
    return _then(_self.copyWith(cartData: value));
  });
}
}

// dart format on
