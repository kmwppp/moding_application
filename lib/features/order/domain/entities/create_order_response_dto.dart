import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'create_order_response_dto.freezed.dart';
part 'create_order_response_dto.g.dart';

@freezed
abstract class CreateOrderResponseDto with _$CreateOrderResponseDto {
  const factory CreateOrderResponseDto({
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

    required String status,

    int? totalAmount,
    int? deliveryFee,
    int? jejuDeliveryFee,

    String? deliveryMethod,

    String? rejectionReason,
    String? rejectionReasonDetail,

    required List<CreateOrderItemResponseDto> items,

    List<String>? productDeliveryMethods,

    CreateOrderDeliveryDto? delivery,

    CreateOrderPaymentDto? payment,

    @LocalDateTimeConverter() required DateTime createdAt,
    @LocalDateTimeConverter() required DateTime updatedAt,
  }) = _CreateOrderResponseDto;

  factory CreateOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseDtoFromJson(json);
}

@freezed
abstract class CreateOrderItemResponseDto with _$CreateOrderItemResponseDto {
  const factory CreateOrderItemResponseDto({
    required int id,
    required int productId,
    required String productName,
    required int productOptionId,
    required String optionName,
    required int unitPrice,
    required int quantity,
    required int totalPrice,
    required bool isTaxable,
  }) = _CreateOrderItemResponseDto;

  factory CreateOrderItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderItemResponseDtoFromJson(json);
}

@freezed
abstract class CreateOrderDeliveryDto with _$CreateOrderDeliveryDto {
  const factory CreateOrderDeliveryDto({
    required String status,
    required String courierCode,
    required String courierName,
    required String trackingNumber,
    @LocalDateTimeConverter() required DateTime shippedAt,
    @LocalDateTimeConverter() required DateTime deliveredAt,
  }) = _CreateOrderDeliveryDto;

  factory CreateOrderDeliveryDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDeliveryDtoFromJson(json);
}

@freezed
abstract class CreateOrderPaymentDto with _$CreateOrderPaymentDto {
  const factory CreateOrderPaymentDto({
    required String? paymentCode,
    required String? paymentMethod,
    required String? status,
    String? signature,
    String? timestamp,
    @NullableLocalDateTimeConverter() DateTime? paidAt,
    int? cancelledAmount,
    int? netAmount,
    String? receiptUrl,
    String? approvalNumber,
    String? vbankNumber,
    String? vbankName,
    @NullableLocalDateTimeConverter() DateTime? vbankExpDate,
    String? vbankHolder,
  }) = _CreateOrderPaymentDto;

  factory CreateOrderPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderPaymentDtoFromJson(json);
}
