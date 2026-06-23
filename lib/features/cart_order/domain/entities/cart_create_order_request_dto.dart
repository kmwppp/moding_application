import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/order/domain/enums/pg_provider.dart';

part 'cart_create_order_request_dto.freezed.dart';
part 'cart_create_order_request_dto.g.dart';

String? _pgProviderToJson(PgProvider? provider) {
  switch (provider) {
    case PgProvider.toss:
      return 'TOSS';
    case PgProvider.inicis:
      return 'INICIS';
    case null:
      return null;
  }
}

@freezed
abstract class CartCreateOrderRequestDto with _$CartCreateOrderRequestDto {
  const factory CartCreateOrderRequestDto({
    required String idempotencyKey,
    required List<int> cartItemIds,
    required int deliveryAddressId,
    required String deliveryRequest,
    @JsonKey(toJson: _pgProviderToJson) PgProvider? pgProvider,
  }) = _CartCreateOrderRequestDto;

  factory CartCreateOrderRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CartCreateOrderRequestDtoFromJson(json);
}
