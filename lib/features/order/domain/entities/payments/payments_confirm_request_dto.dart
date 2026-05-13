import 'package:freezed_annotation/freezed_annotation.dart';

part 'payments_confirm_request_dto.freezed.dart';
part 'payments_confirm_request_dto.g.dart';

@freezed
abstract class PaymentsConfirmRequestDto with _$PaymentsConfirmRequestDto {
  const factory PaymentsConfirmRequestDto({
    required String paymentKey,
    required String paymentCode,
    required int amount,
  }) = _PaymentsConfirmRequestDto;

  factory PaymentsConfirmRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentsConfirmRequestDtoFromJson(json);
}
