// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderResponseDto _$OrderResponseDtoFromJson(Map<String, dynamic> json) =>
    _OrderResponseDto(
      customerKey: json['customerKey'] as String?,
      customerName: json['customerName'] as String?,
      productId: (json['productId'] as num).toInt(),
      productName: json['productName'] as String,
      thumbnailImageUrl: json['thumbnailImageUrl'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemDto.fromJson(e as Map<String, dynamic>))
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
      deliveryAddress: AddressDto.fromJson(
        json['deliveryAddress'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$OrderResponseDtoToJson(_OrderResponseDto instance) =>
    <String, dynamic>{
      'customerKey': instance.customerKey,
      'customerName': instance.customerName,
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
      'deliveryAddress': instance.deliveryAddress,
    };

_OrderItemDto _$OrderItemDtoFromJson(Map<String, dynamic> json) =>
    _OrderItemDto(
      productOptionId: (json['productOptionId'] as num).toInt(),
      optionName: json['optionName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unitPrice'] as num).toInt(),
      itemAmount: (json['itemAmount'] as num).toInt(),
    );

Map<String, dynamic> _$OrderItemDtoToJson(_OrderItemDto instance) =>
    <String, dynamic>{
      'productOptionId': instance.productOptionId,
      'optionName': instance.optionName,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'itemAmount': instance.itemAmount,
    };

_CreateOrderResponseWrapper _$CreateOrderResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _CreateOrderResponseWrapper(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : CreateOrderResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateOrderResponseWrapperToJson(
  _CreateOrderResponseWrapper instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
