// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => _ProductDto(
  id: (json['id'] as num?)?.toInt(),
  productCode: json['productCode'] as String?,
  sellerProfileId: (json['sellerProfileId'] as num?)?.toInt(),
  sellerCompanyName: json['sellerCompanyName'] as String?,
  parentCategoryId: (json['parentCategoryId'] as num?)?.toInt(),
  categoryId: (json['categoryId'] as num?)?.toInt(),
  status: json['status'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  reviewCount: (json['reviewCount'] as num?)?.toInt(),
  viewCount: (json['viewCount'] as num?)?.toInt(),
  shippingLeadTime: (json['shippingLeadTime'] as num?)?.toInt(),
  shippingCutoffTime: json['shippingCutoffTime'] as String?,
  shippingFee: (json['shippingFee'] as num?)?.toInt(),
  remoteAreaShippingFee: (json['remoteAreaShippingFee'] as num?)?.toInt(),
  jejuShippingFee: (json['jejuShippingFee'] as num?)?.toInt(),
  freeShippingThreshold: (json['freeShippingThreshold'] as num?)?.toInt(),
  options: _sortOptions(json['options'] as List?),
  storageMethod: _storageMethodFromJson(json['storageMethod'] as String?),
  deliveryMethods: _deliveryMethodsFromJson(json['deliveryMethods'] as List?),
  deliveryDays: (json['deliveryDays'] as num?)?.toInt(),
  thumbnailImageUrl: json['thumbnailImageUrl'] as String?,
  foodLabelImageUrl: json['foodLabelImageUrl'] as String?,
  galleryImageUrls: (json['galleryImageUrls'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  descriptionImageUrls: (json['descriptionImageUrls'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  shippingNotice: json['shippingNotice'] as String?,
  distributionNotice: json['distributionNotice'] as String?,
  handlingPrecaution: json['handlingPrecaution'] as String?,
  claimGuideItems: (json['claimGuideItems'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  sampleProvisionType: json['sampleProvisionType'] as String?,
  samplePrice: (json['samplePrice'] as num?)?.toInt(),
  sampleShippingFee: (json['sampleShippingFee'] as num?)?.toInt(),
  saleStartAt: const NullableLocalDateTimeConverter().fromJson(
    json['saleStartAt'] as String?,
  ),
  saleEndAt: const NullableLocalDateTimeConverter().fromJson(
    json['saleEndAt'] as String?,
  ),
  createdAt: const NullableLocalDateTimeConverter().fromJson(
    json['createdAt'] as String?,
  ),
  updatedAt: const NullableLocalDateTimeConverter().fromJson(
    json['updatedAt'] as String?,
  ),
  isWishlisted: json['isWishlisted'] as bool?,
  isSameDayShipping: json['isSameDayShipping'] as bool?,
  isRemoteAreaUnavailable: json['isRemoteAreaUnavailable'] as bool?,
  isJejuUnavailable: json['isJejuUnavailable'] as bool?,
  isTaxable: json['isTaxable'] as bool?,
  isRecommended: json['isRecommended'] as bool?,
  isNew: json['isNew'] as bool?,
  isEvent: json['isEvent'] as bool?,
  isVariableWeight: json['isVariableWeight'] as bool?,
  isHaccpCertified: json['isHaccpCertified'] as bool?,
  directDeliveryRegions: (json['directDeliveryRegions'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  isWeekendShipping: json['isWeekendShipping'] as bool?,
);

Map<String, dynamic> _$ProductDtoToJson(_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productCode': instance.productCode,
      'sellerProfileId': instance.sellerProfileId,
      'sellerCompanyName': instance.sellerCompanyName,
      'parentCategoryId': instance.parentCategoryId,
      'categoryId': instance.categoryId,
      'status': instance.status,
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
      'reviewCount': instance.reviewCount,
      'viewCount': instance.viewCount,
      'shippingLeadTime': instance.shippingLeadTime,
      'shippingCutoffTime': instance.shippingCutoffTime,
      'shippingFee': instance.shippingFee,
      'remoteAreaShippingFee': instance.remoteAreaShippingFee,
      'jejuShippingFee': instance.jejuShippingFee,
      'freeShippingThreshold': instance.freeShippingThreshold,
      'options': instance.options,
      'storageMethod': _storageMethodToJson(instance.storageMethod),
      'deliveryMethods': _deliveryMethodsToJson(instance.deliveryMethods),
      'deliveryDays': instance.deliveryDays,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'foodLabelImageUrl': instance.foodLabelImageUrl,
      'galleryImageUrls': instance.galleryImageUrls,
      'descriptionImageUrls': instance.descriptionImageUrls,
      'shippingNotice': instance.shippingNotice,
      'distributionNotice': instance.distributionNotice,
      'handlingPrecaution': instance.handlingPrecaution,
      'claimGuideItems': instance.claimGuideItems,
      'sampleProvisionType': instance.sampleProvisionType,
      'samplePrice': instance.samplePrice,
      'sampleShippingFee': instance.sampleShippingFee,
      'saleStartAt': const NullableLocalDateTimeConverter().toJson(
        instance.saleStartAt,
      ),
      'saleEndAt': const NullableLocalDateTimeConverter().toJson(
        instance.saleEndAt,
      ),
      'createdAt': const NullableLocalDateTimeConverter().toJson(
        instance.createdAt,
      ),
      'updatedAt': const NullableLocalDateTimeConverter().toJson(
        instance.updatedAt,
      ),
      'isWishlisted': instance.isWishlisted,
      'isSameDayShipping': instance.isSameDayShipping,
      'isRemoteAreaUnavailable': instance.isRemoteAreaUnavailable,
      'isJejuUnavailable': instance.isJejuUnavailable,
      'isTaxable': instance.isTaxable,
      'isRecommended': instance.isRecommended,
      'isNew': instance.isNew,
      'isEvent': instance.isEvent,
      'isVariableWeight': instance.isVariableWeight,
      'isHaccpCertified': instance.isHaccpCertified,
      'directDeliveryRegions': instance.directDeliveryRegions,
      'isWeekendShipping': instance.isWeekendShipping,
    };

_OptionDto _$OptionDtoFromJson(Map<String, dynamic> json) => _OptionDto(
  id: (json['id'] as num?)?.toInt(),
  optionName: json['optionName'] as String?,
  capacity: (json['capacity'] as num?)?.toInt(),
  capacityUnit: json['capacityUnit'] as String?,
  quantityValue: (json['quantityValue'] as num?)?.toInt(),
  quantityUnit: json['quantityUnit'] as String?,
  price: (json['price'] as num?)?.toInt(),
  discountRate: (json['discountRate'] as num?)?.toInt(),
  discountAmount: (json['discountAmount'] as num?)?.toInt(),
  sellingPrice: (json['sellingPrice'] as num?)?.toInt(),
  pricePer100: (json['pricePer100'] as num?)?.toInt(),
  savingsVsCheapest: (json['savingsVsCheapest'] as num?)?.toInt(),
  stockQuantity: (json['stockQuantity'] as num?)?.toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  isFreeShipping: json['isFreeShipping'] as bool?,
  isAvailable: json['isAvailable'] as bool?,
);

Map<String, dynamic> _$OptionDtoToJson(_OptionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'optionName': instance.optionName,
      'capacity': instance.capacity,
      'capacityUnit': instance.capacityUnit,
      'quantityValue': instance.quantityValue,
      'quantityUnit': instance.quantityUnit,
      'price': instance.price,
      'discountRate': instance.discountRate,
      'discountAmount': instance.discountAmount,
      'sellingPrice': instance.sellingPrice,
      'pricePer100': instance.pricePer100,
      'savingsVsCheapest': instance.savingsVsCheapest,
      'stockQuantity': instance.stockQuantity,
      'sortOrder': instance.sortOrder,
      'isFreeShipping': instance.isFreeShipping,
      'isAvailable': instance.isAvailable,
    };
