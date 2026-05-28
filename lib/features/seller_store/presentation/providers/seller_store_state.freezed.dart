// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellerStoreState {

 bool get isLoading; List<RecommandDto> get productList; int get page; bool get hasNext; bool get isFetchingMore;
/// Create a copy of SellerStoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerStoreStateCopyWith<SellerStoreState> get copyWith => _$SellerStoreStateCopyWithImpl<SellerStoreState>(this as SellerStoreState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerStoreState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.productList, productList)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(productList),page,hasNext,isFetchingMore);

@override
String toString() {
  return 'SellerStoreState(isLoading: $isLoading, productList: $productList, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class $SellerStoreStateCopyWith<$Res>  {
  factory $SellerStoreStateCopyWith(SellerStoreState value, $Res Function(SellerStoreState) _then) = _$SellerStoreStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<RecommandDto> productList, int page, bool hasNext, bool isFetchingMore
});




}
/// @nodoc
class _$SellerStoreStateCopyWithImpl<$Res>
    implements $SellerStoreStateCopyWith<$Res> {
  _$SellerStoreStateCopyWithImpl(this._self, this._then);

  final SellerStoreState _self;
  final $Res Function(SellerStoreState) _then;

/// Create a copy of SellerStoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? productList = null,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,productList: null == productList ? _self.productList : productList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SellerStoreState].
extension SellerStoreStatePatterns on SellerStoreState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerStoreState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerStoreState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerStoreState value)  $default,){
final _that = this;
switch (_that) {
case _SellerStoreState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerStoreState value)?  $default,){
final _that = this;
switch (_that) {
case _SellerStoreState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<RecommandDto> productList,  int page,  bool hasNext,  bool isFetchingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerStoreState() when $default != null:
return $default(_that.isLoading,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<RecommandDto> productList,  int page,  bool hasNext,  bool isFetchingMore)  $default,) {final _that = this;
switch (_that) {
case _SellerStoreState():
return $default(_that.isLoading,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<RecommandDto> productList,  int page,  bool hasNext,  bool isFetchingMore)?  $default,) {final _that = this;
switch (_that) {
case _SellerStoreState() when $default != null:
return $default(_that.isLoading,_that.productList,_that.page,_that.hasNext,_that.isFetchingMore);case _:
  return null;

}
}

}

/// @nodoc


class _SellerStoreState implements SellerStoreState {
  const _SellerStoreState({required this.isLoading, required final  List<RecommandDto> productList, this.page = 0, this.hasNext = true, this.isFetchingMore = false}): _productList = productList;
  

@override final  bool isLoading;
 final  List<RecommandDto> _productList;
@override List<RecommandDto> get productList {
  if (_productList is EqualUnmodifiableListView) return _productList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productList);
}

@override@JsonKey() final  int page;
@override@JsonKey() final  bool hasNext;
@override@JsonKey() final  bool isFetchingMore;

/// Create a copy of SellerStoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerStoreStateCopyWith<_SellerStoreState> get copyWith => __$SellerStoreStateCopyWithImpl<_SellerStoreState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerStoreState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._productList, _productList)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_productList),page,hasNext,isFetchingMore);

@override
String toString() {
  return 'SellerStoreState(isLoading: $isLoading, productList: $productList, page: $page, hasNext: $hasNext, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class _$SellerStoreStateCopyWith<$Res> implements $SellerStoreStateCopyWith<$Res> {
  factory _$SellerStoreStateCopyWith(_SellerStoreState value, $Res Function(_SellerStoreState) _then) = __$SellerStoreStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<RecommandDto> productList, int page, bool hasNext, bool isFetchingMore
});




}
/// @nodoc
class __$SellerStoreStateCopyWithImpl<$Res>
    implements _$SellerStoreStateCopyWith<$Res> {
  __$SellerStoreStateCopyWithImpl(this._self, this._then);

  final _SellerStoreState _self;
  final $Res Function(_SellerStoreState) _then;

/// Create a copy of SellerStoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? productList = null,Object? page = null,Object? hasNext = null,Object? isFetchingMore = null,}) {
  return _then(_SellerStoreState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,productList: null == productList ? _self._productList : productList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
