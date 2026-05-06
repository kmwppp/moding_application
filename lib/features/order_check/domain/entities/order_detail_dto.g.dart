// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetailWrapper _$OrderDetailWrapperFromJson(Map<String, dynamic> json) =>
    _OrderDetailWrapper(
      data: OrderDetailDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDetailWrapperToJson(_OrderDetailWrapper instance) =>
    <String, dynamic>{'data': instance.data};

_OrderDetailDto _$OrderDetailDtoFromJson(Map<String, dynamic> json) =>
    _OrderDetailDto(
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
      status: OrderStatus.fromJson(json['status'] as String),
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      deliveryFee: (json['deliveryFee'] as num?)?.toInt(),
      jejuDeliveryFee: (json['jejuDeliveryFee'] as num?)?.toInt(),
      deliveryMethod: json['deliveryMethod'] as String?,
      rejectionReason: json['rejectionReason'] as String?,
      rejectionReasonDetail: json['rejectionReasonDetail'] as String?,
      claimId: (json['claimId'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderDetailItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: json['delivery'] == null
          ? null
          : OrderDetailDeliveryDto.fromJson(
              json['delivery'] as Map<String, dynamic>,
            ),
      payment: json['payment'] == null
          ? null
          : OrderDetailPaymentDto.fromJson(
              json['payment'] as Map<String, dynamic>,
            ),
      isReviewable: json['isReviewable'] as bool?,
      createdAt: const LocalDateTimeConverter().fromJson(
        json['createdAt'] as String,
      ),
      updatedAt: const LocalDateTimeConverter().fromJson(
        json['updatedAt'] as String,
      ),
    );

Map<String, dynamic> _$OrderDetailDtoToJson(_OrderDetailDto instance) =>
    <String, dynamic>{
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
      'status': OrderStatus.toJson(instance.status),
      'totalAmount': instance.totalAmount,
      'deliveryFee': instance.deliveryFee,
      'jejuDeliveryFee': instance.jejuDeliveryFee,
      'deliveryMethod': instance.deliveryMethod,
      'rejectionReason': instance.rejectionReason,
      'rejectionReasonDetail': instance.rejectionReasonDetail,
      'claimId': instance.claimId,
      'items': instance.items,
      'delivery': instance.delivery,
      'payment': instance.payment,
      'isReviewable': instance.isReviewable,
      'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const LocalDateTimeConverter().toJson(instance.updatedAt),
    };

_OrderDetailItemDto _$OrderDetailItemDtoFromJson(Map<String, dynamic> json) =>
    _OrderDetailItemDto(
      id: (json['id'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      thumbnailImageUrl: json['thumbnailImageUrl'] as String,
      productName: json['productName'] as String,
      productOptionId: (json['productOptionId'] as num).toInt(),
      optionName: json['optionName'] as String,
      unitPrice: (json['unitPrice'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      isTaxable: json['isTaxable'] as bool,
    );

Map<String, dynamic> _$OrderDetailItemDtoToJson(_OrderDetailItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'productName': instance.productName,
      'productOptionId': instance.productOptionId,
      'optionName': instance.optionName,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'isTaxable': instance.isTaxable,
    };

_OrderDetailDeliveryDto _$OrderDetailDeliveryDtoFromJson(
  Map<String, dynamic> json,
) => _OrderDetailDeliveryDto(
  status: OrderDeliveryStatus.fromJson(json['status'] as String),
  courierCode: json['courierCode'] as String?,
  courierName: json['courierName'] as String?,
  trackingNumber: json['trackingNumber'] as String?,
  shippedAt: const NullableLocalDateTimeConverter().fromJson(
    json['shippedAt'] as String?,
  ),
  deliveredAt: const NullableLocalDateTimeConverter().fromJson(
    json['deliveredAt'] as String?,
  ),
);

Map<String, dynamic> _$OrderDetailDeliveryDtoToJson(
  _OrderDetailDeliveryDto instance,
) => <String, dynamic>{
  'status': OrderDeliveryStatus.toJson(instance.status),
  'courierCode': instance.courierCode,
  'courierName': instance.courierName,
  'trackingNumber': instance.trackingNumber,
  'shippedAt': const NullableLocalDateTimeConverter().toJson(
    instance.shippedAt,
  ),
  'deliveredAt': const NullableLocalDateTimeConverter().toJson(
    instance.deliveredAt,
  ),
};

_OrderDetailPaymentDto _$OrderDetailPaymentDtoFromJson(
  Map<String, dynamic> json,
) => _OrderDetailPaymentDto(
  paymentCode: json['paymentCode'] as String,
  paymentMethod: OrderPaymentMethod.fromJson(json['paymentMethod'] as String),
  status: OrderPaymentStatus.fromJson(json['status'] as String),
  paidAt: const NullableLocalDateTimeConverter().fromJson(
    json['paidAt'] as String?,
  ),
  cancelledAmount: (json['cancelledAmount'] as num?)?.toInt(),
  netAmount: (json['netAmount'] as num?)?.toInt(),
  receiptUrl: json['receiptUrl'] as String?,
  approvalNumber: json['approvalNumber'] as String?,
  cardType: json['cardType'] as String?,
  cardName: json['cardName'] as String?,
  cardNum: json['cardNum'] as String?,
  cardQuota: (json['cardQuota'] as num?)?.toInt(),
  isInterestFree: json['isInterestFree'] as bool?,
  vbankNumber: json['vbankNumber'] as String?,
  vbankName: json['vbankName'] as String?,
  vbankExpDate: const NullableLocalDateTimeConverter().fromJson(
    json['vbankExpDate'] as String?,
  ),
  vbankHolder: json['vbankHolder'] as String?,
);

Map<String, dynamic> _$OrderDetailPaymentDtoToJson(
  _OrderDetailPaymentDto instance,
) => <String, dynamic>{
  'paymentCode': instance.paymentCode,
  'paymentMethod': OrderPaymentMethod.toJson(instance.paymentMethod),
  'status': OrderPaymentStatus.toJson(instance.status),
  'paidAt': const NullableLocalDateTimeConverter().toJson(instance.paidAt),
  'cancelledAmount': instance.cancelledAmount,
  'netAmount': instance.netAmount,
  'receiptUrl': instance.receiptUrl,
  'approvalNumber': instance.approvalNumber,
  'cardType': instance.cardType,
  'cardName': instance.cardName,
  'cardNum': instance.cardNum,
  'cardQuota': instance.cardQuota,
  'isInterestFree': instance.isInterestFree,
  'vbankNumber': instance.vbankNumber,
  'vbankName': instance.vbankName,
  'vbankExpDate': const NullableLocalDateTimeConverter().toJson(
    instance.vbankExpDate,
  ),
  'vbankHolder': instance.vbankHolder,
};
