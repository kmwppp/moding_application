// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_confirm_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentsConfirmRequestDto _$PaymentsConfirmRequestDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentsConfirmRequestDto(
  paymentKey: json['paymentKey'] as String,
  paymentCode: json['paymentCode'] as String,
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$PaymentsConfirmRequestDtoToJson(
  _PaymentsConfirmRequestDto instance,
) => <String, dynamic>{
  'paymentKey': instance.paymentKey,
  'paymentCode': instance.paymentCode,
  'amount': instance.amount,
};
