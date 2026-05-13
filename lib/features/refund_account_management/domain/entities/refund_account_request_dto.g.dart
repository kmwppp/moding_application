// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_account_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefundAccountRequestDto _$RefundAccountRequestDtoFromJson(
  Map<String, dynamic> json,
) => _RefundAccountRequestDto(
  bankCode: json['bankCode'] as String,
  accountNumber: json['accountNumber'] as String,
  accountHolder: json['accountHolder'] as String,
);

Map<String, dynamic> _$RefundAccountRequestDtoToJson(
  _RefundAccountRequestDto instance,
) => <String, dynamic>{
  'bankCode': instance.bankCode,
  'accountNumber': instance.accountNumber,
  'accountHolder': instance.accountHolder,
};
