import 'package:flutter/material.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

import '../../constants/app_colors.dart';

class CommonDialog extends StatelessWidget {
  final bool isSuccess;
  final String title;
  final String? message;
  final String buttonText;
  final VoidCallback? onPressed;

  const CommonDialog({
    super.key,
    this.isSuccess = true,
    required this.title,
    this.message,
    this.buttonText = "확인",
    this.onPressed,
  });

  // 호출을 간편하게 하기 위한 static 메서드
  static Future<void> show(
    BuildContext context, {
    required String title,
    bool isSuccess = true,
    String? message,
    String buttonText = "확인",
    VoidCallback? onPressed,
  }) {
    return showDialog(
      context: context,
      builder: (context) => CommonDialog(
        isSuccess: isSuccess,
        title: title,
        message: message,
        buttonText: buttonText,
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(24),
        // color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: context.titleMedium.copyWith(
                color: isSuccess ? AppColors.primary : AppColors.pointColor,
              ),
              textAlign: TextAlign.center,
            ),
            if (message != null) ...[
              const SizedBox(height: 24),
              Text(
                message!,
                style: context.body.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // 다이얼로그 닫기
                if (onPressed != null) onPressed!(); // 추가 액션 실행
              },
              child: SizedBox(
                width: double.infinity, // 버튼을 가로로 꽉 차게
                height: 32,
                child: CustomButton(
                  title: buttonText,
                  boxColor: AppColors.primary,
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
