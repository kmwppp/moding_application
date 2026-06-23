// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_check_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClaimCheckResponseWrapper _$ClaimCheckResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _ClaimCheckResponseWrapper(
  data: ClaimCheckResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ClaimCheckResponseWrapperToJson(
  _ClaimCheckResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_ClaimCheckResponseDto _$ClaimCheckResponseDtoFromJson(
  Map<String, dynamic> json,
) => _ClaimCheckResponseDto(
  id: (json['id'] as num).toInt(),
  claimCode: json['claimCode'] as String,
  orderId: (json['orderId'] as num).toInt(),
  orderCode: json['orderCode'] as String,
  sellerBusinessName: json['sellerBusinessName'] as String,
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
  claimType: ClaimType.fromJson(json['claimType'] as String),
  claimReason: json['claimReason'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => ClaimCheckItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalRefundAmount: (json['totalRefundAmount'] as num).toInt(),
  photoUrls: (json['photoUrls'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  status: ClaimStatus.fromJson(json['status'] as String),
  resolution: ClaimResolution.fromJson(json['resolution'] as String?),
  rejectReason: json['rejectReason'] as String?,
  appealReason: json['appealReason'] as String?,
  appealDeadlineAt: const NullableLocalDateTimeConverter().fromJson(
    json['appealDeadlineAt'] as String?,
  ),
  reshipDeliveryMethod: ReshipDeliveryMethod.fromJson(
    json['reshipDeliveryMethod'] as String?,
  ),
  reshipCourierCode: json['reshipCourierCode'] as String?,
  reshipTrackingNumber: json['reshipTrackingNumber'] as String?,
  reshipShippedAt: const NullableLocalDateTimeConverter().fromJson(
    json['reshipShippedAt'] as String?,
  ),
  reshipTrackingEvents:
      (json['reshipTrackingEvents'] as List<dynamic>?)
          ?.map(
            (e) =>
                ClaimCheckTrackingEventDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  statusHistories: (json['statusHistories'] as List<dynamic>)
      .map(
        (e) => ClaimCheckStatusHistoryDto.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  deliveredAt: const NullableLocalDateTimeConverter().fromJson(
    json['deliveredAt'] as String?,
  ),
  updatedAt: const LocalDateTimeConverter().fromJson(
    json['updatedAt'] as String,
  ),
);

Map<String, dynamic> _$ClaimCheckResponseDtoToJson(
  _ClaimCheckResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'claimCode': instance.claimCode,
  'orderId': instance.orderId,
  'orderCode': instance.orderCode,
  'sellerBusinessName': instance.sellerBusinessName,
  'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
  'claimType': ClaimType.toJson(instance.claimType),
  'claimReason': instance.claimReason,
  'items': instance.items,
  'totalRefundAmount': instance.totalRefundAmount,
  'photoUrls': instance.photoUrls,
  'status': ClaimStatus.toJson(instance.status),
  'resolution': ClaimResolution.toJson(instance.resolution),
  'rejectReason': instance.rejectReason,
  'appealReason': instance.appealReason,
  'appealDeadlineAt': const NullableLocalDateTimeConverter().toJson(
    instance.appealDeadlineAt,
  ),
  'reshipDeliveryMethod': ReshipDeliveryMethod.toJson(
    instance.reshipDeliveryMethod,
  ),
  'reshipCourierCode': instance.reshipCourierCode,
  'reshipTrackingNumber': instance.reshipTrackingNumber,
  'reshipShippedAt': const NullableLocalDateTimeConverter().toJson(
    instance.reshipShippedAt,
  ),
  'reshipTrackingEvents': instance.reshipTrackingEvents,
  'statusHistories': instance.statusHistories,
  'deliveredAt': const NullableLocalDateTimeConverter().toJson(
    instance.deliveredAt,
  ),
  'updatedAt': const LocalDateTimeConverter().toJson(instance.updatedAt),
};

_ClaimCheckItemDto _$ClaimCheckItemDtoFromJson(Map<String, dynamic> json) =>
    _ClaimCheckItemDto(
      id: (json['id'] as num).toInt(),
      orderItemId: (json['orderItemId'] as num).toInt(),
      productName: json['productName'] as String,
      optionName: json['optionName'] as String,
      unitPrice: (json['unitPrice'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      claimedQuantity: (json['claimedQuantity'] as num).toInt(),
      refundAmount: (json['refundAmount'] as num).toInt(),
      thumbnailImageUrl: json['thumbnailImageUrl'] as String?,
    );

Map<String, dynamic> _$ClaimCheckItemDtoToJson(_ClaimCheckItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderItemId': instance.orderItemId,
      'productName': instance.productName,
      'optionName': instance.optionName,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'claimedQuantity': instance.claimedQuantity,
      'refundAmount': instance.refundAmount,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
    };

_ClaimCheckStatusHistoryDto _$ClaimCheckStatusHistoryDtoFromJson(
  Map<String, dynamic> json,
) => _ClaimCheckStatusHistoryDto(
  id: (json['id'] as num).toInt(),
  status: ClaimStatus.fromJson(json['status'] as String),
  memo: json['memo'] as String?,
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
);

Map<String, dynamic> _$ClaimCheckStatusHistoryDtoToJson(
  _ClaimCheckStatusHistoryDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': ClaimStatus.toJson(instance.status),
  'memo': instance.memo,
  'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
};

_ClaimCheckTrackingEventDto _$ClaimCheckTrackingEventDtoFromJson(
  Map<String, dynamic> json,
) => _ClaimCheckTrackingEventDto(
  timeString: json['timeString'] as String,
  where: json['where'] as String,
  kind: json['kind'] as String,
  level: (json['level'] as num).toInt(),
);

Map<String, dynamic> _$ClaimCheckTrackingEventDtoToJson(
  _ClaimCheckTrackingEventDto instance,
) => <String, dynamic>{
  'timeString': instance.timeString,
  'where': instance.where,
  'kind': instance.kind,
  'level': instance.level,
};
