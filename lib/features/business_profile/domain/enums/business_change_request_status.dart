enum BusinessChangeRequestStatus {
  pending('PENDING'),
  approved('APPROVED'),
  rejected('REJECTED');

  const BusinessChangeRequestStatus(this.code);

  final String code;

  static BusinessChangeRequestStatus? fromCode(String? code) {
    if (code == null) return null;

    for (final value in BusinessChangeRequestStatus.values) {
      if (value.code == code) {
        return value;
      }
    }

    return null;
  }
}
