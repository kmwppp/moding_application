enum PaymentsMethod { vbank, card, easy }

extension PaymentMethodX on PaymentsMethod {
  String get label {
    switch (this) {
      case PaymentsMethod.vbank:
        return "가상계좌";
      case PaymentsMethod.card:
        return "카드결제";
      case PaymentsMethod.easy:
        return "간편결제";
    }
  }
}
