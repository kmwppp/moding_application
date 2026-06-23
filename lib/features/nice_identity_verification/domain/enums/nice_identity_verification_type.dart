enum NiceIdentityVerificationType {
  general('GENERAL'),
  accountMatch('ACCOUNT_MATCH'),
  alcohol('ALCOHOL');

  const NiceIdentityVerificationType(this.code);

  final String code;
}
