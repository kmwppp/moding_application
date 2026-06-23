import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';
import 'package:moding_application/features/cart/domain/enums/cart_unavailable_reason.dart';

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
    int? cartItemId,
    int? productId,
    String? productName,
    String? thumbnailUrl,
    int? sellerProfileId,
    String? storageMethod,
    int? deliveryDays,
    int? shippingFee,
    int? freeShippingThreshold,
    @NullableLocalDateTimeConverter() DateTime? createdAt,
    List<CartItemOptionDto>? options,
    int? productTotalPrice,
    bool? isAvailable,
    @JsonKey(
      fromJson: CartUnavailableReason.fromJson,
      toJson: CartUnavailableReason.toJson,
    )
    CartUnavailableReason? unavailableReason,
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
