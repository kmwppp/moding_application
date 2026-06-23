// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderResponseDto _$CreateOrderResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CreateOrderResponseDto(
  id: (json['id'] as num).toInt(),
  orderCode: json['orderCode'] as String,
  idempotencyKey: json['idempotencyKey'] as String,
  buyerProfileId: (json['buyerProfileId'] as num?)?.toInt(),
  buyerBusinessName: json['buyerBusinessName'] as String?,
  sellerProfileId: (json['sellerProfileId'] as num?)?.toInt(),
  sellerBusinessName: json['sellerBusinessName'] as String?,
  addressName: json['addressName'] as String?,
  recipientName: json['recipientName'] as String?,
  zipCode: json['zipCode'] as String?,
  address: json['address'] as String?,
  addressDetail: json['addressDetail'] as String?,
  phone: json['phone'] as String?,
  deliveryRequest: json['deliveryRequest'] as String?,
  status: json['status'] as String,
  totalAmount: (json['totalAmount'] as num?)?.toInt(),
  deliveryFee: (json['deliveryFee'] as num?)?.toInt(),
  jejuDeliveryFee: (json['jejuDeliveryFee'] as num?)?.toInt(),
  deliveryMethod: json['deliveryMethod'] as String?,
  rejectionReason: json['rejectionReason'] as String?,
  rejectionReasonDetail: json['rejectionReasonDetail'] as String?,
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => CreateOrderItemResponseDto.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  productDeliveryMethods: (json['productDeliveryMethods'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  delivery: json['delivery'] == null
      ? null
      : CreateOrderDeliveryDto.fromJson(
          json['delivery'] as Map<String, dynamic>,
        ),
  payment: json['payment'] == null
      ? null
      : CreateOrderPaymentDto.fromJson(json['payment'] as Map<String, dynamic>),
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
  updatedAt: const LocalDateTimeConverter().fromJson(
    json['updatedAt'] as String,
  ),
);

Map<String, dynamic> _$CreateOrderResponseDtoToJson(
  _CreateOrderResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'orderCode': instance.orderCode,
  'idempotencyKey': instance.idempotencyKey,
  'buyerProfileId': instance.buyerProfileId,
  'buyerBusinessName': instance.buyerBusinessName,
  'sellerProfileId': instance.sellerProfileId,
  'sellerBusinessName': instance.sellerBusinessName,
  'addressName': instance.addressName,
  'recipientName': instance.recipientName,
  'zipCode': instance.zipCode,
  'address': instance.address,
  'addressDetail': instance.addressDetail,
  'phone': instance.phone,
  'deliveryRequest': instance.deliveryRequest,
  'status': instance.status,
  'totalAmount': instance.totalAmount,
  'deliveryFee': instance.deliveryFee,
  'jejuDeliveryFee': instance.jejuDeliveryFee,
  'deliveryMethod': instance.deliveryMethod,
  'rejectionReason': instance.rejectionReason,
  'rejectionReasonDetail': instance.rejectionReasonDetail,
  'items': instance.items,
  'productDeliveryMethods': instance.productDeliveryMethods,
  'delivery': instance.delivery,
  'payment': instance.payment,
  'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const LocalDateTimeConverter().toJson(instance.updatedAt),
};

_CreateOrderItemResponseDto _$CreateOrderItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CreateOrderItemResponseDto(
  id: (json['id'] as num).toInt(),
  productId: (json['productId'] as num).toInt(),
  productName: json['productName'] as String,
  productOptionId: (json['productOptionId'] as num).toInt(),
  optionName: json['optionName'] as String,
  unitPrice: (json['unitPrice'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  totalPrice: (json['totalPrice'] as num).toInt(),
  isTaxable: json['isTaxable'] as bool,
);

Map<String, dynamic> _$CreateOrderItemResponseDtoToJson(
  _CreateOrderItemResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'productName': instance.productName,
  'productOptionId': instance.productOptionId,
  'optionName': instance.optionName,
  'unitPrice': instance.unitPrice,
  'quantity': instance.quantity,
  'totalPrice': instance.totalPrice,
  'isTaxable': instance.isTaxable,
};

_CreateOrderDeliveryDto _$CreateOrderDeliveryDtoFromJson(
  Map<String, dynamic> json,
) => _CreateOrderDeliveryDto(
  status: json['status'] as String,
  courierCode: json['courierCode'] as String,
  courierName: json['courierName'] as String,
  trackingNumber: json['trackingNumber'] as String,
  shippedAt: const LocalDateTimeConverter().fromJson(
    json['shippedAt'] as String,
  ),
  deliveredAt: const LocalDateTimeConverter().fromJson(
    json['deliveredAt'] as String,
  ),
);

Map<String, dynamic> _$CreateOrderDeliveryDtoToJson(
  _CreateOrderDeliveryDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'courierCode': instance.courierCode,
  'courierName': instance.courierName,
  'trackingNumber': instance.trackingNumber,
  'shippedAt': const LocalDateTimeConverter().toJson(instance.shippedAt),
  'deliveredAt': const LocalDateTimeConverter().toJson(instance.deliveredAt),
};

_CreateOrderPaymentDto _$CreateOrderPaymentDtoFromJson(
  Map<String, dynamic> json,
) => _CreateOrderPaymentDto(
  paymentCode: json['paymentCode'] as String?,
  paymentMethod: json['paymentMethod'] as String?,
  status: json['status'] as String?,
  signature: json['signature'] as String?,
  timestamp: json['timestamp'] as String?,
  paidAt: const NullableLocalDateTimeConverter().fromJson(
    json['paidAt'] as String?,
  ),
  cancelledAmount: (json['cancelledAmount'] as num?)?.toInt(),
  netAmount: (json['netAmount'] as num?)?.toInt(),
  receiptUrl: json['receiptUrl'] as String?,
  approvalNumber: json['approvalNumber'] as String?,
  vbankNumber: json['vbankNumber'] as String?,
  vbankName: json['vbankName'] as String?,
  vbankExpDate: const NullableLocalDateTimeConverter().fromJson(
    json['vbankExpDate'] as String?,
  ),
  vbankHolder: json['vbankHolder'] as String?,
);

Map<String, dynamic> _$CreateOrderPaymentDtoToJson(
  _CreateOrderPaymentDto instance,
) => <String, dynamic>{
  'paymentCode': instance.paymentCode,
  'paymentMethod': instance.paymentMethod,
  'status': instance.status,
  'signature': instance.signature,
  'timestamp': instance.timestamp,
  'paidAt': const NullableLocalDateTimeConverter().toJson(instance.paidAt),
  'cancelledAmount': instance.cancelledAmount,
  'netAmount': instance.netAmount,
  'receiptUrl': instance.receiptUrl,
  'approvalNumber': instance.approvalNumber,
  'vbankNumber': instance.vbankNumber,
  'vbankName': instance.vbankName,
  'vbankExpDate': const NullableLocalDateTimeConverter().toJson(
    instance.vbankExpDate,
  ),
  'vbankHolder': instance.vbankHolder,
};
