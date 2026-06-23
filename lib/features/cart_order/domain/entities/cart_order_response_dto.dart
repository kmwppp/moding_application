import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_order_response_dto.freezed.dart';
part 'cart_order_response_dto.g.dart';

@freezed
abstract class CartOrderResponseDto with _$CartOrderResponseDto {
  const factory CartOrderResponseDto({required CartOrderData data}) =
      _CartOrderResponseDto;

  factory CartOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CartOrderResponseDtoFromJson(json);
}

@freezed
abstract class CartOrderData with _$CartOrderData {
  const factory CartOrderData({
    String? customerKey,
    String? customerName,
    required DeliveryAddress deliveryAddress,
    required int totalProductAmount,
    required int totalDeliveryFee,
    required int totalJejuDeliveryFee,
    required int totalAmount,
    required List<ProductDto> products,
  }) = _CartOrderData;

  factory CartOrderData.fromJson(Map<String, dynamic> json) =>
      _$CartOrderDataFromJson(json);
}

@freezed
abstract class DeliveryAddress with _$DeliveryAddress {
  const factory DeliveryAddress({
    required int id,
    required String name,
    required String recipientName,
    required String zipCode,
    required String address,
    required String addressDetail,
    required String phone,
  }) = _DeliveryAddress;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressFromJson(json);
}

@freezed
abstract class ProductDto with _$ProductDto {
  const factory ProductDto({
    required int productId,
    required String productName,
    required String thumbnailImageUrl,
    required List<ProductItemDto> items,
    required int productAmount,
    required int deliveryFee,
    required int jejuDeliveryFee,
    required int totalAmount,
    required bool isWeekendShipping,
    required int deliveryDays,
    required int shippingLeadTime,
    required bool isSameDayShipping,
    required String shippingCutoffTime,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

@freezed
abstract class ProductItemDto with _$ProductItemDto {
  const factory ProductItemDto({
    required int productOptionId,
    required String optionName,
    required int quantity,
    required int unitPrice,
    required int itemAmount,
  }) = _ProductItemDto;

  factory ProductItemDto.fromJson(Map<String, dynamic> json) =>
      _$ProductItemDtoFromJson(json);
}
