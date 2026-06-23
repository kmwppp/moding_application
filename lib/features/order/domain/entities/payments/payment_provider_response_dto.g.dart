// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_provider_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentProviderResponseWrapper _$PaymentProviderResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _PaymentProviderResponseWrapper(
  data: PaymentProviderResponseDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PaymentProviderResponseWrapperToJson(
  _PaymentProviderResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_PaymentProviderResponseDto _$PaymentProviderResponseDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentProviderResponseDto(
  pgProvider: _pgProviderFromJson(json['pgProvider'] as String?),
);

Map<String, dynamic> _$PaymentProviderResponseDtoToJson(
  _PaymentProviderResponseDto instance,
) => <String, dynamic>{'pgProvider': _pgProviderToJson(instance.pgProvider)};
