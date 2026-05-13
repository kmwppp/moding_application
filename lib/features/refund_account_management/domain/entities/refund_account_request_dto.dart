import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_account_request_dto.freezed.dart';
part 'refund_account_request_dto.g.dart';

@freezed
abstract class RefundAccountRequestDto with _$RefundAccountRequestDto {
  const factory RefundAccountRequestDto({
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
  }) = _RefundAccountRequestDto;

  factory RefundAccountRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RefundAccountRequestDtoFromJson(json);
}
