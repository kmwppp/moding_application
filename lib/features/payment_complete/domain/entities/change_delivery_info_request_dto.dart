import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_delivery_info_request_dto.freezed.dart';
part 'change_delivery_info_request_dto.g.dart';

@freezed
abstract class ChangeDeliveryInfoRequestDto
    with _$ChangeDeliveryInfoRequestDto {
  const factory ChangeDeliveryInfoRequestDto({
    required int deliveryAddressId,
    required String deliveryRequest,
  }) = _ChangeDeliveryInfoRequestDto;

  factory ChangeDeliveryInfoRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ChangeDeliveryInfoRequestDtoFromJson(json);
}
