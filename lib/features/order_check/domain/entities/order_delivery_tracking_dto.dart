import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'order_delivery_tracking_dto.freezed.dart';
part 'order_delivery_tracking_dto.g.dart';

@freezed
abstract class OrderDeliveryTrackingWrapper
    with _$OrderDeliveryTrackingWrapper {
  const factory OrderDeliveryTrackingWrapper({
    required bool success,
    required OrderDeliveryTrackingDto data,
    @Default('') String code,
    @Default('') String message,
  }) = _OrderDeliveryTrackingWrapper;

  factory OrderDeliveryTrackingWrapper.fromJson(Map<String, dynamic> json) =>
      _$OrderDeliveryTrackingWrapperFromJson(json);
}

@freezed
abstract class OrderDeliveryTrackingDto with _$OrderDeliveryTrackingDto {
  const factory OrderDeliveryTrackingDto({
    required int id,
    required String deliveryCode,
    required int orderId,
    required String status,
    String? courierCode,
    String? trackingNumber,
    @NullableLocalDateTimeConverter() DateTime? shippedAt,
    @NullableLocalDateTimeConverter() DateTime? deliveredAt,
    @NullableLocalDateTimeConverter() DateTime? inspectionDueAt,
    @NullableLocalDateTimeConverter() DateTime? autoSettlementDueAt,
    @Default([]) List<OrderTrackingEventDto> trackingEvents,
    @LocalDateTimeConverter() required DateTime createdAt,
    @LocalDateTimeConverter() required DateTime updatedAt,
  }) = _OrderDeliveryTrackingDto;

  factory OrderDeliveryTrackingDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDeliveryTrackingDtoFromJson(json);
}

@freezed
abstract class OrderTrackingEventDto with _$OrderTrackingEventDto {
  const factory OrderTrackingEventDto({
    required String timeString,
    required String where,
    required String kind,
    required int level,
  }) = _OrderTrackingEventDto;

  factory OrderTrackingEventDto.fromJson(Map<String, dynamic> json) =>
      _$OrderTrackingEventDtoFromJson(json);
}
