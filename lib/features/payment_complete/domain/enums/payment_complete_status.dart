import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentCompleteStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('PAID')
  paid,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('REFUNDED')
  refunded,
  unknown,
}

extension PaymentCompleteStatusX on PaymentCompleteStatus {
  String get label {
    switch (this) {
      case PaymentCompleteStatus.pending:
        return "결제대기";
      case PaymentCompleteStatus.paid:
        return "결제완료";
      case PaymentCompleteStatus.cancelled:
        return "결제취소";
      case PaymentCompleteStatus.refunded:
        return "환불완료";
      case PaymentCompleteStatus.unknown:
        return "에러";
    }
  }
}
