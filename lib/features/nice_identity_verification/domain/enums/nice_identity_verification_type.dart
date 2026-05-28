enum NiceIdentityVerificationType {
  general('GENERAL'),
  accountMatch('ACCOUNT_MATCH');

  const NiceIdentityVerificationType(this.code);

  final String code;
}
