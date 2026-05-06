enum EasyPaymentsMethod { naverpayCard, kakaopayCard }

extension EasyPaymentsMethodX on EasyPaymentsMethod {
  String get label {
    switch (this) {
      case EasyPaymentsMethod.naverpayCard:
        return "네이버페이";
      case EasyPaymentsMethod.kakaopayCard:
        return "카카오페이";
    }
  }
}
