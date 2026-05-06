import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

import '../enums/payment_complete_method.dart';
import '../enums/payment_complete_status.dart';

part 'payment_complete_response_dto.freezed.dart';
part 'payment_complete_response_dto.g.dart';

@freezed
abstract class PaymentCompleteResponseWrapper
    with _$PaymentCompleteResponseWrapper {
  const factory PaymentCompleteResponseWrapper({
    required PaymentCompleteResponseDto data,
  }) = _PaymentCompleteResponseWrapper;

  factory PaymentCompleteResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$PaymentCompleteResponseWrapperFromJson(json);
}

@freezed
abstract class PaymentCompleteResponseDto with _$PaymentCompleteResponseDto {
  const factory PaymentCompleteResponseDto({
    required int id,
    required String paymentCode,

    required int totalProductAmount,
    required int totalDeliveryFee,
    required int totalJejuDeliveryFee,
    required int amount,

    required PaymentCompleteMethod paymentMethod,
    required PaymentCompleteStatus status,

    required List<PaymentOrderDto> orders,

    String? pgTransactionId,
    String? receiptUrl,

    String? approvalNumber,

    String? cardType,
    String? cardName,
    String? cardNum,
    int? cardQuote,
    bool? isInterestFree,

    String? vbankNumber,
    String? vbankName,
    @NullableLocalDateTimeConverter() DateTime? vbankExpDate,
    String? vbankHolder,

    @NullableLocalDateTimeConverter() DateTime? paidAt,
    @NullableLocalDateTimeConverter() DateTime? cancelledAt,

    @LocalDateTimeConverter() required DateTime createdAt,
  }) = _PaymentCompleteResponseDto;

  factory PaymentCompleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentCompleteResponseDtoFromJson(json);
}

@freezed
abstract class PaymentOrderDto with _$PaymentOrderDto {
  const factory PaymentOrderDto({
    required int orderId,
    required String orderCode,
    required String status,

    String? sellerBusinessName,

    required int productAmount,
    required int deliveryFee,
    required int jejuDeliveryFee,
    required int totalAmount,

    int? shippingLeadTime,
    String? shippingCutoffTime,
    int? deliveryDays,

    required PaymentDeliveryAddressDto deliveryAddress,

    required String deliveryRequest,

    required List<PaymentOrderItemDto> items,

    required bool isSameDayShipping,
    required bool isWeekendShipping,
  }) = _PaymentOrderDto;

  factory PaymentOrderDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentOrderDtoFromJson(json);
}

@freezed
abstract class PaymentDeliveryAddressDto with _$PaymentDeliveryAddressDto {
  const factory PaymentDeliveryAddressDto({
    required int deliveryAddressId,
    required String addressName,
    required String recipientName,
    required String zipCode,
    required String address,
    required String addressDetail,
    required String phone,
  }) = _PaymentDeliveryAddressDto;

  factory PaymentDeliveryAddressDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDeliveryAddressDtoFromJson(json);
}

@freezed
abstract class PaymentOrderItemDto with _$PaymentOrderItemDto {
  const factory PaymentOrderItemDto({
    required int productId,
    required String productName,
    required String optionName,
    required int unitPrice,
    required int quantity,
    required int totalPrice,
    String? thumbnailUrl,
  }) = _PaymentOrderItemDto;

  factory PaymentOrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentOrderItemDtoFromJson(json);
}
