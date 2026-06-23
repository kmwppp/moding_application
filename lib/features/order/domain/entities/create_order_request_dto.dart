import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/order/domain/enums/pg_provider.dart';

part 'create_order_request_dto.freezed.dart';
part 'create_order_request_dto.g.dart';

PgProvider _pgProviderFromJson(String? value) => PgProvider.fromJson(value);
String _pgProviderToJson(PgProvider value) => value.toJson();

@freezed
abstract class CreateOrderRequestDto with _$CreateOrderRequestDto {
  const factory CreateOrderRequestDto({
    required String idempotencyKey,
    required int deliveryAddressId,
    required String deliveryRequest,
    @JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson)
    required PgProvider pgProvider,
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
