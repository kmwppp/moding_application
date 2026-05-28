// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_delivery_tracking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDeliveryTrackingWrapper _$OrderDeliveryTrackingWrapperFromJson(
  Map<String, dynamic> json,
) => _OrderDeliveryTrackingWrapper(
  success: json['success'] as bool,
  data: OrderDeliveryTrackingDto.fromJson(json['data'] as Map<String, dynamic>),
  code: json['code'] as String? ?? '',
  message: json['message'] as String? ?? '',
);

Map<String, dynamic> _$OrderDeliveryTrackingWrapperToJson(
  _OrderDeliveryTrackingWrapper instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'code': instance.code,
  'message': instance.message,
};

_OrderDeliveryTrackingDto _$OrderDeliveryTrackingDtoFromJson(
  Map<String, dynamic> json,
) => _OrderDeliveryTrackingDto(
  id: (json['id'] as num).toInt(),
  deliveryCode: json['deliveryCode'] as String,
  orderId: (json['orderId'] as num).toInt(),
  status: json['status'] as String,
  courierCode: json['courierCode'] as String?,
  trackingNumber: json['trackingNumber'] as String?,
  shippedAt: const NullableLocalDateTimeConverter().fromJson(
    json['shippedAt'] as String?,
  ),
  deliveredAt: const NullableLocalDateTimeConverter().fromJson(
    json['deliveredAt'] as String?,
  ),
  inspectionDueAt: const NullableLocalDateTimeConverter().fromJson(
    json['inspectionDueAt'] as String?,
  ),
  autoSettlementDueAt: const NullableLocalDateTimeConverter().fromJson(
    json['autoSettlementDueAt'] as String?,
  ),
  trackingEvents:
      (json['trackingEvents'] as List<dynamic>?)
          ?.map(
            (e) => OrderTrackingEventDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
  updatedAt: const LocalDateTimeConverter().fromJson(
    json['updatedAt'] as String,
  ),
);

Map<String, dynamic> _$OrderDeliveryTrackingDtoToJson(
  _OrderDeliveryTrackingDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'deliveryCode': instance.deliveryCode,
  'orderId': instance.orderId,
  'status': instance.status,
  'courierCode': instance.courierCode,
  'trackingNumber': instance.trackingNumber,
  'shippedAt': const NullableLocalDateTimeConverter().toJson(
    instance.shippedAt,
  ),
  'deliveredAt': const NullableLocalDateTimeConverter().toJson(
    instance.deliveredAt,
  ),
  'inspectionDueAt': const NullableLocalDateTimeConverter().toJson(
    instance.inspectionDueAt,
  ),
  'autoSettlementDueAt': const NullableLocalDateTimeConverter().toJson(
    instance.autoSettlementDueAt,
  ),
  'trackingEvents': instance.trackingEvents,
  'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const LocalDateTimeConverter().toJson(instance.updatedAt),
};

_OrderTrackingEventDto _$OrderTrackingEventDtoFromJson(
  Map<String, dynamic> json,
) => _OrderTrackingEventDto(
  timeString: json['timeString'] as String,
  where: json['where'] as String,
  kind: json['kind'] as String,
  level: (json['level'] as num).toInt(),
);

Map<String, dynamic> _$OrderTrackingEventDtoToJson(
  _OrderTrackingEventDto instance,
) => <String, dynamic>{
  'timeString': instance.timeString,
  'where': instance.where,
  'kind': instance.kind,
  'level': instance.level,
};
