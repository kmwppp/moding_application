enum SellerTaxType { general, simplified, exempt }

extension SellerTaxTypeX on SellerTaxType {
  String get label {
    switch (this) {
      case SellerTaxType.general:
        return '일반과세';
      case SellerTaxType.simplified:
        return '간이과세';
      case SellerTaxType.exempt:
        return '면세';
    }
  }

  String get code {
    switch (this) {
      case SellerTaxType.general:
        return 'GENERAL';
      case SellerTaxType.simplified:
        return 'SIMPLIFIED';
      case SellerTaxType.exempt:
        return 'EXEMPT';
    }
  }
}
