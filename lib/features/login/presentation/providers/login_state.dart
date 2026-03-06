class LoginState {
  final String userId;
  final String userPassword;

  LoginState({required this.userId, required this.userPassword});

  LoginState copyWith({String? userId, String? userPassword}) {
    return LoginState(
      userId: userId ?? this.userId,
      userPassword: userPassword ?? this.userPassword,
    );
  }

  factory LoginState.initial() {
    return LoginState(userId: "", userPassword: "");
  }
}
