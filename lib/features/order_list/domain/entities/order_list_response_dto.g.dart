// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderListResponseWrapper _$OrderListResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _OrderListResponseWrapper(
  data: OrderListResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrderListResponseWrapperToJson(
  _OrderListResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_OrderListResponseDto _$OrderListResponseDtoFromJson(
  Map<String, dynamic> json,
) => _OrderListResponseDto(
  content: (json['content'] as List<dynamic>)
      .map((e) => OrderListItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  number: (json['number'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  totalElements: (json['totalElements'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$OrderListResponseDtoToJson(
  _OrderListResponseDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'number': instance.number,
  'size': instance.size,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
};

_OrderListItemDto _$OrderListItemDtoFromJson(
  Map<String, dynamic> json,
) => _OrderListItemDto(
  id: (json['id'] as num).toInt(),
  orderCode: json['orderCode'] as String,
  deliveryAddressName: json['deliveryAddressName'] as String,
  deliveryAddressRecipientName: json['deliveryAddressRecipientName'] as String,
  deliveryAddressPhone: json['deliveryAddressPhone'] as String,
  deliveryAddressFull: json['deliveryAddressFull'] as String,
  status: json['status'] as String,
  totalAmount: (json['totalAmount'] as num).toInt(),
  rejectionReason: json['rejectionReason'] as String?,
  claimId: (json['claimId'] as num?)?.toInt(),
  paymentId: (json['paymentId'] as num?)?.toInt(),
  isReviewable: json['isReviewable'] as bool?,
  items: (json['items'] as List<dynamic>)
      .map((e) => OrderListProductItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
);

Map<String, dynamic> _$OrderListItemDtoToJson(_OrderListItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderCode': instance.orderCode,
      'deliveryAddressName': instance.deliveryAddressName,
      'deliveryAddressRecipientName': instance.deliveryAddressRecipientName,
      'deliveryAddressPhone': instance.deliveryAddressPhone,
      'deliveryAddressFull': instance.deliveryAddressFull,
      'status': instance.status,
      'totalAmount': instance.totalAmount,
      'rejectionReason': instance.rejectionReason,
      'claimId': instance.claimId,
      'paymentId': instance.paymentId,
      'isReviewable': instance.isReviewable,
      'items': instance.items,
      'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
    };

_OrderListProductItemDto _$OrderListProductItemDtoFromJson(
  Map<String, dynamic> json,
) => _OrderListProductItemDto(
  id: (json['id'] as num).toInt(),
  productId: (json['productId'] as num).toInt(),
  thumbnailImageUrl: json['thumbnailImageUrl'] as String,
  productName: json['productName'] as String,
  optionName: json['optionName'] as String,
  unitPrice: (json['unitPrice'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  totalPrice: (json['totalPrice'] as num).toInt(),
  shippingLeadTime: _shippingLeadTimeFromJson(json['shippingLeadTime']),
  deliveryDays: _deliveryDaysFromJson(json['deliveryDays']),
  weekendDeliveryAvailability: _weekendDeliveryAvailabilityFromJson(
    json['weekendDeliveryAvailability'],
  ),
  isSameDayShipping: _isSameDayShippingFromJson(json['isSameDayShipping']),
  shippingCutoffTime: _shippingCutoffTimeFromJson(json['shippingCutoffTime']),
);

Map<String, dynamic> _$OrderListProductItemDtoToJson(
  _OrderListProductItemDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'thumbnailImageUrl': instance.thumbnailImageUrl,
  'productName': instance.productName,
  'optionName': instance.optionName,
  'unitPrice': instance.unitPrice,
  'quantity': instance.quantity,
  'totalPrice': instance.totalPrice,
  'shippingLeadTime': instance.shippingLeadTime,
  'deliveryDays': instance.deliveryDays,
  'weekendDeliveryAvailability': instance.weekendDeliveryAvailability,
  'isSameDayShipping': instance.isSameDayShipping,
  'shippingCutoffTime': instance.shippingCutoffTime,
};
