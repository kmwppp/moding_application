import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_create_order_request_dto.freezed.dart';
part 'cart_create_order_request_dto.g.dart';

@freezed
abstract class CartCreateOrderRequestDto with _$CartCreateOrderRequestDto {
  const factory CartCreateOrderRequestDto({
    required String idempotencyKey,
    required List<int> cartItemIds,
    required int deliveryAddressId,
    required String deliveryRequest,
  }) = _CartCreateOrderRequestDto;

  factory CartCreateOrderRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CartCreateOrderRequestDtoFromJson(json);
}
