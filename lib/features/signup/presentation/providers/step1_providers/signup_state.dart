class SignupState {
  // Step1
  final String id;
  final String password;
  final String confirmPassword;

  final bool visibleSuccessCaptionId;
  final bool visibleSuccessCaptionPw;
  final bool visibleSuccessCaptionConfirmPw;

  final bool visibleWarningCaptionId;
  final bool visibleWarningCaptionPw;
  final bool visibleWarningCaptionConfirmPw;

  SignupState({
    required this.id,
    required this.password,
    required this.confirmPassword,

    required this.visibleSuccessCaptionId,
    required this.visibleSuccessCaptionPw,
    required this.visibleSuccessCaptionConfirmPw,

    required this.visibleWarningCaptionId,
    required this.visibleWarningCaptionPw,
    required this.visibleWarningCaptionConfirmPw,
  });

  SignupState copyWith({
    String? id,
    String? password,
    String? confirmPassword,
    bool? visibleSuccessCaptionId,
    bool? visibleSuccessCaptionPw,
    bool? visibleSuccessCaptionConfirmPw,
    bool? visibleWarningCaptionId,
    bool? visibleWarningCaptionPw,
    bool? visibleWarningCaptionConfirmPw,
  }) {
    return SignupState(
      id: id ?? this.id,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      visibleSuccessCaptionId:
          visibleSuccessCaptionId ?? this.visibleSuccessCaptionId,
      visibleSuccessCaptionPw:
          visibleSuccessCaptionPw ?? this.visibleSuccessCaptionPw,
      visibleSuccessCaptionConfirmPw:
          visibleSuccessCaptionConfirmPw ?? this.visibleSuccessCaptionConfirmPw,
      visibleWarningCaptionId:
          visibleWarningCaptionId ?? this.visibleWarningCaptionId,
      visibleWarningCaptionPw:
          visibleWarningCaptionPw ?? this.visibleWarningCaptionPw,
      visibleWarningCaptionConfirmPw:
          visibleWarningCaptionConfirmPw ?? this.visibleWarningCaptionConfirmPw,
    );
  }

  factory SignupState.initial() {
    return SignupState(
      id: "",
      password: "",
      confirmPassword: "",
      visibleSuccessCaptionId: false,
      visibleSuccessCaptionPw: false,
      visibleSuccessCaptionConfirmPw: false,
      visibleWarningCaptionId: false,
      visibleWarningCaptionPw: false,
      visibleWarningCaptionConfirmPw: false,
    );
  }
}
