// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_account_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefundAccountResponseWrapper _$RefundAccountResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _RefundAccountResponseWrapper(
  data: RefundAccountResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RefundAccountResponseWrapperToJson(
  _RefundAccountResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_RefundAccountResponseDto _$RefundAccountResponseDtoFromJson(
  Map<String, dynamic> json,
) => _RefundAccountResponseDto(
  bankCode: json['bankCode'] as String,
  bankName: json['bankName'] as String,
  accountNumber: json['accountNumber'] as String,
  accountHolder: json['accountHolder'] as String,
);

Map<String, dynamic> _$RefundAccountResponseDtoToJson(
  _RefundAccountResponseDto instance,
) => <String, dynamic>{
  'bankCode': instance.bankCode,
  'bankName': instance.bankName,
  'accountNumber': instance.accountNumber,
  'accountHolder': instance.accountHolder,
};
