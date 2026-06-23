enum CartUnavailableReason {
  stopped('STOPPED', '판매중지'),
  pendingApproval('PENDING_APPROVAL', '승인대기'),
  soldOut('SOLD_OUT', '품절');

  const CartUnavailableReason(this.value, this.label);

  final String value;
  final String label;

  static CartUnavailableReason? fromJson(String? value) {
    if (value == null) return null;

    for (final reason in CartUnavailableReason.values) {
      if (reason.value == value) {
        return reason;
      }
    }

    return null;
  }

  static String? toJson(CartUnavailableReason? reason) => reason?.value;
}
