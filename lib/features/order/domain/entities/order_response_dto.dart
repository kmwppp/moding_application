import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_dto.dart';
import 'create_order_response_dto.dart';

part 'order_response_dto.freezed.dart';
part 'order_response_dto.g.dart';

@freezed
abstract class OrderResponseDto with _$OrderResponseDto {
  const factory OrderResponseDto({
    String? customerKey,
    String? customerName,
    required int productId,
    required String productName,
    required String thumbnailImageUrl,
    required List<OrderItemDto> items,
    required int productAmount,
    required int deliveryFee,
    required int jejuDeliveryFee,
    required int totalAmount,
    required bool isWeekendShipping,
    required int deliveryDays,
    required int shippingLeadTime,
    required bool isSameDayShipping,
    required String shippingCutoffTime,
    required AddressDto deliveryAddress,
  }) = _OrderResponseDto;

  factory OrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseDtoFromJson(json);
}

@freezed
abstract class OrderItemDto with _$OrderItemDto {
  const factory OrderItemDto({
    required int productOptionId,
    required String optionName,
    required int quantity,
    required int unitPrice,
    required int itemAmount,
  }) = _OrderItemDto;

  factory OrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDtoFromJson(json);
}

@freezed
abstract class CreateOrderResponseWrapper with _$CreateOrderResponseWrapper {
  const factory CreateOrderResponseWrapper({
    required bool success,
    required CreateOrderResponseDto? data,
  }) = _CreateOrderResponseWrapper;

  factory CreateOrderResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseWrapperFromJson(json);
}
