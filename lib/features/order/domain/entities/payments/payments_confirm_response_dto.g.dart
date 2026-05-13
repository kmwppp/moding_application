// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_confirm_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentsConfirmResponseWrapper _$PaymentsConfirmResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _PaymentsConfirmResponseWrapper(
  data: PaymentsConfirmResponseDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PaymentsConfirmResponseWrapperToJson(
  _PaymentsConfirmResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_PaymentsConfirmResponseDto _$PaymentsConfirmResponseDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentsConfirmResponseDto(paymentId: (json['paymentId'] as num).toInt());

Map<String, dynamic> _$PaymentsConfirmResponseDtoToJson(
  _PaymentsConfirmResponseDto instance,
) => <String, dynamic>{'paymentId': instance.paymentId};
