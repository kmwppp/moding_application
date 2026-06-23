import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'cart_create_order_response_dto.freezed.dart';
part 'cart_create_order_response_dto.g.dart';

@freezed
abstract class CartCreateOrderResponseWrapper
    with _$CartCreateOrderResponseWrapper {
  const factory CartCreateOrderResponseWrapper({
    required bool success,
    required CartCreateOrderResponseDto? data,
  }) = _CartCreateOrderResponseWrapper;

  factory CartCreateOrderResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$CartCreateOrderResponseWrapperFromJson(json);
}

@freezed
abstract class CartCreateOrderResponseDto with _$CartCreateOrderResponseDto {
  const factory CartCreateOrderResponseDto({
    required List<CartCreateOrderDto> orders,
    CartCreateOrderPaymentDto? payment,
  }) = _CartCreateOrderResponseDto;

  factory CartCreateOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CartCreateOrderResponseDtoFromJson(json);
}

@freezed
abstract class CartCreateOrderDto with _$CartCreateOrderDto {
  const factory CartCreateOrderDto({
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

    // ✅ 이름 수정
    int? jejuDeliveryFee,

    String? deliveryMethod,

    String? rejectionReason,
    String? rejectionReasonDetail,

    required List<CartCreateOrderItemDto> items,

    List<String>? productDeliveryMethods,

    CartCreateOrderDeliveryDto? delivery,

    // ✅ 추가
    CartCreateOrderPaymentDto? payment,

    @LocalDateTimeConverter() required DateTime createdAt,
    @LocalDateTimeConverter() required DateTime updatedAt,
  }) = _CartCreateOrderDto;

  factory CartCreateOrderDto.fromJson(Map<String, dynamic> json) =>
      _$CartCreateOrderDtoFromJson(json);
}

@freezed
abstract class CartCreateOrderItemDto with _$CartCreateOrderItemDto {
  const factory CartCreateOrderItemDto({
    required int id,
    required int productId,
    required String productName,
    required int productOptionId,
    required String optionName,
    required int unitPrice,
    required int quantity,
    required int totalPrice,
    required bool isTaxable,
  }) = _CartCreateOrderItemDto;

  factory CartCreateOrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartCreateOrderItemDtoFromJson(json);
}

@freezed
abstract class CartCreateOrderDeliveryDto with _$CartCreateOrderDeliveryDto {
  const factory CartCreateOrderDeliveryDto({
    required String status,
    required String courierCode,
    required String courierName,
    required String trackingNumber,
    @LocalDateTimeConverter() required DateTime shippedAt,
    @LocalDateTimeConverter() required DateTime deliveredAt,
  }) = _CartCreateOrderDeliveryDto;

  factory CartCreateOrderDeliveryDto.fromJson(Map<String, dynamic> json) =>
      _$CartCreateOrderDeliveryDtoFromJson(json);
}

@freezed
abstract class CartCreateOrderPaymentDto with _$CartCreateOrderPaymentDto {
  const factory CartCreateOrderPaymentDto({
    required String? paymentCode,
    String? paymentMethod,
    String? status,
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
  }) = _CartCreateOrderPaymentDto;

  factory CartCreateOrderPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$CartCreateOrderPaymentDtoFromJson(json);
}
