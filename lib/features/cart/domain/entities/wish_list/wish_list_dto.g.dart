// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WishListDto _$WishListDtoFromJson(Map<String, dynamic> json) => _WishListDto(
  content: (json['content'] as List<dynamic>)
      .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  number: (json['number'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  totalElements: (json['totalElements'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$WishListDtoToJson(_WishListDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'number': instance.number,
      'size': instance.size,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
    };

_ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => _ProductDto(
  id: (json['id'] as num).toInt(),
  productCode: json['productCode'] as String,
  sellerCompanyName: json['sellerCompanyName'] as String,
  categoryFullPath: json['categoryFullPath'] as String,
  name: json['name'] as String,
  status: json['status'] as String,
  thumbnailImageUrl: json['thumbnailImageUrl'] as String,
  lowestPrice: (json['lowestPrice'] as num?)?.toInt(),
  lowestDiscountAmount: (json['lowestDiscountAmount'] as num?)?.toInt(),
  lowestDiscountRate: (json['lowestDiscountRate'] as num?)?.toInt(),
  lowestSellingPrice: (json['lowestSellingPrice'] as num).toInt(),
  lowestPriceStockQuantity: (json['lowestPriceStockQuantity'] as num).toInt(),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  isHaccpCertified: json['isHaccpCertified'] as bool? ?? false,
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
  updatedAt: const LocalDateTimeConverter().fromJson(
    json['updatedAt'] as String,
  ),
);

Map<String, dynamic> _$ProductDtoToJson(_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productCode': instance.productCode,
      'sellerCompanyName': instance.sellerCompanyName,
      'categoryFullPath': instance.categoryFullPath,
      'name': instance.name,
      'status': instance.status,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'lowestPrice': instance.lowestPrice,
      'lowestDiscountAmount': instance.lowestDiscountAmount,
      'lowestDiscountRate': instance.lowestDiscountRate,
      'lowestSellingPrice': instance.lowestSellingPrice,
      'lowestPriceStockQuantity': instance.lowestPriceStockQuantity,
      'tags': instance.tags,
      'isHaccpCertified': instance.isHaccpCertified,
      'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const LocalDateTimeConverter().toJson(instance.updatedAt),
    };
