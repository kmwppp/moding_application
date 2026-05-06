// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_complete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentCompleteResponseWrapper _$PaymentCompleteResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _PaymentCompleteResponseWrapper(
  data: PaymentCompleteResponseDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PaymentCompleteResponseWrapperToJson(
  _PaymentCompleteResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_PaymentCompleteResponseDto _$PaymentCompleteResponseDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentCompleteResponseDto(
  id: (json['id'] as num).toInt(),
  paymentCode: json['paymentCode'] as String,
  totalProductAmount: (json['totalProductAmount'] as num).toInt(),
  totalDeliveryFee: (json['totalDeliveryFee'] as num).toInt(),
  totalJejuDeliveryFee: (json['totalJejuDeliveryFee'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
  paymentMethod: $enumDecode(
    _$PaymentCompleteMethodEnumMap,
    json['paymentMethod'],
  ),
  status: $enumDecode(_$PaymentCompleteStatusEnumMap, json['status']),
  orders: (json['orders'] as List<dynamic>)
      .map((e) => PaymentOrderDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  pgTransactionId: json['pgTransactionId'] as String?,
  receiptUrl: json['receiptUrl'] as String?,
  approvalNumber: json['approvalNumber'] as String?,
  cardType: json['cardType'] as String?,
  cardName: json['cardName'] as String?,
  cardNum: json['cardNum'] as String?,
  cardQuote: (json['cardQuote'] as num?)?.toInt(),
  isInterestFree: json['isInterestFree'] as bool?,
  vbankNumber: json['vbankNumber'] as String?,
  vbankName: json['vbankName'] as String?,
  vbankExpDate: const NullableLocalDateTimeConverter().fromJson(
    json['vbankExpDate'] as String?,
  ),
  vbankHolder: json['vbankHolder'] as String?,
  paidAt: const NullableLocalDateTimeConverter().fromJson(
    json['paidAt'] as String?,
  ),
  cancelledAt: const NullableLocalDateTimeConverter().fromJson(
    json['cancelledAt'] as String?,
  ),
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
);

Map<String, dynamic> _$PaymentCompleteResponseDtoToJson(
  _PaymentCompleteResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'paymentCode': instance.paymentCode,
  'totalProductAmount': instance.totalProductAmount,
  'totalDeliveryFee': instance.totalDeliveryFee,
  'totalJejuDeliveryFee': instance.totalJejuDeliveryFee,
  'amount': instance.amount,
  'paymentMethod': _$PaymentCompleteMethodEnumMap[instance.paymentMethod]!,
  'status': _$PaymentCompleteStatusEnumMap[instance.status]!,
  'orders': instance.orders,
  'pgTransactionId': instance.pgTransactionId,
  'receiptUrl': instance.receiptUrl,
  'approvalNumber': instance.approvalNumber,
  'cardType': instance.cardType,
  'cardName': instance.cardName,
  'cardNum': instance.cardNum,
  'cardQuote': instance.cardQuote,
  'isInterestFree': instance.isInterestFree,
  'vbankNumber': instance.vbankNumber,
  'vbankName': instance.vbankName,
  'vbankExpDate': const NullableLocalDateTimeConverter().toJson(
    instance.vbankExpDate,
  ),
  'vbankHolder': instance.vbankHolder,
  'paidAt': const NullableLocalDateTimeConverter().toJson(instance.paidAt),
  'cancelledAt': const NullableLocalDateTimeConverter().toJson(
    instance.cancelledAt,
  ),
  'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
};

const _$PaymentCompleteMethodEnumMap = {
  PaymentCompleteMethod.card: 'CARD',
  PaymentCompleteMethod.virtualAccount: 'VIRTUAL_ACCOUNT',
};

const _$PaymentCompleteStatusEnumMap = {
  PaymentCompleteStatus.pending: 'PENDING',
  PaymentCompleteStatus.paid: 'PAID',
  PaymentCompleteStatus.cancelled: 'CANCELLED',
  PaymentCompleteStatus.refunded: 'REFUNDED',
  PaymentCompleteStatus.unknown: 'unknown',
};

_PaymentOrderDto _$PaymentOrderDtoFromJson(Map<String, dynamic> json) =>
    _PaymentOrderDto(
      orderId: (json['orderId'] as num).toInt(),
      orderCode: json['orderCode'] as String,
      status: json['status'] as String,
      sellerBusinessName: json['sellerBusinessName'] as String?,
      productAmount: (json['productAmount'] as num).toInt(),
      deliveryFee: (json['deliveryFee'] as num).toInt(),
      jejuDeliveryFee: (json['jejuDeliveryFee'] as num).toInt(),
      totalAmount: (json['totalAmount'] as num).toInt(),
      shippingLeadTime: (json['shippingLeadTime'] as num?)?.toInt(),
      shippingCutoffTime: json['shippingCutoffTime'] as String?,
      deliveryDays: (json['deliveryDays'] as num?)?.toInt(),
      deliveryAddress: PaymentDeliveryAddressDto.fromJson(
        json['deliveryAddress'] as Map<String, dynamic>,
      ),
      deliveryRequest: json['deliveryRequest'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => PaymentOrderItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSameDayShipping: json['isSameDayShipping'] as bool,
      isWeekendShipping: json['isWeekendShipping'] as bool,
    );

Map<String, dynamic> _$PaymentOrderDtoToJson(_PaymentOrderDto instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderCode': instance.orderCode,
      'status': instance.status,
      'sellerBusinessName': instance.sellerBusinessName,
      'productAmount': instance.productAmount,
      'deliveryFee': instance.deliveryFee,
      'jejuDeliveryFee': instance.jejuDeliveryFee,
      'totalAmount': instance.totalAmount,
      'shippingLeadTime': instance.shippingLeadTime,
      'shippingCutoffTime': instance.shippingCutoffTime,
      'deliveryDays': instance.deliveryDays,
      'deliveryAddress': instance.deliveryAddress,
      'deliveryRequest': instance.deliveryRequest,
      'items': instance.items,
      'isSameDayShipping': instance.isSameDayShipping,
      'isWeekendShipping': instance.isWeekendShipping,
    };

_PaymentDeliveryAddressDto _$PaymentDeliveryAddressDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentDeliveryAddressDto(
  deliveryAddressId: (json['deliveryAddressId'] as num).toInt(),
  addressName: json['addressName'] as String,
  recipientName: json['recipientName'] as String,
  zipCode: json['zipCode'] as String,
  address: json['address'] as String,
  addressDetail: json['addressDetail'] as String,
  phone: json['phone'] as String,
);

Map<String, dynamic> _$PaymentDeliveryAddressDtoToJson(
  _PaymentDeliveryAddressDto instance,
) => <String, dynamic>{
  'deliveryAddressId': instance.deliveryAddressId,
  'addressName': instance.addressName,
  'recipientName': instance.recipientName,
  'zipCode': instance.zipCode,
  'address': instance.address,
  'addressDetail': instance.addressDetail,
  'phone': instance.phone,
};

_PaymentOrderItemDto _$PaymentOrderItemDtoFromJson(Map<String, dynamic> json) =>
    _PaymentOrderItemDto(
      productId: (json['productId'] as num).toInt(),
      productName: json['productName'] as String,
      optionName: json['optionName'] as String,
      unitPrice: (json['unitPrice'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$PaymentOrderItemDtoToJson(
  _PaymentOrderItemDto instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'productName': instance.productName,
  'optionName': instance.optionName,
  'unitPrice': instance.unitPrice,
  'quantity': instance.quantity,
  'totalPrice': instance.totalPrice,
  'thumbnailUrl': instance.thumbnailUrl,
};
