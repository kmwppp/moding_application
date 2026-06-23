enum AlcoholBuyerStatus {
  none,
  pending,
  approved,
  rejected;

  static AlcoholBuyerStatus fromJson(String value) {
    switch (value) {
      case 'PENDING':
        return AlcoholBuyerStatus.pending;
      case 'APPROVED':
        return AlcoholBuyerStatus.approved;
      case 'REJECTED':
        return AlcoholBuyerStatus.rejected;
      case 'NONE':
      default:
        return AlcoholBuyerStatus.none;
    }
  }
}
