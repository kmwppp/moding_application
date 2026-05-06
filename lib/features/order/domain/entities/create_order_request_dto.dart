import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request_dto.freezed.dart';
part 'create_order_request_dto.g.dart';

@freezed
abstract class CreateOrderRequestDto with _$CreateOrderRequestDto {
  const factory CreateOrderRequestDto({
    required String idempotencyKey,
    required int deliveryAddressId,
    required String deliveryRequest,
    required List<OrderItemDto> items,
  }) = _CreateOrderRequestDto;

  factory CreateOrderRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestDtoFromJson(json);
}

@freezed
abstract class OrderItemDto with _$OrderItemDto {
  const factory OrderItemDto({
    required int productId,
    required int productOptionId,
    required int quantity,
  }) = _OrderItemDto;

  factory OrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDtoFromJson(json);
}
