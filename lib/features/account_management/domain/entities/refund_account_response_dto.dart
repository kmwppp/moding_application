import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_account_response_dto.freezed.dart';
part 'refund_account_response_dto.g.dart';

@freezed
abstract class RefundAccountResponseWrapper
    with _$RefundAccountResponseWrapper {
  const factory RefundAccountResponseWrapper({
    required RefundAccountResponseDto data,
  }) = _RefundAccountResponseWrapper;

  factory RefundAccountResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$RefundAccountResponseWrapperFromJson(json);
}

@freezed
abstract class RefundAccountResponseDto with _$RefundAccountResponseDto {
  const factory RefundAccountResponseDto({
    required String bankCode,
    required String bankName,
    required String accountNumber,
    required String accountHolder,
  }) = _RefundAccountResponseDto;

  factory RefundAccountResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RefundAccountResponseDtoFromJson(json);
}
