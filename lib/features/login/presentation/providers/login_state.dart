class LoginState {
  final String userId;
  final String userPassword;
  final bool isSubmitting;

  LoginState({
    required this.userId,
    required this.userPassword,
    required this.isSubmitting,
  });

  LoginState copyWith({
    String? userId,
    String? userPassword,
    bool? isSubmitting,
  }) {
    return LoginState(
      userId: userId ?? this.userId,
      userPassword: userPassword ?? this.userPassword,
      isSubmitting: isSubmitting ?? this.isSubmitting,
    );
  }

  factory LoginState.initial() {
    return LoginState(userId: "", userPassword: "", isSubmitting: false);
  }
}
