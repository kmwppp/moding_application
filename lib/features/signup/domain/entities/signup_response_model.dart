class SignupResponseModel {
  final bool success;
  final String message;
  final String? code;

  // 만약 내부 data가 궁금하지 않다면 일단 dynamic으로 두거나 생략 가능합니다.
  final dynamic data;

  SignupResponseModel({
    required this.success,
    required this.message,
    this.code,
    this.data,
  });

  // JSON으로부터 모델을 만드는 팩토리 메서드 (중요!)
  factory SignupResponseModel.fromJson(Map<String, dynamic> json) {
    return SignupResponseModel(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      code: json['code'],
      data: json['data'],
    );
  }
}
