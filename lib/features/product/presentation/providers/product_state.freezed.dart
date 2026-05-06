// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductState {

 bool get isLoading; int get imageCurrentIndex; bool get showShippingCostInfo; ProductDto? get productInfo; OptionDto? get selectedOption; int get totalPrice; int get selectProductCount; List<RecommandDto>? get similarList; List<ReviewDto>? get reviewList; List<RecommandDto>? get recentlyList; List<RecommandDto>? get businessPickList; Duration get remainingTime; SellerInfoDto? get sellerInfo; int get businessPage; bool get businessHasNext; bool get businessLoading;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.imageCurrentIndex, imageCurrentIndex) || other.imageCurrentIndex == imageCurrentIndex)&&(identical(other.showShippingCostInfo, showShippingCostInfo) || other.showShippingCostInfo == showShippingCostInfo)&&(identical(other.productInfo, productInfo) || other.productInfo == productInfo)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.selectProductCount, selectProductCount) || other.selectProductCount == selectProductCount)&&const DeepCollectionEquality().equals(other.similarList, similarList)&&const DeepCollectionEquality().equals(other.reviewList, reviewList)&&const DeepCollectionEquality().equals(other.recentlyList, recentlyList)&&const DeepCollectionEquality().equals(other.businessPickList, businessPickList)&&(identical(other.remainingTime, remainingTime) || other.remainingTime == remainingTime)&&(identical(other.sellerInfo, sellerInfo) || other.sellerInfo == sellerInfo)&&(identical(other.businessPage, businessPage) || other.businessPage == businessPage)&&(identical(other.businessHasNext, businessHasNext) || other.businessHasNext == businessHasNext)&&(identical(other.businessLoading, businessLoading) || other.businessLoading == businessLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,imageCurrentIndex,showShippingCostInfo,productInfo,selectedOption,totalPrice,selectProductCount,const DeepCollectionEquality().hash(similarList),const DeepCollectionEquality().hash(reviewList),const DeepCollectionEquality().hash(recentlyList),const DeepCollectionEquality().hash(businessPickList),remainingTime,sellerInfo,businessPage,businessHasNext,businessLoading);

@override
String toString() {
  return 'ProductState(isLoading: $isLoading, imageCurrentIndex: $imageCurrentIndex, showShippingCostInfo: $showShippingCostInfo, productInfo: $productInfo, selectedOption: $selectedOption, totalPrice: $totalPrice, selectProductCount: $selectProductCount, similarList: $similarList, reviewList: $reviewList, recentlyList: $recentlyList, businessPickList: $businessPickList, remainingTime: $remainingTime, sellerInfo: $sellerInfo, businessPage: $businessPage, businessHasNext: $businessHasNext, businessLoading: $businessLoading)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, int imageCurrentIndex, bool showShippingCostInfo, ProductDto? productInfo, OptionDto? selectedOption, int totalPrice, int selectProductCount, List<RecommandDto>? similarList, List<ReviewDto>? reviewList, List<RecommandDto>? recentlyList, List<RecommandDto>? businessPickList, Duration remainingTime, SellerInfoDto? sellerInfo, int businessPage, bool businessHasNext, bool businessLoading
});


$ProductDtoCopyWith<$Res>? get productInfo;$OptionDtoCopyWith<$Res>? get selectedOption;$SellerInfoDtoCopyWith<$Res>? get sellerInfo;

}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? imageCurrentIndex = null,Object? showShippingCostInfo = null,Object? productInfo = freezed,Object? selectedOption = freezed,Object? totalPrice = null,Object? selectProductCount = null,Object? similarList = freezed,Object? reviewList = freezed,Object? recentlyList = freezed,Object? businessPickList = freezed,Object? remainingTime = null,Object? sellerInfo = freezed,Object? businessPage = null,Object? businessHasNext = null,Object? businessLoading = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,imageCurrentIndex: null == imageCurrentIndex ? _self.imageCurrentIndex : imageCurrentIndex // ignore: cast_nullable_to_non_nullable
as int,showShippingCostInfo: null == showShippingCostInfo ? _self.showShippingCostInfo : showShippingCostInfo // ignore: cast_nullable_to_non_nullable
as bool,productInfo: freezed == productInfo ? _self.productInfo : productInfo // ignore: cast_nullable_to_non_nullable
as ProductDto?,selectedOption: freezed == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as OptionDto?,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,selectProductCount: null == selectProductCount ? _self.selectProductCount : selectProductCount // ignore: cast_nullable_to_non_nullable
as int,similarList: freezed == similarList ? _self.similarList : similarList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,reviewList: freezed == reviewList ? _self.reviewList : reviewList // ignore: cast_nullable_to_non_nullable
as List<ReviewDto>?,recentlyList: freezed == recentlyList ? _self.recentlyList : recentlyList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,businessPickList: freezed == businessPickList ? _self.businessPickList : businessPickList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,remainingTime: null == remainingTime ? _self.remainingTime : remainingTime // ignore: cast_nullable_to_non_nullable
as Duration,sellerInfo: freezed == sellerInfo ? _self.sellerInfo : sellerInfo // ignore: cast_nullable_to_non_nullable
as SellerInfoDto?,businessPage: null == businessPage ? _self.businessPage : businessPage // ignore: cast_nullable_to_non_nullable
as int,businessHasNext: null == businessHasNext ? _self.businessHasNext : businessHasNext // ignore: cast_nullable_to_non_nullable
as bool,businessLoading: null == businessLoading ? _self.businessLoading : businessLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<$Res>? get productInfo {
    if (_self.productInfo == null) {
    return null;
  }

  return $ProductDtoCopyWith<$Res>(_self.productInfo!, (value) {
    return _then(_self.copyWith(productInfo: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDtoCopyWith<$Res>? get selectedOption {
    if (_self.selectedOption == null) {
    return null;
  }

  return $OptionDtoCopyWith<$Res>(_self.selectedOption!, (value) {
    return _then(_self.copyWith(selectedOption: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerInfoDtoCopyWith<$Res>? get sellerInfo {
    if (_self.sellerInfo == null) {
    return null;
  }

  return $SellerInfoDtoCopyWith<$Res>(_self.sellerInfo!, (value) {
    return _then(_self.copyWith(sellerInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductState value)  $default,){
final _that = this;
switch (_that) {
case _ProductState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  int imageCurrentIndex,  bool showShippingCostInfo,  ProductDto? productInfo,  OptionDto? selectedOption,  int totalPrice,  int selectProductCount,  List<RecommandDto>? similarList,  List<ReviewDto>? reviewList,  List<RecommandDto>? recentlyList,  List<RecommandDto>? businessPickList,  Duration remainingTime,  SellerInfoDto? sellerInfo,  int businessPage,  bool businessHasNext,  bool businessLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.isLoading,_that.imageCurrentIndex,_that.showShippingCostInfo,_that.productInfo,_that.selectedOption,_that.totalPrice,_that.selectProductCount,_that.similarList,_that.reviewList,_that.recentlyList,_that.businessPickList,_that.remainingTime,_that.sellerInfo,_that.businessPage,_that.businessHasNext,_that.businessLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  int imageCurrentIndex,  bool showShippingCostInfo,  ProductDto? productInfo,  OptionDto? selectedOption,  int totalPrice,  int selectProductCount,  List<RecommandDto>? similarList,  List<ReviewDto>? reviewList,  List<RecommandDto>? recentlyList,  List<RecommandDto>? businessPickList,  Duration remainingTime,  SellerInfoDto? sellerInfo,  int businessPage,  bool businessHasNext,  bool businessLoading)  $default,) {final _that = this;
switch (_that) {
case _ProductState():
return $default(_that.isLoading,_that.imageCurrentIndex,_that.showShippingCostInfo,_that.productInfo,_that.selectedOption,_that.totalPrice,_that.selectProductCount,_that.similarList,_that.reviewList,_that.recentlyList,_that.businessPickList,_that.remainingTime,_that.sellerInfo,_that.businessPage,_that.businessHasNext,_that.businessLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  int imageCurrentIndex,  bool showShippingCostInfo,  ProductDto? productInfo,  OptionDto? selectedOption,  int totalPrice,  int selectProductCount,  List<RecommandDto>? similarList,  List<ReviewDto>? reviewList,  List<RecommandDto>? recentlyList,  List<RecommandDto>? businessPickList,  Duration remainingTime,  SellerInfoDto? sellerInfo,  int businessPage,  bool businessHasNext,  bool businessLoading)?  $default,) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.isLoading,_that.imageCurrentIndex,_that.showShippingCostInfo,_that.productInfo,_that.selectedOption,_that.totalPrice,_that.selectProductCount,_that.similarList,_that.reviewList,_that.recentlyList,_that.businessPickList,_that.remainingTime,_that.sellerInfo,_that.businessPage,_that.businessHasNext,_that.businessLoading);case _:
  return null;

}
}

}

/// @nodoc


class _ProductState extends ProductState {
  const _ProductState({required this.isLoading, required this.imageCurrentIndex, required this.showShippingCostInfo, required this.productInfo, required this.selectedOption, required this.totalPrice, required this.selectProductCount, required final  List<RecommandDto>? similarList, required final  List<ReviewDto>? reviewList, required final  List<RecommandDto>? recentlyList, required final  List<RecommandDto>? businessPickList, required this.remainingTime, required this.sellerInfo, this.businessPage = 0, this.businessHasNext = true, this.businessLoading = false}): _similarList = similarList,_reviewList = reviewList,_recentlyList = recentlyList,_businessPickList = businessPickList,super._();
  

@override final  bool isLoading;
@override final  int imageCurrentIndex;
@override final  bool showShippingCostInfo;
@override final  ProductDto? productInfo;
@override final  OptionDto? selectedOption;
@override final  int totalPrice;
@override final  int selectProductCount;
 final  List<RecommandDto>? _similarList;
@override List<RecommandDto>? get similarList {
  final value = _similarList;
  if (value == null) return null;
  if (_similarList is EqualUnmodifiableListView) return _similarList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ReviewDto>? _reviewList;
@override List<ReviewDto>? get reviewList {
  final value = _reviewList;
  if (value == null) return null;
  if (_reviewList is EqualUnmodifiableListView) return _reviewList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RecommandDto>? _recentlyList;
@override List<RecommandDto>? get recentlyList {
  final value = _recentlyList;
  if (value == null) return null;
  if (_recentlyList is EqualUnmodifiableListView) return _recentlyList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RecommandDto>? _businessPickList;
@override List<RecommandDto>? get businessPickList {
  final value = _businessPickList;
  if (value == null) return null;
  if (_businessPickList is EqualUnmodifiableListView) return _businessPickList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Duration remainingTime;
@override final  SellerInfoDto? sellerInfo;
@override@JsonKey() final  int businessPage;
@override@JsonKey() final  bool businessHasNext;
@override@JsonKey() final  bool businessLoading;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.imageCurrentIndex, imageCurrentIndex) || other.imageCurrentIndex == imageCurrentIndex)&&(identical(other.showShippingCostInfo, showShippingCostInfo) || other.showShippingCostInfo == showShippingCostInfo)&&(identical(other.productInfo, productInfo) || other.productInfo == productInfo)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.selectProductCount, selectProductCount) || other.selectProductCount == selectProductCount)&&const DeepCollectionEquality().equals(other._similarList, _similarList)&&const DeepCollectionEquality().equals(other._reviewList, _reviewList)&&const DeepCollectionEquality().equals(other._recentlyList, _recentlyList)&&const DeepCollectionEquality().equals(other._businessPickList, _businessPickList)&&(identical(other.remainingTime, remainingTime) || other.remainingTime == remainingTime)&&(identical(other.sellerInfo, sellerInfo) || other.sellerInfo == sellerInfo)&&(identical(other.businessPage, businessPage) || other.businessPage == businessPage)&&(identical(other.businessHasNext, businessHasNext) || other.businessHasNext == businessHasNext)&&(identical(other.businessLoading, businessLoading) || other.businessLoading == businessLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,imageCurrentIndex,showShippingCostInfo,productInfo,selectedOption,totalPrice,selectProductCount,const DeepCollectionEquality().hash(_similarList),const DeepCollectionEquality().hash(_reviewList),const DeepCollectionEquality().hash(_recentlyList),const DeepCollectionEquality().hash(_businessPickList),remainingTime,sellerInfo,businessPage,businessHasNext,businessLoading);

@override
String toString() {
  return 'ProductState(isLoading: $isLoading, imageCurrentIndex: $imageCurrentIndex, showShippingCostInfo: $showShippingCostInfo, productInfo: $productInfo, selectedOption: $selectedOption, totalPrice: $totalPrice, selectProductCount: $selectProductCount, similarList: $similarList, reviewList: $reviewList, recentlyList: $recentlyList, businessPickList: $businessPickList, remainingTime: $remainingTime, sellerInfo: $sellerInfo, businessPage: $businessPage, businessHasNext: $businessHasNext, businessLoading: $businessLoading)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, int imageCurrentIndex, bool showShippingCostInfo, ProductDto? productInfo, OptionDto? selectedOption, int totalPrice, int selectProductCount, List<RecommandDto>? similarList, List<ReviewDto>? reviewList, List<RecommandDto>? recentlyList, List<RecommandDto>? businessPickList, Duration remainingTime, SellerInfoDto? sellerInfo, int businessPage, bool businessHasNext, bool businessLoading
});


@override $ProductDtoCopyWith<$Res>? get productInfo;@override $OptionDtoCopyWith<$Res>? get selectedOption;@override $SellerInfoDtoCopyWith<$Res>? get sellerInfo;

}
/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? imageCurrentIndex = null,Object? showShippingCostInfo = null,Object? productInfo = freezed,Object? selectedOption = freezed,Object? totalPrice = null,Object? selectProductCount = null,Object? similarList = freezed,Object? reviewList = freezed,Object? recentlyList = freezed,Object? businessPickList = freezed,Object? remainingTime = null,Object? sellerInfo = freezed,Object? businessPage = null,Object? businessHasNext = null,Object? businessLoading = null,}) {
  return _then(_ProductState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,imageCurrentIndex: null == imageCurrentIndex ? _self.imageCurrentIndex : imageCurrentIndex // ignore: cast_nullable_to_non_nullable
as int,showShippingCostInfo: null == showShippingCostInfo ? _self.showShippingCostInfo : showShippingCostInfo // ignore: cast_nullable_to_non_nullable
as bool,productInfo: freezed == productInfo ? _self.productInfo : productInfo // ignore: cast_nullable_to_non_nullable
as ProductDto?,selectedOption: freezed == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as OptionDto?,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,selectProductCount: null == selectProductCount ? _self.selectProductCount : selectProductCount // ignore: cast_nullable_to_non_nullable
as int,similarList: freezed == similarList ? _self._similarList : similarList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,reviewList: freezed == reviewList ? _self._reviewList : reviewList // ignore: cast_nullable_to_non_nullable
as List<ReviewDto>?,recentlyList: freezed == recentlyList ? _self._recentlyList : recentlyList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,businessPickList: freezed == businessPickList ? _self._businessPickList : businessPickList // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>?,remainingTime: null == remainingTime ? _self.remainingTime : remainingTime // ignore: cast_nullable_to_non_nullable
as Duration,sellerInfo: freezed == sellerInfo ? _self.sellerInfo : sellerInfo // ignore: cast_nullable_to_non_nullable
as SellerInfoDto?,businessPage: null == businessPage ? _self.businessPage : businessPage // ignore: cast_nullable_to_non_nullable
as int,businessHasNext: null == businessHasNext ? _self.businessHasNext : businessHasNext // ignore: cast_nullable_to_non_nullable
as bool,businessLoading: null == businessLoading ? _self.businessLoading : businessLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<$Res>? get productInfo {
    if (_self.productInfo == null) {
    return null;
  }

  return $ProductDtoCopyWith<$Res>(_self.productInfo!, (value) {
    return _then(_self.copyWith(productInfo: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDtoCopyWith<$Res>? get selectedOption {
    if (_self.selectedOption == null) {
    return null;
  }

  return $OptionDtoCopyWith<$Res>(_self.selectedOption!, (value) {
    return _then(_self.copyWith(selectedOption: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerInfoDtoCopyWith<$Res>? get sellerInfo {
    if (_self.sellerInfo == null) {
    return null;
  }

  return $SellerInfoDtoCopyWith<$Res>(_self.sellerInfo!, (value) {
    return _then(_self.copyWith(sellerInfo: value));
  });
}
}

// dart format on
