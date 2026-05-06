// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_recommand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductRecommandDto _$ProductRecommandDtoFromJson(Map<String, dynamic> json) =>
    _ProductRecommandDto(
      content: (json['content'] as List<dynamic>)
          .map((e) => RecommandDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: (json['number'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$ProductRecommandDtoToJson(
  _ProductRecommandDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'number': instance.number,
  'size': instance.size,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
};

_RecommandDto _$RecommandDtoFromJson(Map<String, dynamic> json) =>
    _RecommandDto(
      id: (json['id'] as num).toInt(),
      productCode: json['productCode'] as String,
      sellerCompanyName: json['sellerCompanyName'] as String,
      categoryFullPath: json['categoryFullPath'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      thumbnailImageUrl: json['thumbnailImageUrl'] as String,
      lowestSellingPrice: (json['lowestSellingPrice'] as num?)?.toInt(),
      lowestPriceStockQuantity: (json['lowestPriceStockQuantity'] as num)
          .toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: const LocalDateTimeConverter().fromJson(
        json['createdAt'] as String,
      ),
      updatedAt: const LocalDateTimeConverter().fromJson(
        json['updatedAt'] as String,
      ),
    );

Map<String, dynamic> _$RecommandDtoToJson(_RecommandDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productCode': instance.productCode,
      'sellerCompanyName': instance.sellerCompanyName,
      'categoryFullPath': instance.categoryFullPath,
      'name': instance.name,
      'status': instance.status,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'lowestSellingPrice': instance.lowestSellingPrice,
      'lowestPriceStockQuantity': instance.lowestPriceStockQuantity,
      'tags': instance.tags,
      'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const LocalDateTimeConverter().toJson(instance.updatedAt),
    };
