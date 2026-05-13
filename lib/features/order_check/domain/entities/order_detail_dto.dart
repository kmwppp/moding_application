import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';
import 'package:moding_application/features/order_check/domain/enums/order_delivery_status.dart';
import 'package:moding_application/features/order_check/domain/enums/order_payment_method.dart';
import 'package:moding_application/features/order_check/domain/enums/order_payment_status.dart';
import 'package:moding_application/features/order_check/domain/enums/order_status.dart';

part 'order_detail_dto.freezed.dart';
part 'order_detail_dto.g.dart';

@freezed
abstract class OrderDetailWrapper with _$OrderDetailWrapper {
  const factory OrderDetailWrapper({required OrderDetailDto data}) =
      _OrderDetailWrapper;

  factory OrderDetailWrapper.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailWrapperFromJson(json);
}

@freezed
abstract class OrderDetailDto with _$OrderDetailDto {
  const factory OrderDetailDto({
    required int id,
    required String orderCode,
    required String idempotencyKey,

    int? buyerProfileId,
    String? buyerBusinessName,
    int? sellerProfileId,
    String? sellerBusinessName,

    String? addressName,
    String? recipientName,
    String? zipCode,
    String? address,
    String? addressDetail,
    String? phone,
    String? deliveryRequest,

    @JsonKey(fromJson: OrderStatus.fromJson, toJson: OrderStatus.toJson)
    required OrderStatus status,

    int? totalAmount,
    int? deliveryFee,
    int? jejuDeliveryFee,

    String? deliveryMethod,

    String? rejectionReason,
    String? rejectionReasonDetail,
    int? claimId,

    required List<OrderDetailItemDto> items,

    OrderDetailDeliveryDto? delivery,
    OrderDetailPaymentDto? payment,

    bool? isReviewable,

    @LocalDateTimeConverter() required DateTime createdAt,
    @LocalDateTimeConverter() required DateTime updatedAt,
  }) = _OrderDetailDto;

  factory OrderDetailDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailDtoFromJson(json);
}

@freezed
abstract class OrderDetailItemDto with _$OrderDetailItemDto {
  const factory OrderDetailItemDto({
    required int id,
    required int productId,
    required String thumbnailImageUrl,
    required String productName,
    required int productOptionId,
    required String optionName,
    required int unitPrice,
    required int quantity,
    required int totalPrice,
    required bool isTaxable,
  }) = _OrderDetailItemDto;

  factory OrderDetailItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailItemDtoFromJson(json);
}

@freezed
abstract class OrderDetailDeliveryDto with _$OrderDetailDeliveryDto {
  const factory OrderDetailDeliveryDto({
    @JsonKey(
      fromJson: OrderDeliveryStatus.fromJson,
      toJson: OrderDeliveryStatus.toJson,
    )
    required OrderDeliveryStatus status,
    String? courierCode,
    String? courierName,
    String? trackingNumber,
    @NullableLocalDateTimeConverter() DateTime? shippedAt,
    @NullableLocalDateTimeConverter() DateTime? deliveredAt,
  }) = _OrderDetailDeliveryDto;

  factory OrderDetailDeliveryDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailDeliveryDtoFromJson(json);
}

@freezed
abstract class OrderDetailPaymentDto with _$OrderDetailPaymentDto {
  const factory OrderDetailPaymentDto({
    required int paymentId,
    required String paymentCode,
    @JsonKey(
      fromJson: OrderPaymentMethod.fromJson,
      toJson: OrderPaymentMethod.toJson,
    )
    required OrderPaymentMethod paymentMethod,
    @JsonKey(
      fromJson: OrderPaymentStatus.fromJson,
      toJson: OrderPaymentStatus.toJson,
    )
    required OrderPaymentStatus status,

    @NullableLocalDateTimeConverter() DateTime? paidAt,

    int? cancelledAmount,
    int? netAmount,

    String? receiptUrl,
    String? approvalNumber,

    String? cardType,
    String? cardName,
    String? cardNum,
    int? cardQuota,
    bool? isInterestFree,

    String? vbankNumber,
    String? vbankName,
    @NullableLocalDateTimeConverter() DateTime? vbankExpDate,
    String? vbankHolder,
  }) = _OrderDetailPaymentDto;

  factory OrderDetailPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailPaymentDtoFromJson(json);
}
