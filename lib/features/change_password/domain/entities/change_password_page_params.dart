class ChangePasswordPageParams {
  const ChangePasswordPageParams({
    this.identityKey,
    this.isLoginGateReset = false,
  });

  final String? identityKey;
  final bool isLoginGateReset;
}
