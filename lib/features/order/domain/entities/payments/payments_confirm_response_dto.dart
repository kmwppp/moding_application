import 'package:freezed_annotation/freezed_annotation.dart';

part 'payments_confirm_response_dto.freezed.dart';
part 'payments_confirm_response_dto.g.dart';

@freezed
abstract class PaymentsConfirmResponseWrapper
    with _$PaymentsConfirmResponseWrapper {
  const factory PaymentsConfirmResponseWrapper({
    required PaymentsConfirmResponseDto data,
  }) = _PaymentsConfirmResponseWrapper;

  factory PaymentsConfirmResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$PaymentsConfirmResponseWrapperFromJson(json);
}

@freezed
abstract class PaymentsConfirmResponseDto with _$PaymentsConfirmResponseDto {
  const factory PaymentsConfirmResponseDto({required int paymentId}) =
      _PaymentsConfirmResponseDto;

  factory PaymentsConfirmResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentsConfirmResponseDtoFromJson(json);
}
