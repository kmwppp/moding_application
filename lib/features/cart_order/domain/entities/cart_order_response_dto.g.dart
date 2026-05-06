// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_order_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartOrderResponseDto _$CartOrderResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CartOrderResponseDto(
  data: CartOrderData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CartOrderResponseDtoToJson(
  _CartOrderResponseDto instance,
) => <String, dynamic>{'data': instance.data};

_CartOrderData _$CartOrderDataFromJson(Map<String, dynamic> json) =>
    _CartOrderData(
      deliveryAddress: DeliveryAddress.fromJson(
        json['deliveryAddress'] as Map<String, dynamic>,
      ),
      totalProductAmount: (json['totalProductAmount'] as num).toInt(),
      totalDeliveryFee: (json['totalDeliveryFee'] as num).toInt(),
      totalJejuDeliveryFee: (json['totalJejuDeliveryFee'] as num).toInt(),
      totalAmount: (json['totalAmount'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartOrderDataToJson(_CartOrderData instance) =>
    <String, dynamic>{
      'deliveryAddress': instance.deliveryAddress,
      'totalProductAmount': instance.totalProductAmount,
      'totalDeliveryFee': instance.totalDeliveryFee,
      'totalJejuDeliveryFee': instance.totalJejuDeliveryFee,
      'totalAmount': instance.totalAmount,
      'products': instance.products,
    };

_DeliveryAddress _$DeliveryAddressFromJson(Map<String, dynamic> json) =>
    _DeliveryAddress(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      recipientName: json['recipientName'] as String,
      zipCode: json['zipCode'] as String,
      address: json['address'] as String,
      addressDetail: json['addressDetail'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$DeliveryAddressToJson(_DeliveryAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'recipientName': instance.recipientName,
      'zipCode': instance.zipCode,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
      'phone': instance.phone,
    };

_ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => _ProductDto(
  productId: (json['productId'] as num).toInt(),
  productName: json['productName'] as String,
  thumbnailImageUrl: json['thumbnailImageUrl'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => ProductItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  productAmount: (json['productAmount'] as num).toInt(),
  deliveryFee: (json['deliveryFee'] as num).toInt(),
  jejuDeliveryFee: (json['jejuDeliveryFee'] as num).toInt(),
  totalAmount: (json['totalAmount'] as num).toInt(),
  isWeekendShipping: json['isWeekendShipping'] as bool,
  deliveryDays: (json['deliveryDays'] as num).toInt(),
  shippingLeadTime: (json['shippingLeadTime'] as num).toInt(),
  isSameDayShipping: json['isSameDayShipping'] as bool,
  shippingCutoffTime: json['shippingCutoffTime'] as String,
);

Map<String, dynamic> _$ProductDtoToJson(_ProductDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'items': instance.items,
      'productAmount': instance.productAmount,
      'deliveryFee': instance.deliveryFee,
      'jejuDeliveryFee': instance.jejuDeliveryFee,
      'totalAmount': instance.totalAmount,
      'isWeekendShipping': instance.isWeekendShipping,
      'deliveryDays': instance.deliveryDays,
      'shippingLeadTime': instance.shippingLeadTime,
      'isSameDayShipping': instance.isSameDayShipping,
      'shippingCutoffTime': instance.shippingCutoffTime,
    };

_ProductItemDto _$ProductItemDtoFromJson(Map<String, dynamic> json) =>
    _ProductItemDto(
      productOptionId: (json['productOptionId'] as num).toInt(),
      optionName: json['optionName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unitPrice'] as num).toInt(),
      itemAmount: (json['itemAmount'] as num).toInt(),
    );

Map<String, dynamic> _$ProductItemDtoToJson(_ProductItemDto instance) =>
    <String, dynamic>{
      'productOptionId': instance.productOptionId,
      'optionName': instance.optionName,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'itemAmount': instance.itemAmount,
    };
