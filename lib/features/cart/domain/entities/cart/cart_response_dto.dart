import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'cart_response_dto.freezed.dart';
part 'cart_response_dto.g.dart';

@freezed
abstract class CartResponseDto with _$CartResponseDto {
  const factory CartResponseDto({required List<CartItemDto> data}) =
      _CartResponseDto;

  factory CartResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CartResponseDtoFromJson(json);
}

@freezed
abstract class CartItemDto with _$CartItemDto {
  const factory CartItemDto({
    required int cartItemId,
    required int productId,
    required String productName,
    required String thumbnailUrl,
    required int sellerProfileId,
    required String storageMethod,
    required int deliveryDays,
    required int shippingFee,
    int? freeShippingThreshold,
    @LocalDateTimeConverter() required DateTime createdAt,
    required List<CartItemOptionDto> options,
    required int productTotalPrice,
  }) = _CartItemDto;

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);
}

@freezed
abstract class CartItemOptionDto with _$CartItemOptionDto {
  const factory CartItemOptionDto({
    required int cartItemOptionId,
    required int productOptionId,
    required String optionName,
    required int unitPrice,
    required int quantity,
    required int totalPrice,
    required int stockQuantity,
    required bool isUnavailable,
  }) = _CartItemOptionDto;

  factory CartItemOptionDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemOptionDtoFromJson(json);
}
