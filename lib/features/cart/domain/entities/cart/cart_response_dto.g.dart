// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartResponseDto _$CartResponseDtoFromJson(Map<String, dynamic> json) =>
    _CartResponseDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartResponseDtoToJson(_CartResponseDto instance) =>
    <String, dynamic>{'data': instance.data};

_CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) => _CartItemDto(
  cartItemId: (json['cartItemId'] as num?)?.toInt(),
  productId: (json['productId'] as num?)?.toInt(),
  productName: json['productName'] as String?,
  thumbnailUrl: json['thumbnailUrl'] as String?,
  sellerProfileId: (json['sellerProfileId'] as num?)?.toInt(),
  storageMethod: json['storageMethod'] as String?,
  deliveryDays: (json['deliveryDays'] as num?)?.toInt(),
  shippingFee: (json['shippingFee'] as num?)?.toInt(),
  freeShippingThreshold: (json['freeShippingThreshold'] as num?)?.toInt(),
  createdAt: const NullableLocalDateTimeConverter().fromJson(
    json['createdAt'] as String?,
  ),
  options: (json['options'] as List<dynamic>?)
      ?.map((e) => CartItemOptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  productTotalPrice: (json['productTotalPrice'] as num?)?.toInt(),
  isAvailable: json['isAvailable'] as bool?,
  unavailableReason: CartUnavailableReason.fromJson(
    json['unavailableReason'] as String?,
  ),
);

Map<String, dynamic> _$CartItemDtoToJson(
  _CartItemDto instance,
) => <String, dynamic>{
  'cartItemId': instance.cartItemId,
  'productId': instance.productId,
  'productName': instance.productName,
  'thumbnailUrl': instance.thumbnailUrl,
  'sellerProfileId': instance.sellerProfileId,
  'storageMethod': instance.storageMethod,
  'deliveryDays': instance.deliveryDays,
  'shippingFee': instance.shippingFee,
  'freeShippingThreshold': instance.freeShippingThreshold,
  'createdAt': const NullableLocalDateTimeConverter().toJson(
    instance.createdAt,
  ),
  'options': instance.options,
  'productTotalPrice': instance.productTotalPrice,
  'isAvailable': instance.isAvailable,
  'unavailableReason': CartUnavailableReason.toJson(instance.unavailableReason),
};

_CartItemOptionDto _$CartItemOptionDtoFromJson(Map<String, dynamic> json) =>
    _CartItemOptionDto(
      cartItemOptionId: (json['cartItemOptionId'] as num).toInt(),
      productOptionId: (json['productOptionId'] as num).toInt(),
      optionName: json['optionName'] as String,
      unitPrice: (json['unitPrice'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      stockQuantity: (json['stockQuantity'] as num).toInt(),
      isUnavailable: json['isUnavailable'] as bool,
    );

Map<String, dynamic> _$CartItemOptionDtoToJson(_CartItemOptionDto instance) =>
    <String, dynamic>{
      'cartItemOptionId': instance.cartItemOptionId,
      'productOptionId': instance.productOptionId,
      'optionName': instance.optionName,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'stockQuantity': instance.stockQuantity,
      'isUnavailable': instance.isUnavailable,
    };
