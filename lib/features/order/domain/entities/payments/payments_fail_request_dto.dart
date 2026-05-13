import 'package:freezed_annotation/freezed_annotation.dart';

part 'payments_fail_request_dto.freezed.dart';
part 'payments_fail_request_dto.g.dart';

@freezed
abstract class PaymentsFailRequestDto with _$PaymentsFailRequestDto {
  const factory PaymentsFailRequestDto({
    required String paymentCode,
    required String errorCode,
    required String errorMessage,
  }) = _PaymentsFailRequestDto;

  factory PaymentsFailRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentsFailRequestDtoFromJson(json);
}
