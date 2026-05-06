import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_request_dto.freezed.dart';
part 'order_request_dto.g.dart';

@freezed
abstract class OrderRequestDto with _$OrderRequestDto {
  const factory OrderRequestDto({required List<OrderItemRequestDto> items}) =
      _OrderRequestDto;

  factory OrderRequestDto.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestDtoFromJson(json);
}

@freezed
abstract class OrderItemRequestDto with _$OrderItemRequestDto {
  const factory OrderItemRequestDto({
    required int productId,
    required int productOptionId,
    required int quantity,
  }) = _OrderItemRequestDto;

  factory OrderItemRequestDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemRequestDtoFromJson(json);
}
