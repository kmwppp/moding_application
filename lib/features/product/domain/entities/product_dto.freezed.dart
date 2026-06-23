// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDto {

 int? get id; String? get productCode; int? get sellerProfileId; String? get sellerCompanyName; int? get parentCategoryId; int? get categoryId; String? get status; String? get name; String? get description; List<String>? get tags; int? get reviewCount; int? get viewCount; int? get shippingLeadTime; String? get shippingCutoffTime; int? get shippingFee; int? get remoteAreaShippingFee; int? get jejuShippingFee; int? get freeShippingThreshold;@JsonKey(fromJson: _sortOptions) List<OptionDto>? get options;@JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson) StorageMethod? get storageMethod;@JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson) List<DeliveryMethod>? get deliveryMethods; int? get deliveryDays; String? get thumbnailImageUrl; String? get foodLabelImageUrl; List<String>? get galleryImageUrls; List<String>? get descriptionImageUrls; String? get shippingNotice; String? get distributionNotice; String? get handlingPrecaution; List<String>? get claimGuideItems; String? get sampleProvisionType; int? get samplePrice; int? get sampleShippingFee;@NullableLocalDateTimeConverter() DateTime? get saleStartAt;@NullableLocalDateTimeConverter() DateTime? get saleEndAt;@NullableLocalDateTimeConverter() DateTime? get createdAt;@NullableLocalDateTimeConverter() DateTime? get updatedAt; bool? get isWishlisted; bool? get isSameDayShipping; bool? get isRemoteAreaUnavailable; bool? get isJejuUnavailable; bool? get isTaxable; bool? get isRecommended; bool? get isNew; bool? get isEvent; bool? get isVariableWeight; bool? get isHaccpCertified; List<String>? get directDeliveryRegions; bool? get isWeekendShipping;
/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<ProductDto> get copyWith => _$ProductDtoCopyWithImpl<ProductDto>(this as ProductDto, _$identity);

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.sellerCompanyName, sellerCompanyName) || other.sellerCompanyName == sellerCompanyName)&&(identical(other.parentCategoryId, parentCategoryId) || other.parentCategoryId == parentCategoryId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime)&&(identical(other.shippingFee, shippingFee) || other.shippingFee == shippingFee)&&(identical(other.remoteAreaShippingFee, remoteAreaShippingFee) || other.remoteAreaShippingFee == remoteAreaShippingFee)&&(identical(other.jejuShippingFee, jejuShippingFee) || other.jejuShippingFee == jejuShippingFee)&&(identical(other.freeShippingThreshold, freeShippingThreshold) || other.freeShippingThreshold == freeShippingThreshold)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.storageMethod, storageMethod) || other.storageMethod == storageMethod)&&const DeepCollectionEquality().equals(other.deliveryMethods, deliveryMethods)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&(identical(other.foodLabelImageUrl, foodLabelImageUrl) || other.foodLabelImageUrl == foodLabelImageUrl)&&const DeepCollectionEquality().equals(other.galleryImageUrls, galleryImageUrls)&&const DeepCollectionEquality().equals(other.descriptionImageUrls, descriptionImageUrls)&&(identical(other.shippingNotice, shippingNotice) || other.shippingNotice == shippingNotice)&&(identical(other.distributionNotice, distributionNotice) || other.distributionNotice == distributionNotice)&&(identical(other.handlingPrecaution, handlingPrecaution) || other.handlingPrecaution == handlingPrecaution)&&const DeepCollectionEquality().equals(other.claimGuideItems, claimGuideItems)&&(identical(other.sampleProvisionType, sampleProvisionType) || other.sampleProvisionType == sampleProvisionType)&&(identical(other.samplePrice, samplePrice) || other.samplePrice == samplePrice)&&(identical(other.sampleShippingFee, sampleShippingFee) || other.sampleShippingFee == sampleShippingFee)&&(identical(other.saleStartAt, saleStartAt) || other.saleStartAt == saleStartAt)&&(identical(other.saleEndAt, saleEndAt) || other.saleEndAt == saleEndAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isWishlisted, isWishlisted) || other.isWishlisted == isWishlisted)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.isRemoteAreaUnavailable, isRemoteAreaUnavailable) || other.isRemoteAreaUnavailable == isRemoteAreaUnavailable)&&(identical(other.isJejuUnavailable, isJejuUnavailable) || other.isJejuUnavailable == isJejuUnavailable)&&(identical(other.isTaxable, isTaxable) || other.isTaxable == isTaxable)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isEvent, isEvent) || other.isEvent == isEvent)&&(identical(other.isVariableWeight, isVariableWeight) || other.isVariableWeight == isVariableWeight)&&(identical(other.isHaccpCertified, isHaccpCertified) || other.isHaccpCertified == isHaccpCertified)&&const DeepCollectionEquality().equals(other.directDeliveryRegions, directDeliveryRegions)&&(identical(other.isWeekendShipping, isWeekendShipping) || other.isWeekendShipping == isWeekendShipping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,productCode,sellerProfileId,sellerCompanyName,parentCategoryId,categoryId,status,name,description,const DeepCollectionEquality().hash(tags),reviewCount,viewCount,shippingLeadTime,shippingCutoffTime,shippingFee,remoteAreaShippingFee,jejuShippingFee,freeShippingThreshold,const DeepCollectionEquality().hash(options),storageMethod,const DeepCollectionEquality().hash(deliveryMethods),deliveryDays,thumbnailImageUrl,foodLabelImageUrl,const DeepCollectionEquality().hash(galleryImageUrls),const DeepCollectionEquality().hash(descriptionImageUrls),shippingNotice,distributionNotice,handlingPrecaution,const DeepCollectionEquality().hash(claimGuideItems),sampleProvisionType,samplePrice,sampleShippingFee,saleStartAt,saleEndAt,createdAt,updatedAt,isWishlisted,isSameDayShipping,isRemoteAreaUnavailable,isJejuUnavailable,isTaxable,isRecommended,isNew,isEvent,isVariableWeight,isHaccpCertified,const DeepCollectionEquality().hash(directDeliveryRegions),isWeekendShipping]);

@override
String toString() {
  return 'ProductDto(id: $id, productCode: $productCode, sellerProfileId: $sellerProfileId, sellerCompanyName: $sellerCompanyName, parentCategoryId: $parentCategoryId, categoryId: $categoryId, status: $status, name: $name, description: $description, tags: $tags, reviewCount: $reviewCount, viewCount: $viewCount, shippingLeadTime: $shippingLeadTime, shippingCutoffTime: $shippingCutoffTime, shippingFee: $shippingFee, remoteAreaShippingFee: $remoteAreaShippingFee, jejuShippingFee: $jejuShippingFee, freeShippingThreshold: $freeShippingThreshold, options: $options, storageMethod: $storageMethod, deliveryMethods: $deliveryMethods, deliveryDays: $deliveryDays, thumbnailImageUrl: $thumbnailImageUrl, foodLabelImageUrl: $foodLabelImageUrl, galleryImageUrls: $galleryImageUrls, descriptionImageUrls: $descriptionImageUrls, shippingNotice: $shippingNotice, distributionNotice: $distributionNotice, handlingPrecaution: $handlingPrecaution, claimGuideItems: $claimGuideItems, sampleProvisionType: $sampleProvisionType, samplePrice: $samplePrice, sampleShippingFee: $sampleShippingFee, saleStartAt: $saleStartAt, saleEndAt: $saleEndAt, createdAt: $createdAt, updatedAt: $updatedAt, isWishlisted: $isWishlisted, isSameDayShipping: $isSameDayShipping, isRemoteAreaUnavailable: $isRemoteAreaUnavailable, isJejuUnavailable: $isJejuUnavailable, isTaxable: $isTaxable, isRecommended: $isRecommended, isNew: $isNew, isEvent: $isEvent, isVariableWeight: $isVariableWeight, isHaccpCertified: $isHaccpCertified, directDeliveryRegions: $directDeliveryRegions, isWeekendShipping: $isWeekendShipping)';
}


}

/// @nodoc
abstract mixin class $ProductDtoCopyWith<$Res>  {
  factory $ProductDtoCopyWith(ProductDto value, $Res Function(ProductDto) _then) = _$ProductDtoCopyWithImpl;
@useResult
$Res call({
 int? id, String? productCode, int? sellerProfileId, String? sellerCompanyName, int? parentCategoryId, int? categoryId, String? status, String? name, String? description, List<String>? tags, int? reviewCount, int? viewCount, int? shippingLeadTime, String? shippingCutoffTime, int? shippingFee, int? remoteAreaShippingFee, int? jejuShippingFee, int? freeShippingThreshold,@JsonKey(fromJson: _sortOptions) List<OptionDto>? options,@JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson) StorageMethod? storageMethod,@JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson) List<DeliveryMethod>? deliveryMethods, int? deliveryDays, String? thumbnailImageUrl, String? foodLabelImageUrl, List<String>? galleryImageUrls, List<String>? descriptionImageUrls, String? shippingNotice, String? distributionNotice, String? handlingPrecaution, List<String>? claimGuideItems, String? sampleProvisionType, int? samplePrice, int? sampleShippingFee,@NullableLocalDateTimeConverter() DateTime? saleStartAt,@NullableLocalDateTimeConverter() DateTime? saleEndAt,@NullableLocalDateTimeConverter() DateTime? createdAt,@NullableLocalDateTimeConverter() DateTime? updatedAt, bool? isWishlisted, bool? isSameDayShipping, bool? isRemoteAreaUnavailable, bool? isJejuUnavailable, bool? isTaxable, bool? isRecommended, bool? isNew, bool? isEvent, bool? isVariableWeight, bool? isHaccpCertified, List<String>? directDeliveryRegions, bool? isWeekendShipping
});




}
/// @nodoc
class _$ProductDtoCopyWithImpl<$Res>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._self, this._then);

  final ProductDto _self;
  final $Res Function(ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productCode = freezed,Object? sellerProfileId = freezed,Object? sellerCompanyName = freezed,Object? parentCategoryId = freezed,Object? categoryId = freezed,Object? status = freezed,Object? name = freezed,Object? description = freezed,Object? tags = freezed,Object? reviewCount = freezed,Object? viewCount = freezed,Object? shippingLeadTime = freezed,Object? shippingCutoffTime = freezed,Object? shippingFee = freezed,Object? remoteAreaShippingFee = freezed,Object? jejuShippingFee = freezed,Object? freeShippingThreshold = freezed,Object? options = freezed,Object? storageMethod = freezed,Object? deliveryMethods = freezed,Object? deliveryDays = freezed,Object? thumbnailImageUrl = freezed,Object? foodLabelImageUrl = freezed,Object? galleryImageUrls = freezed,Object? descriptionImageUrls = freezed,Object? shippingNotice = freezed,Object? distributionNotice = freezed,Object? handlingPrecaution = freezed,Object? claimGuideItems = freezed,Object? sampleProvisionType = freezed,Object? samplePrice = freezed,Object? sampleShippingFee = freezed,Object? saleStartAt = freezed,Object? saleEndAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? isWishlisted = freezed,Object? isSameDayShipping = freezed,Object? isRemoteAreaUnavailable = freezed,Object? isJejuUnavailable = freezed,Object? isTaxable = freezed,Object? isRecommended = freezed,Object? isNew = freezed,Object? isEvent = freezed,Object? isVariableWeight = freezed,Object? isHaccpCertified = freezed,Object? directDeliveryRegions = freezed,Object? isWeekendShipping = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String?,sellerProfileId: freezed == sellerProfileId ? _self.sellerProfileId : sellerProfileId // ignore: cast_nullable_to_non_nullable
as int?,sellerCompanyName: freezed == sellerCompanyName ? _self.sellerCompanyName : sellerCompanyName // ignore: cast_nullable_to_non_nullable
as String?,parentCategoryId: freezed == parentCategoryId ? _self.parentCategoryId : parentCategoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,viewCount: freezed == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int?,shippingLeadTime: freezed == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int?,shippingCutoffTime: freezed == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String?,shippingFee: freezed == shippingFee ? _self.shippingFee : shippingFee // ignore: cast_nullable_to_non_nullable
as int?,remoteAreaShippingFee: freezed == remoteAreaShippingFee ? _self.remoteAreaShippingFee : remoteAreaShippingFee // ignore: cast_nullable_to_non_nullable
as int?,jejuShippingFee: freezed == jejuShippingFee ? _self.jejuShippingFee : jejuShippingFee // ignore: cast_nullable_to_non_nullable
as int?,freeShippingThreshold: freezed == freeShippingThreshold ? _self.freeShippingThreshold : freeShippingThreshold // ignore: cast_nullable_to_non_nullable
as int?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,storageMethod: freezed == storageMethod ? _self.storageMethod : storageMethod // ignore: cast_nullable_to_non_nullable
as StorageMethod?,deliveryMethods: freezed == deliveryMethods ? _self.deliveryMethods : deliveryMethods // ignore: cast_nullable_to_non_nullable
as List<DeliveryMethod>?,deliveryDays: freezed == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int?,thumbnailImageUrl: freezed == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String?,foodLabelImageUrl: freezed == foodLabelImageUrl ? _self.foodLabelImageUrl : foodLabelImageUrl // ignore: cast_nullable_to_non_nullable
as String?,galleryImageUrls: freezed == galleryImageUrls ? _self.galleryImageUrls : galleryImageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,descriptionImageUrls: freezed == descriptionImageUrls ? _self.descriptionImageUrls : descriptionImageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,shippingNotice: freezed == shippingNotice ? _self.shippingNotice : shippingNotice // ignore: cast_nullable_to_non_nullable
as String?,distributionNotice: freezed == distributionNotice ? _self.distributionNotice : distributionNotice // ignore: cast_nullable_to_non_nullable
as String?,handlingPrecaution: freezed == handlingPrecaution ? _self.handlingPrecaution : handlingPrecaution // ignore: cast_nullable_to_non_nullable
as String?,claimGuideItems: freezed == claimGuideItems ? _self.claimGuideItems : claimGuideItems // ignore: cast_nullable_to_non_nullable
as List<String>?,sampleProvisionType: freezed == sampleProvisionType ? _self.sampleProvisionType : sampleProvisionType // ignore: cast_nullable_to_non_nullable
as String?,samplePrice: freezed == samplePrice ? _self.samplePrice : samplePrice // ignore: cast_nullable_to_non_nullable
as int?,sampleShippingFee: freezed == sampleShippingFee ? _self.sampleShippingFee : sampleShippingFee // ignore: cast_nullable_to_non_nullable
as int?,saleStartAt: freezed == saleStartAt ? _self.saleStartAt : saleStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,saleEndAt: freezed == saleEndAt ? _self.saleEndAt : saleEndAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isWishlisted: freezed == isWishlisted ? _self.isWishlisted : isWishlisted // ignore: cast_nullable_to_non_nullable
as bool?,isSameDayShipping: freezed == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool?,isRemoteAreaUnavailable: freezed == isRemoteAreaUnavailable ? _self.isRemoteAreaUnavailable : isRemoteAreaUnavailable // ignore: cast_nullable_to_non_nullable
as bool?,isJejuUnavailable: freezed == isJejuUnavailable ? _self.isJejuUnavailable : isJejuUnavailable // ignore: cast_nullable_to_non_nullable
as bool?,isTaxable: freezed == isTaxable ? _self.isTaxable : isTaxable // ignore: cast_nullable_to_non_nullable
as bool?,isRecommended: freezed == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool?,isNew: freezed == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool?,isEvent: freezed == isEvent ? _self.isEvent : isEvent // ignore: cast_nullable_to_non_nullable
as bool?,isVariableWeight: freezed == isVariableWeight ? _self.isVariableWeight : isVariableWeight // ignore: cast_nullable_to_non_nullable
as bool?,isHaccpCertified: freezed == isHaccpCertified ? _self.isHaccpCertified : isHaccpCertified // ignore: cast_nullable_to_non_nullable
as bool?,directDeliveryRegions: freezed == directDeliveryRegions ? _self.directDeliveryRegions : directDeliveryRegions // ignore: cast_nullable_to_non_nullable
as List<String>?,isWeekendShipping: freezed == isWeekendShipping ? _self.isWeekendShipping : isWeekendShipping // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDto].
extension ProductDtoPatterns on ProductDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? productCode,  int? sellerProfileId,  String? sellerCompanyName,  int? parentCategoryId,  int? categoryId,  String? status,  String? name,  String? description,  List<String>? tags,  int? reviewCount,  int? viewCount,  int? shippingLeadTime,  String? shippingCutoffTime,  int? shippingFee,  int? remoteAreaShippingFee,  int? jejuShippingFee,  int? freeShippingThreshold, @JsonKey(fromJson: _sortOptions)  List<OptionDto>? options, @JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson)  StorageMethod? storageMethod, @JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson)  List<DeliveryMethod>? deliveryMethods,  int? deliveryDays,  String? thumbnailImageUrl,  String? foodLabelImageUrl,  List<String>? galleryImageUrls,  List<String>? descriptionImageUrls,  String? shippingNotice,  String? distributionNotice,  String? handlingPrecaution,  List<String>? claimGuideItems,  String? sampleProvisionType,  int? samplePrice,  int? sampleShippingFee, @NullableLocalDateTimeConverter()  DateTime? saleStartAt, @NullableLocalDateTimeConverter()  DateTime? saleEndAt, @NullableLocalDateTimeConverter()  DateTime? createdAt, @NullableLocalDateTimeConverter()  DateTime? updatedAt,  bool? isWishlisted,  bool? isSameDayShipping,  bool? isRemoteAreaUnavailable,  bool? isJejuUnavailable,  bool? isTaxable,  bool? isRecommended,  bool? isNew,  bool? isEvent,  bool? isVariableWeight,  bool? isHaccpCertified,  List<String>? directDeliveryRegions,  bool? isWeekendShipping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.id,_that.productCode,_that.sellerProfileId,_that.sellerCompanyName,_that.parentCategoryId,_that.categoryId,_that.status,_that.name,_that.description,_that.tags,_that.reviewCount,_that.viewCount,_that.shippingLeadTime,_that.shippingCutoffTime,_that.shippingFee,_that.remoteAreaShippingFee,_that.jejuShippingFee,_that.freeShippingThreshold,_that.options,_that.storageMethod,_that.deliveryMethods,_that.deliveryDays,_that.thumbnailImageUrl,_that.foodLabelImageUrl,_that.galleryImageUrls,_that.descriptionImageUrls,_that.shippingNotice,_that.distributionNotice,_that.handlingPrecaution,_that.claimGuideItems,_that.sampleProvisionType,_that.samplePrice,_that.sampleShippingFee,_that.saleStartAt,_that.saleEndAt,_that.createdAt,_that.updatedAt,_that.isWishlisted,_that.isSameDayShipping,_that.isRemoteAreaUnavailable,_that.isJejuUnavailable,_that.isTaxable,_that.isRecommended,_that.isNew,_that.isEvent,_that.isVariableWeight,_that.isHaccpCertified,_that.directDeliveryRegions,_that.isWeekendShipping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? productCode,  int? sellerProfileId,  String? sellerCompanyName,  int? parentCategoryId,  int? categoryId,  String? status,  String? name,  String? description,  List<String>? tags,  int? reviewCount,  int? viewCount,  int? shippingLeadTime,  String? shippingCutoffTime,  int? shippingFee,  int? remoteAreaShippingFee,  int? jejuShippingFee,  int? freeShippingThreshold, @JsonKey(fromJson: _sortOptions)  List<OptionDto>? options, @JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson)  StorageMethod? storageMethod, @JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson)  List<DeliveryMethod>? deliveryMethods,  int? deliveryDays,  String? thumbnailImageUrl,  String? foodLabelImageUrl,  List<String>? galleryImageUrls,  List<String>? descriptionImageUrls,  String? shippingNotice,  String? distributionNotice,  String? handlingPrecaution,  List<String>? claimGuideItems,  String? sampleProvisionType,  int? samplePrice,  int? sampleShippingFee, @NullableLocalDateTimeConverter()  DateTime? saleStartAt, @NullableLocalDateTimeConverter()  DateTime? saleEndAt, @NullableLocalDateTimeConverter()  DateTime? createdAt, @NullableLocalDateTimeConverter()  DateTime? updatedAt,  bool? isWishlisted,  bool? isSameDayShipping,  bool? isRemoteAreaUnavailable,  bool? isJejuUnavailable,  bool? isTaxable,  bool? isRecommended,  bool? isNew,  bool? isEvent,  bool? isVariableWeight,  bool? isHaccpCertified,  List<String>? directDeliveryRegions,  bool? isWeekendShipping)  $default,) {final _that = this;
switch (_that) {
case _ProductDto():
return $default(_that.id,_that.productCode,_that.sellerProfileId,_that.sellerCompanyName,_that.parentCategoryId,_that.categoryId,_that.status,_that.name,_that.description,_that.tags,_that.reviewCount,_that.viewCount,_that.shippingLeadTime,_that.shippingCutoffTime,_that.shippingFee,_that.remoteAreaShippingFee,_that.jejuShippingFee,_that.freeShippingThreshold,_that.options,_that.storageMethod,_that.deliveryMethods,_that.deliveryDays,_that.thumbnailImageUrl,_that.foodLabelImageUrl,_that.galleryImageUrls,_that.descriptionImageUrls,_that.shippingNotice,_that.distributionNotice,_that.handlingPrecaution,_that.claimGuideItems,_that.sampleProvisionType,_that.samplePrice,_that.sampleShippingFee,_that.saleStartAt,_that.saleEndAt,_that.createdAt,_that.updatedAt,_that.isWishlisted,_that.isSameDayShipping,_that.isRemoteAreaUnavailable,_that.isJejuUnavailable,_that.isTaxable,_that.isRecommended,_that.isNew,_that.isEvent,_that.isVariableWeight,_that.isHaccpCertified,_that.directDeliveryRegions,_that.isWeekendShipping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? productCode,  int? sellerProfileId,  String? sellerCompanyName,  int? parentCategoryId,  int? categoryId,  String? status,  String? name,  String? description,  List<String>? tags,  int? reviewCount,  int? viewCount,  int? shippingLeadTime,  String? shippingCutoffTime,  int? shippingFee,  int? remoteAreaShippingFee,  int? jejuShippingFee,  int? freeShippingThreshold, @JsonKey(fromJson: _sortOptions)  List<OptionDto>? options, @JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson)  StorageMethod? storageMethod, @JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson)  List<DeliveryMethod>? deliveryMethods,  int? deliveryDays,  String? thumbnailImageUrl,  String? foodLabelImageUrl,  List<String>? galleryImageUrls,  List<String>? descriptionImageUrls,  String? shippingNotice,  String? distributionNotice,  String? handlingPrecaution,  List<String>? claimGuideItems,  String? sampleProvisionType,  int? samplePrice,  int? sampleShippingFee, @NullableLocalDateTimeConverter()  DateTime? saleStartAt, @NullableLocalDateTimeConverter()  DateTime? saleEndAt, @NullableLocalDateTimeConverter()  DateTime? createdAt, @NullableLocalDateTimeConverter()  DateTime? updatedAt,  bool? isWishlisted,  bool? isSameDayShipping,  bool? isRemoteAreaUnavailable,  bool? isJejuUnavailable,  bool? isTaxable,  bool? isRecommended,  bool? isNew,  bool? isEvent,  bool? isVariableWeight,  bool? isHaccpCertified,  List<String>? directDeliveryRegions,  bool? isWeekendShipping)?  $default,) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.id,_that.productCode,_that.sellerProfileId,_that.sellerCompanyName,_that.parentCategoryId,_that.categoryId,_that.status,_that.name,_that.description,_that.tags,_that.reviewCount,_that.viewCount,_that.shippingLeadTime,_that.shippingCutoffTime,_that.shippingFee,_that.remoteAreaShippingFee,_that.jejuShippingFee,_that.freeShippingThreshold,_that.options,_that.storageMethod,_that.deliveryMethods,_that.deliveryDays,_that.thumbnailImageUrl,_that.foodLabelImageUrl,_that.galleryImageUrls,_that.descriptionImageUrls,_that.shippingNotice,_that.distributionNotice,_that.handlingPrecaution,_that.claimGuideItems,_that.sampleProvisionType,_that.samplePrice,_that.sampleShippingFee,_that.saleStartAt,_that.saleEndAt,_that.createdAt,_that.updatedAt,_that.isWishlisted,_that.isSameDayShipping,_that.isRemoteAreaUnavailable,_that.isJejuUnavailable,_that.isTaxable,_that.isRecommended,_that.isNew,_that.isEvent,_that.isVariableWeight,_that.isHaccpCertified,_that.directDeliveryRegions,_that.isWeekendShipping);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDto implements ProductDto {
  const _ProductDto({this.id, this.productCode, this.sellerProfileId, this.sellerCompanyName, this.parentCategoryId, this.categoryId, this.status, this.name, this.description, final  List<String>? tags, this.reviewCount, this.viewCount, this.shippingLeadTime, this.shippingCutoffTime, this.shippingFee, this.remoteAreaShippingFee, this.jejuShippingFee, this.freeShippingThreshold, @JsonKey(fromJson: _sortOptions) final  List<OptionDto>? options, @JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson) this.storageMethod, @JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson) final  List<DeliveryMethod>? deliveryMethods, this.deliveryDays, this.thumbnailImageUrl, this.foodLabelImageUrl, final  List<String>? galleryImageUrls, final  List<String>? descriptionImageUrls, this.shippingNotice, this.distributionNotice, this.handlingPrecaution, final  List<String>? claimGuideItems, this.sampleProvisionType, this.samplePrice, this.sampleShippingFee, @NullableLocalDateTimeConverter() this.saleStartAt, @NullableLocalDateTimeConverter() this.saleEndAt, @NullableLocalDateTimeConverter() this.createdAt, @NullableLocalDateTimeConverter() this.updatedAt, this.isWishlisted, this.isSameDayShipping, this.isRemoteAreaUnavailable, this.isJejuUnavailable, this.isTaxable, this.isRecommended, this.isNew, this.isEvent, this.isVariableWeight, this.isHaccpCertified, final  List<String>? directDeliveryRegions, this.isWeekendShipping}): _tags = tags,_options = options,_deliveryMethods = deliveryMethods,_galleryImageUrls = galleryImageUrls,_descriptionImageUrls = descriptionImageUrls,_claimGuideItems = claimGuideItems,_directDeliveryRegions = directDeliveryRegions;
  factory _ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

@override final  int? id;
@override final  String? productCode;
@override final  int? sellerProfileId;
@override final  String? sellerCompanyName;
@override final  int? parentCategoryId;
@override final  int? categoryId;
@override final  String? status;
@override final  String? name;
@override final  String? description;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? reviewCount;
@override final  int? viewCount;
@override final  int? shippingLeadTime;
@override final  String? shippingCutoffTime;
@override final  int? shippingFee;
@override final  int? remoteAreaShippingFee;
@override final  int? jejuShippingFee;
@override final  int? freeShippingThreshold;
 final  List<OptionDto>? _options;
@override@JsonKey(fromJson: _sortOptions) List<OptionDto>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson) final  StorageMethod? storageMethod;
 final  List<DeliveryMethod>? _deliveryMethods;
@override@JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson) List<DeliveryMethod>? get deliveryMethods {
  final value = _deliveryMethods;
  if (value == null) return null;
  if (_deliveryMethods is EqualUnmodifiableListView) return _deliveryMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? deliveryDays;
@override final  String? thumbnailImageUrl;
@override final  String? foodLabelImageUrl;
 final  List<String>? _galleryImageUrls;
@override List<String>? get galleryImageUrls {
  final value = _galleryImageUrls;
  if (value == null) return null;
  if (_galleryImageUrls is EqualUnmodifiableListView) return _galleryImageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _descriptionImageUrls;
@override List<String>? get descriptionImageUrls {
  final value = _descriptionImageUrls;
  if (value == null) return null;
  if (_descriptionImageUrls is EqualUnmodifiableListView) return _descriptionImageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? shippingNotice;
@override final  String? distributionNotice;
@override final  String? handlingPrecaution;
 final  List<String>? _claimGuideItems;
@override List<String>? get claimGuideItems {
  final value = _claimGuideItems;
  if (value == null) return null;
  if (_claimGuideItems is EqualUnmodifiableListView) return _claimGuideItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? sampleProvisionType;
@override final  int? samplePrice;
@override final  int? sampleShippingFee;
@override@NullableLocalDateTimeConverter() final  DateTime? saleStartAt;
@override@NullableLocalDateTimeConverter() final  DateTime? saleEndAt;
@override@NullableLocalDateTimeConverter() final  DateTime? createdAt;
@override@NullableLocalDateTimeConverter() final  DateTime? updatedAt;
@override final  bool? isWishlisted;
@override final  bool? isSameDayShipping;
@override final  bool? isRemoteAreaUnavailable;
@override final  bool? isJejuUnavailable;
@override final  bool? isTaxable;
@override final  bool? isRecommended;
@override final  bool? isNew;
@override final  bool? isEvent;
@override final  bool? isVariableWeight;
@override final  bool? isHaccpCertified;
 final  List<String>? _directDeliveryRegions;
@override List<String>? get directDeliveryRegions {
  final value = _directDeliveryRegions;
  if (value == null) return null;
  if (_directDeliveryRegions is EqualUnmodifiableListView) return _directDeliveryRegions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isWeekendShipping;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDtoCopyWith<_ProductDto> get copyWith => __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.sellerProfileId, sellerProfileId) || other.sellerProfileId == sellerProfileId)&&(identical(other.sellerCompanyName, sellerCompanyName) || other.sellerCompanyName == sellerCompanyName)&&(identical(other.parentCategoryId, parentCategoryId) || other.parentCategoryId == parentCategoryId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.shippingLeadTime, shippingLeadTime) || other.shippingLeadTime == shippingLeadTime)&&(identical(other.shippingCutoffTime, shippingCutoffTime) || other.shippingCutoffTime == shippingCutoffTime)&&(identical(other.shippingFee, shippingFee) || other.shippingFee == shippingFee)&&(identical(other.remoteAreaShippingFee, remoteAreaShippingFee) || other.remoteAreaShippingFee == remoteAreaShippingFee)&&(identical(other.jejuShippingFee, jejuShippingFee) || other.jejuShippingFee == jejuShippingFee)&&(identical(other.freeShippingThreshold, freeShippingThreshold) || other.freeShippingThreshold == freeShippingThreshold)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.storageMethod, storageMethod) || other.storageMethod == storageMethod)&&const DeepCollectionEquality().equals(other._deliveryMethods, _deliveryMethods)&&(identical(other.deliveryDays, deliveryDays) || other.deliveryDays == deliveryDays)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&(identical(other.foodLabelImageUrl, foodLabelImageUrl) || other.foodLabelImageUrl == foodLabelImageUrl)&&const DeepCollectionEquality().equals(other._galleryImageUrls, _galleryImageUrls)&&const DeepCollectionEquality().equals(other._descriptionImageUrls, _descriptionImageUrls)&&(identical(other.shippingNotice, shippingNotice) || other.shippingNotice == shippingNotice)&&(identical(other.distributionNotice, distributionNotice) || other.distributionNotice == distributionNotice)&&(identical(other.handlingPrecaution, handlingPrecaution) || other.handlingPrecaution == handlingPrecaution)&&const DeepCollectionEquality().equals(other._claimGuideItems, _claimGuideItems)&&(identical(other.sampleProvisionType, sampleProvisionType) || other.sampleProvisionType == sampleProvisionType)&&(identical(other.samplePrice, samplePrice) || other.samplePrice == samplePrice)&&(identical(other.sampleShippingFee, sampleShippingFee) || other.sampleShippingFee == sampleShippingFee)&&(identical(other.saleStartAt, saleStartAt) || other.saleStartAt == saleStartAt)&&(identical(other.saleEndAt, saleEndAt) || other.saleEndAt == saleEndAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isWishlisted, isWishlisted) || other.isWishlisted == isWishlisted)&&(identical(other.isSameDayShipping, isSameDayShipping) || other.isSameDayShipping == isSameDayShipping)&&(identical(other.isRemoteAreaUnavailable, isRemoteAreaUnavailable) || other.isRemoteAreaUnavailable == isRemoteAreaUnavailable)&&(identical(other.isJejuUnavailable, isJejuUnavailable) || other.isJejuUnavailable == isJejuUnavailable)&&(identical(other.isTaxable, isTaxable) || other.isTaxable == isTaxable)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isEvent, isEvent) || other.isEvent == isEvent)&&(identical(other.isVariableWeight, isVariableWeight) || other.isVariableWeight == isVariableWeight)&&(identical(other.isHaccpCertified, isHaccpCertified) || other.isHaccpCertified == isHaccpCertified)&&const DeepCollectionEquality().equals(other._directDeliveryRegions, _directDeliveryRegions)&&(identical(other.isWeekendShipping, isWeekendShipping) || other.isWeekendShipping == isWeekendShipping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,productCode,sellerProfileId,sellerCompanyName,parentCategoryId,categoryId,status,name,description,const DeepCollectionEquality().hash(_tags),reviewCount,viewCount,shippingLeadTime,shippingCutoffTime,shippingFee,remoteAreaShippingFee,jejuShippingFee,freeShippingThreshold,const DeepCollectionEquality().hash(_options),storageMethod,const DeepCollectionEquality().hash(_deliveryMethods),deliveryDays,thumbnailImageUrl,foodLabelImageUrl,const DeepCollectionEquality().hash(_galleryImageUrls),const DeepCollectionEquality().hash(_descriptionImageUrls),shippingNotice,distributionNotice,handlingPrecaution,const DeepCollectionEquality().hash(_claimGuideItems),sampleProvisionType,samplePrice,sampleShippingFee,saleStartAt,saleEndAt,createdAt,updatedAt,isWishlisted,isSameDayShipping,isRemoteAreaUnavailable,isJejuUnavailable,isTaxable,isRecommended,isNew,isEvent,isVariableWeight,isHaccpCertified,const DeepCollectionEquality().hash(_directDeliveryRegions),isWeekendShipping]);

@override
String toString() {
  return 'ProductDto(id: $id, productCode: $productCode, sellerProfileId: $sellerProfileId, sellerCompanyName: $sellerCompanyName, parentCategoryId: $parentCategoryId, categoryId: $categoryId, status: $status, name: $name, description: $description, tags: $tags, reviewCount: $reviewCount, viewCount: $viewCount, shippingLeadTime: $shippingLeadTime, shippingCutoffTime: $shippingCutoffTime, shippingFee: $shippingFee, remoteAreaShippingFee: $remoteAreaShippingFee, jejuShippingFee: $jejuShippingFee, freeShippingThreshold: $freeShippingThreshold, options: $options, storageMethod: $storageMethod, deliveryMethods: $deliveryMethods, deliveryDays: $deliveryDays, thumbnailImageUrl: $thumbnailImageUrl, foodLabelImageUrl: $foodLabelImageUrl, galleryImageUrls: $galleryImageUrls, descriptionImageUrls: $descriptionImageUrls, shippingNotice: $shippingNotice, distributionNotice: $distributionNotice, handlingPrecaution: $handlingPrecaution, claimGuideItems: $claimGuideItems, sampleProvisionType: $sampleProvisionType, samplePrice: $samplePrice, sampleShippingFee: $sampleShippingFee, saleStartAt: $saleStartAt, saleEndAt: $saleEndAt, createdAt: $createdAt, updatedAt: $updatedAt, isWishlisted: $isWishlisted, isSameDayShipping: $isSameDayShipping, isRemoteAreaUnavailable: $isRemoteAreaUnavailable, isJejuUnavailable: $isJejuUnavailable, isTaxable: $isTaxable, isRecommended: $isRecommended, isNew: $isNew, isEvent: $isEvent, isVariableWeight: $isVariableWeight, isHaccpCertified: $isHaccpCertified, directDeliveryRegions: $directDeliveryRegions, isWeekendShipping: $isWeekendShipping)';
}


}

/// @nodoc
abstract mixin class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(_ProductDto value, $Res Function(_ProductDto) _then) = __$ProductDtoCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? productCode, int? sellerProfileId, String? sellerCompanyName, int? parentCategoryId, int? categoryId, String? status, String? name, String? description, List<String>? tags, int? reviewCount, int? viewCount, int? shippingLeadTime, String? shippingCutoffTime, int? shippingFee, int? remoteAreaShippingFee, int? jejuShippingFee, int? freeShippingThreshold,@JsonKey(fromJson: _sortOptions) List<OptionDto>? options,@JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson) StorageMethod? storageMethod,@JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson) List<DeliveryMethod>? deliveryMethods, int? deliveryDays, String? thumbnailImageUrl, String? foodLabelImageUrl, List<String>? galleryImageUrls, List<String>? descriptionImageUrls, String? shippingNotice, String? distributionNotice, String? handlingPrecaution, List<String>? claimGuideItems, String? sampleProvisionType, int? samplePrice, int? sampleShippingFee,@NullableLocalDateTimeConverter() DateTime? saleStartAt,@NullableLocalDateTimeConverter() DateTime? saleEndAt,@NullableLocalDateTimeConverter() DateTime? createdAt,@NullableLocalDateTimeConverter() DateTime? updatedAt, bool? isWishlisted, bool? isSameDayShipping, bool? isRemoteAreaUnavailable, bool? isJejuUnavailable, bool? isTaxable, bool? isRecommended, bool? isNew, bool? isEvent, bool? isVariableWeight, bool? isHaccpCertified, List<String>? directDeliveryRegions, bool? isWeekendShipping
});




}
/// @nodoc
class __$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(this._self, this._then);

  final _ProductDto _self;
  final $Res Function(_ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productCode = freezed,Object? sellerProfileId = freezed,Object? sellerCompanyName = freezed,Object? parentCategoryId = freezed,Object? categoryId = freezed,Object? status = freezed,Object? name = freezed,Object? description = freezed,Object? tags = freezed,Object? reviewCount = freezed,Object? viewCount = freezed,Object? shippingLeadTime = freezed,Object? shippingCutoffTime = freezed,Object? shippingFee = freezed,Object? remoteAreaShippingFee = freezed,Object? jejuShippingFee = freezed,Object? freeShippingThreshold = freezed,Object? options = freezed,Object? storageMethod = freezed,Object? deliveryMethods = freezed,Object? deliveryDays = freezed,Object? thumbnailImageUrl = freezed,Object? foodLabelImageUrl = freezed,Object? galleryImageUrls = freezed,Object? descriptionImageUrls = freezed,Object? shippingNotice = freezed,Object? distributionNotice = freezed,Object? handlingPrecaution = freezed,Object? claimGuideItems = freezed,Object? sampleProvisionType = freezed,Object? samplePrice = freezed,Object? sampleShippingFee = freezed,Object? saleStartAt = freezed,Object? saleEndAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? isWishlisted = freezed,Object? isSameDayShipping = freezed,Object? isRemoteAreaUnavailable = freezed,Object? isJejuUnavailable = freezed,Object? isTaxable = freezed,Object? isRecommended = freezed,Object? isNew = freezed,Object? isEvent = freezed,Object? isVariableWeight = freezed,Object? isHaccpCertified = freezed,Object? directDeliveryRegions = freezed,Object? isWeekendShipping = freezed,}) {
  return _then(_ProductDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String?,sellerProfileId: freezed == sellerProfileId ? _self.sellerProfileId : sellerProfileId // ignore: cast_nullable_to_non_nullable
as int?,sellerCompanyName: freezed == sellerCompanyName ? _self.sellerCompanyName : sellerCompanyName // ignore: cast_nullable_to_non_nullable
as String?,parentCategoryId: freezed == parentCategoryId ? _self.parentCategoryId : parentCategoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,viewCount: freezed == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int?,shippingLeadTime: freezed == shippingLeadTime ? _self.shippingLeadTime : shippingLeadTime // ignore: cast_nullable_to_non_nullable
as int?,shippingCutoffTime: freezed == shippingCutoffTime ? _self.shippingCutoffTime : shippingCutoffTime // ignore: cast_nullable_to_non_nullable
as String?,shippingFee: freezed == shippingFee ? _self.shippingFee : shippingFee // ignore: cast_nullable_to_non_nullable
as int?,remoteAreaShippingFee: freezed == remoteAreaShippingFee ? _self.remoteAreaShippingFee : remoteAreaShippingFee // ignore: cast_nullable_to_non_nullable
as int?,jejuShippingFee: freezed == jejuShippingFee ? _self.jejuShippingFee : jejuShippingFee // ignore: cast_nullable_to_non_nullable
as int?,freeShippingThreshold: freezed == freeShippingThreshold ? _self.freeShippingThreshold : freeShippingThreshold // ignore: cast_nullable_to_non_nullable
as int?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,storageMethod: freezed == storageMethod ? _self.storageMethod : storageMethod // ignore: cast_nullable_to_non_nullable
as StorageMethod?,deliveryMethods: freezed == deliveryMethods ? _self._deliveryMethods : deliveryMethods // ignore: cast_nullable_to_non_nullable
as List<DeliveryMethod>?,deliveryDays: freezed == deliveryDays ? _self.deliveryDays : deliveryDays // ignore: cast_nullable_to_non_nullable
as int?,thumbnailImageUrl: freezed == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String?,foodLabelImageUrl: freezed == foodLabelImageUrl ? _self.foodLabelImageUrl : foodLabelImageUrl // ignore: cast_nullable_to_non_nullable
as String?,galleryImageUrls: freezed == galleryImageUrls ? _self._galleryImageUrls : galleryImageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,descriptionImageUrls: freezed == descriptionImageUrls ? _self._descriptionImageUrls : descriptionImageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,shippingNotice: freezed == shippingNotice ? _self.shippingNotice : shippingNotice // ignore: cast_nullable_to_non_nullable
as String?,distributionNotice: freezed == distributionNotice ? _self.distributionNotice : distributionNotice // ignore: cast_nullable_to_non_nullable
as String?,handlingPrecaution: freezed == handlingPrecaution ? _self.handlingPrecaution : handlingPrecaution // ignore: cast_nullable_to_non_nullable
as String?,claimGuideItems: freezed == claimGuideItems ? _self._claimGuideItems : claimGuideItems // ignore: cast_nullable_to_non_nullable
as List<String>?,sampleProvisionType: freezed == sampleProvisionType ? _self.sampleProvisionType : sampleProvisionType // ignore: cast_nullable_to_non_nullable
as String?,samplePrice: freezed == samplePrice ? _self.samplePrice : samplePrice // ignore: cast_nullable_to_non_nullable
as int?,sampleShippingFee: freezed == sampleShippingFee ? _self.sampleShippingFee : sampleShippingFee // ignore: cast_nullable_to_non_nullable
as int?,saleStartAt: freezed == saleStartAt ? _self.saleStartAt : saleStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,saleEndAt: freezed == saleEndAt ? _self.saleEndAt : saleEndAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isWishlisted: freezed == isWishlisted ? _self.isWishlisted : isWishlisted // ignore: cast_nullable_to_non_nullable
as bool?,isSameDayShipping: freezed == isSameDayShipping ? _self.isSameDayShipping : isSameDayShipping // ignore: cast_nullable_to_non_nullable
as bool?,isRemoteAreaUnavailable: freezed == isRemoteAreaUnavailable ? _self.isRemoteAreaUnavailable : isRemoteAreaUnavailable // ignore: cast_nullable_to_non_nullable
as bool?,isJejuUnavailable: freezed == isJejuUnavailable ? _self.isJejuUnavailable : isJejuUnavailable // ignore: cast_nullable_to_non_nullable
as bool?,isTaxable: freezed == isTaxable ? _self.isTaxable : isTaxable // ignore: cast_nullable_to_non_nullable
as bool?,isRecommended: freezed == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool?,isNew: freezed == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool?,isEvent: freezed == isEvent ? _self.isEvent : isEvent // ignore: cast_nullable_to_non_nullable
as bool?,isVariableWeight: freezed == isVariableWeight ? _self.isVariableWeight : isVariableWeight // ignore: cast_nullable_to_non_nullable
as bool?,isHaccpCertified: freezed == isHaccpCertified ? _self.isHaccpCertified : isHaccpCertified // ignore: cast_nullable_to_non_nullable
as bool?,directDeliveryRegions: freezed == directDeliveryRegions ? _self._directDeliveryRegions : directDeliveryRegions // ignore: cast_nullable_to_non_nullable
as List<String>?,isWeekendShipping: freezed == isWeekendShipping ? _self.isWeekendShipping : isWeekendShipping // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$OptionDto {

 int? get id; String? get optionName; int? get capacity; String? get capacityUnit; int? get quantityValue; String? get quantityUnit; int? get price; int? get discountRate; int? get discountAmount; int? get sellingPrice; int? get pricePer100; int? get savingsVsCheapest; int? get stockQuantity; int? get sortOrder; bool? get isFreeShipping; bool? get isAvailable;
/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionDtoCopyWith<OptionDto> get copyWith => _$OptionDtoCopyWithImpl<OptionDto>(this as OptionDto, _$identity);

  /// Serializes this OptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.capacityUnit, capacityUnit) || other.capacityUnit == capacityUnit)&&(identical(other.quantityValue, quantityValue) || other.quantityValue == quantityValue)&&(identical(other.quantityUnit, quantityUnit) || other.quantityUnit == quantityUnit)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountRate, discountRate) || other.discountRate == discountRate)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.sellingPrice, sellingPrice) || other.sellingPrice == sellingPrice)&&(identical(other.pricePer100, pricePer100) || other.pricePer100 == pricePer100)&&(identical(other.savingsVsCheapest, savingsVsCheapest) || other.savingsVsCheapest == savingsVsCheapest)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isFreeShipping, isFreeShipping) || other.isFreeShipping == isFreeShipping)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,optionName,capacity,capacityUnit,quantityValue,quantityUnit,price,discountRate,discountAmount,sellingPrice,pricePer100,savingsVsCheapest,stockQuantity,sortOrder,isFreeShipping,isAvailable);

@override
String toString() {
  return 'OptionDto(id: $id, optionName: $optionName, capacity: $capacity, capacityUnit: $capacityUnit, quantityValue: $quantityValue, quantityUnit: $quantityUnit, price: $price, discountRate: $discountRate, discountAmount: $discountAmount, sellingPrice: $sellingPrice, pricePer100: $pricePer100, savingsVsCheapest: $savingsVsCheapest, stockQuantity: $stockQuantity, sortOrder: $sortOrder, isFreeShipping: $isFreeShipping, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class $OptionDtoCopyWith<$Res>  {
  factory $OptionDtoCopyWith(OptionDto value, $Res Function(OptionDto) _then) = _$OptionDtoCopyWithImpl;
@useResult
$Res call({
 int? id, String? optionName, int? capacity, String? capacityUnit, int? quantityValue, String? quantityUnit, int? price, int? discountRate, int? discountAmount, int? sellingPrice, int? pricePer100, int? savingsVsCheapest, int? stockQuantity, int? sortOrder, bool? isFreeShipping, bool? isAvailable
});




}
/// @nodoc
class _$OptionDtoCopyWithImpl<$Res>
    implements $OptionDtoCopyWith<$Res> {
  _$OptionDtoCopyWithImpl(this._self, this._then);

  final OptionDto _self;
  final $Res Function(OptionDto) _then;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? optionName = freezed,Object? capacity = freezed,Object? capacityUnit = freezed,Object? quantityValue = freezed,Object? quantityUnit = freezed,Object? price = freezed,Object? discountRate = freezed,Object? discountAmount = freezed,Object? sellingPrice = freezed,Object? pricePer100 = freezed,Object? savingsVsCheapest = freezed,Object? stockQuantity = freezed,Object? sortOrder = freezed,Object? isFreeShipping = freezed,Object? isAvailable = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,optionName: freezed == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,capacityUnit: freezed == capacityUnit ? _self.capacityUnit : capacityUnit // ignore: cast_nullable_to_non_nullable
as String?,quantityValue: freezed == quantityValue ? _self.quantityValue : quantityValue // ignore: cast_nullable_to_non_nullable
as int?,quantityUnit: freezed == quantityUnit ? _self.quantityUnit : quantityUnit // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,discountRate: freezed == discountRate ? _self.discountRate : discountRate // ignore: cast_nullable_to_non_nullable
as int?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,sellingPrice: freezed == sellingPrice ? _self.sellingPrice : sellingPrice // ignore: cast_nullable_to_non_nullable
as int?,pricePer100: freezed == pricePer100 ? _self.pricePer100 : pricePer100 // ignore: cast_nullable_to_non_nullable
as int?,savingsVsCheapest: freezed == savingsVsCheapest ? _self.savingsVsCheapest : savingsVsCheapest // ignore: cast_nullable_to_non_nullable
as int?,stockQuantity: freezed == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isFreeShipping: freezed == isFreeShipping ? _self.isFreeShipping : isFreeShipping // ignore: cast_nullable_to_non_nullable
as bool?,isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionDto].
extension OptionDtoPatterns on OptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionDto value)  $default,){
final _that = this;
switch (_that) {
case _OptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? optionName,  int? capacity,  String? capacityUnit,  int? quantityValue,  String? quantityUnit,  int? price,  int? discountRate,  int? discountAmount,  int? sellingPrice,  int? pricePer100,  int? savingsVsCheapest,  int? stockQuantity,  int? sortOrder,  bool? isFreeShipping,  bool? isAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
return $default(_that.id,_that.optionName,_that.capacity,_that.capacityUnit,_that.quantityValue,_that.quantityUnit,_that.price,_that.discountRate,_that.discountAmount,_that.sellingPrice,_that.pricePer100,_that.savingsVsCheapest,_that.stockQuantity,_that.sortOrder,_that.isFreeShipping,_that.isAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? optionName,  int? capacity,  String? capacityUnit,  int? quantityValue,  String? quantityUnit,  int? price,  int? discountRate,  int? discountAmount,  int? sellingPrice,  int? pricePer100,  int? savingsVsCheapest,  int? stockQuantity,  int? sortOrder,  bool? isFreeShipping,  bool? isAvailable)  $default,) {final _that = this;
switch (_that) {
case _OptionDto():
return $default(_that.id,_that.optionName,_that.capacity,_that.capacityUnit,_that.quantityValue,_that.quantityUnit,_that.price,_that.discountRate,_that.discountAmount,_that.sellingPrice,_that.pricePer100,_that.savingsVsCheapest,_that.stockQuantity,_that.sortOrder,_that.isFreeShipping,_that.isAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? optionName,  int? capacity,  String? capacityUnit,  int? quantityValue,  String? quantityUnit,  int? price,  int? discountRate,  int? discountAmount,  int? sellingPrice,  int? pricePer100,  int? savingsVsCheapest,  int? stockQuantity,  int? sortOrder,  bool? isFreeShipping,  bool? isAvailable)?  $default,) {final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
return $default(_that.id,_that.optionName,_that.capacity,_that.capacityUnit,_that.quantityValue,_that.quantityUnit,_that.price,_that.discountRate,_that.discountAmount,_that.sellingPrice,_that.pricePer100,_that.savingsVsCheapest,_that.stockQuantity,_that.sortOrder,_that.isFreeShipping,_that.isAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionDto implements OptionDto {
  const _OptionDto({this.id, this.optionName, this.capacity, this.capacityUnit, this.quantityValue, this.quantityUnit, this.price, this.discountRate, this.discountAmount, this.sellingPrice, this.pricePer100, this.savingsVsCheapest, this.stockQuantity, this.sortOrder, this.isFreeShipping, this.isAvailable});
  factory _OptionDto.fromJson(Map<String, dynamic> json) => _$OptionDtoFromJson(json);

@override final  int? id;
@override final  String? optionName;
@override final  int? capacity;
@override final  String? capacityUnit;
@override final  int? quantityValue;
@override final  String? quantityUnit;
@override final  int? price;
@override final  int? discountRate;
@override final  int? discountAmount;
@override final  int? sellingPrice;
@override final  int? pricePer100;
@override final  int? savingsVsCheapest;
@override final  int? stockQuantity;
@override final  int? sortOrder;
@override final  bool? isFreeShipping;
@override final  bool? isAvailable;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionDtoCopyWith<_OptionDto> get copyWith => __$OptionDtoCopyWithImpl<_OptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.capacityUnit, capacityUnit) || other.capacityUnit == capacityUnit)&&(identical(other.quantityValue, quantityValue) || other.quantityValue == quantityValue)&&(identical(other.quantityUnit, quantityUnit) || other.quantityUnit == quantityUnit)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountRate, discountRate) || other.discountRate == discountRate)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.sellingPrice, sellingPrice) || other.sellingPrice == sellingPrice)&&(identical(other.pricePer100, pricePer100) || other.pricePer100 == pricePer100)&&(identical(other.savingsVsCheapest, savingsVsCheapest) || other.savingsVsCheapest == savingsVsCheapest)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isFreeShipping, isFreeShipping) || other.isFreeShipping == isFreeShipping)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,optionName,capacity,capacityUnit,quantityValue,quantityUnit,price,discountRate,discountAmount,sellingPrice,pricePer100,savingsVsCheapest,stockQuantity,sortOrder,isFreeShipping,isAvailable);

@override
String toString() {
  return 'OptionDto(id: $id, optionName: $optionName, capacity: $capacity, capacityUnit: $capacityUnit, quantityValue: $quantityValue, quantityUnit: $quantityUnit, price: $price, discountRate: $discountRate, discountAmount: $discountAmount, sellingPrice: $sellingPrice, pricePer100: $pricePer100, savingsVsCheapest: $savingsVsCheapest, stockQuantity: $stockQuantity, sortOrder: $sortOrder, isFreeShipping: $isFreeShipping, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$OptionDtoCopyWith<$Res> implements $OptionDtoCopyWith<$Res> {
  factory _$OptionDtoCopyWith(_OptionDto value, $Res Function(_OptionDto) _then) = __$OptionDtoCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? optionName, int? capacity, String? capacityUnit, int? quantityValue, String? quantityUnit, int? price, int? discountRate, int? discountAmount, int? sellingPrice, int? pricePer100, int? savingsVsCheapest, int? stockQuantity, int? sortOrder, bool? isFreeShipping, bool? isAvailable
});




}
/// @nodoc
class __$OptionDtoCopyWithImpl<$Res>
    implements _$OptionDtoCopyWith<$Res> {
  __$OptionDtoCopyWithImpl(this._self, this._then);

  final _OptionDto _self;
  final $Res Function(_OptionDto) _then;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? optionName = freezed,Object? capacity = freezed,Object? capacityUnit = freezed,Object? quantityValue = freezed,Object? quantityUnit = freezed,Object? price = freezed,Object? discountRate = freezed,Object? discountAmount = freezed,Object? sellingPrice = freezed,Object? pricePer100 = freezed,Object? savingsVsCheapest = freezed,Object? stockQuantity = freezed,Object? sortOrder = freezed,Object? isFreeShipping = freezed,Object? isAvailable = freezed,}) {
  return _then(_OptionDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,optionName: freezed == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,capacityUnit: freezed == capacityUnit ? _self.capacityUnit : capacityUnit // ignore: cast_nullable_to_non_nullable
as String?,quantityValue: freezed == quantityValue ? _self.quantityValue : quantityValue // ignore: cast_nullable_to_non_nullable
as int?,quantityUnit: freezed == quantityUnit ? _self.quantityUnit : quantityUnit // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,discountRate: freezed == discountRate ? _self.discountRate : discountRate // ignore: cast_nullable_to_non_nullable
as int?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,sellingPrice: freezed == sellingPrice ? _self.sellingPrice : sellingPrice // ignore: cast_nullable_to_non_nullable
as int?,pricePer100: freezed == pricePer100 ? _self.pricePer100 : pricePer100 // ignore: cast_nullable_to_non_nullable
as int?,savingsVsCheapest: freezed == savingsVsCheapest ? _self.savingsVsCheapest : savingsVsCheapest // ignore: cast_nullable_to_non_nullable
as int?,stockQuantity: freezed == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isFreeShipping: freezed == isFreeShipping ? _self.isFreeShipping : isFreeShipping // ignore: cast_nullable_to_non_nullable
as bool?,isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
