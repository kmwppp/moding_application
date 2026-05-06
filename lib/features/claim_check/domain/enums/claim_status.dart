enum ClaimStatus {
  requested('REQUESTED', '클레임접수'),
  approved('APPROVED', '클레임승인'),
  reshipShipped('RESHIP_SHIPPED', '재배송발송'),
  rejected('REJECTED', '클레임거절'),
  appealed('APPEALED', '이의신청'),
  completed('COMPLETED', '처리완료');

  const ClaimStatus(this.code, this.label);

  final String code;
  final String label;

  static ClaimStatus fromJson(String value) {
    return ClaimStatus.values.firstWhere(
      (status) => status.code == value,
      orElse: () => ClaimStatus.requested,
    );
  }

  static String toJson(ClaimStatus value) => value.code;
}
