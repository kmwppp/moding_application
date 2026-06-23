import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

import '../enums/delivery_method.dart';
import '../enums/storage_method.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  const factory ProductDto({
    int? id,
    String? productCode,
    int? sellerProfileId,
    String? sellerCompanyName,
    int? parentCategoryId,
    int? categoryId,
    String? status,
    String? name,
    String? description,
    List<String>? tags,
    int? reviewCount,
    int? viewCount,
    int? shippingLeadTime,
    String? shippingCutoffTime,
    int? shippingFee,
    int? remoteAreaShippingFee,
    int? jejuShippingFee,
    int? freeShippingThreshold,
    @JsonKey(fromJson: _sortOptions) List<OptionDto>? options,
    @JsonKey(fromJson: _storageMethodFromJson, toJson: _storageMethodToJson)
    StorageMethod? storageMethod,
    @JsonKey(fromJson: _deliveryMethodsFromJson, toJson: _deliveryMethodsToJson)
    List<DeliveryMethod>? deliveryMethods,
    int? deliveryDays,
    String? thumbnailImageUrl,
    String? foodLabelImageUrl,
    List<String>? galleryImageUrls,
    List<String>? descriptionImageUrls,
    String? shippingNotice,
    String? distributionNotice,
    String? handlingPrecaution,
    List<String>? claimGuideItems,
    String? sampleProvisionType,
    int? samplePrice,
    int? sampleShippingFee,
    @NullableLocalDateTimeConverter() DateTime? saleStartAt,
    @NullableLocalDateTimeConverter() DateTime? saleEndAt,
    @NullableLocalDateTimeConverter() DateTime? createdAt,
    @NullableLocalDateTimeConverter() DateTime? updatedAt,
    bool? isWishlisted,
    bool? isSameDayShipping,
    bool? isRemoteAreaUnavailable,
    bool? isJejuUnavailable,
    bool? isTaxable,
    bool? isRecommended,
    bool? isNew,
    bool? isEvent,
    bool? isVariableWeight,
    bool? isHaccpCertified,

    List<String>? directDeliveryRegions,
    bool? isWeekendShipping,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

List<OptionDto>? _sortOptions(List<dynamic>? jsonList) {
  if (jsonList == null) return null;

  final options = jsonList
      .map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
      .toList();

  options.sort((a, b) => (a.sortOrder ?? 9999).compareTo(b.sortOrder ?? 9999));

  return options;
}

StorageMethod? _storageMethodFromJson(String? value) {
  if (value == null) return null;

  return StorageMethod.values.firstWhere(
    (e) => e.name == value,
    orElse: () => StorageMethod.ROOM_TEMP, // fallback
  );
}

String? _storageMethodToJson(StorageMethod? method) {
  return method?.name;
}

List<DeliveryMethod>? _deliveryMethodsFromJson(List<dynamic>? list) {
  if (list == null) return null;

  return list.map((e) {
    return DeliveryMethod.values.firstWhere(
      (method) => method.name == e,
      orElse: () => DeliveryMethod.COURIER, // fallback
    );
  }).toList();
}

List<String>? _deliveryMethodsToJson(List<DeliveryMethod>? list) {
  return list?.map((e) => e.name).toList();
}

@freezed
abstract class OptionDto with _$OptionDto {
  const factory OptionDto({
    int? id,
    String? optionName,
    int? capacity,
    String? capacityUnit,
    int? quantityValue,
    String? quantityUnit,
    int? price,
    int? discountRate,
    int? discountAmount,
    int? sellingPrice,
    int? pricePer100,
    int? savingsVsCheapest,
    int? stockQuantity,
    int? sortOrder,
    bool? isFreeShipping,
    bool? isAvailable,
  }) = _OptionDto;

  factory OptionDto.fromJson(Map<String, dynamic> json) =>
      _$OptionDtoFromJson(json);
}
