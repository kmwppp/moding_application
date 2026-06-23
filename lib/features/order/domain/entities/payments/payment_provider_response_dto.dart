import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/pg_provider.dart';

part 'payment_provider_response_dto.freezed.dart';
part 'payment_provider_response_dto.g.dart';

PgProvider _pgProviderFromJson(String? value) => PgProvider.fromJson(value);
String _pgProviderToJson(PgProvider value) => value.toJson();

@freezed
abstract class PaymentProviderResponseWrapper
    with _$PaymentProviderResponseWrapper {
  const factory PaymentProviderResponseWrapper({
    required PaymentProviderResponseDto data,
  }) = _PaymentProviderResponseWrapper;

  factory PaymentProviderResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$PaymentProviderResponseWrapperFromJson(json);
}

@freezed
abstract class PaymentProviderResponseDto with _$PaymentProviderResponseDto {
  const factory PaymentProviderResponseDto({
    @JsonKey(fromJson: _pgProviderFromJson, toJson: _pgProviderToJson)
    required PgProvider pgProvider,
  }) = _PaymentProviderResponseDto;

  factory PaymentProviderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentProviderResponseDtoFromJson(json);
}
