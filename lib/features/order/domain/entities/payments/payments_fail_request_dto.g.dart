// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_fail_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentsFailRequestDto _$PaymentsFailRequestDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentsFailRequestDto(
  paymentCode: json['paymentCode'] as String,
  errorCode: json['errorCode'] as String,
  errorMessage: json['errorMessage'] as String,
);

Map<String, dynamic> _$PaymentsFailRequestDtoToJson(
  _PaymentsFailRequestDto instance,
) => <String, dynamic>{
  'paymentCode': instance.paymentCode,
  'errorCode': instance.errorCode,
  'errorMessage': instance.errorMessage,
};
