import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentCompleteMethod {
  @JsonValue('CARD')
  card,
  @JsonValue('VIRTUAL_ACCOUNT')
  virtualAccount,
}

extension PaymentCompleteMethodX on PaymentCompleteMethod {
  String get label {
    switch (this) {
      case PaymentCompleteMethod.card:
        return "카드결제";
      case PaymentCompleteMethod.virtualAccount:
        return "가상계좌";
    }
  }
}
