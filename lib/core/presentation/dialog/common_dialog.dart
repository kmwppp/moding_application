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
  final String? secondaryButtonText;
  final VoidCallback? onSecondaryPressed;

  const CommonDialog({
    super.key,
    this.isSuccess = true,
    required this.title,
    this.message,
    this.buttonText = "확인",
    this.onPressed,
    this.secondaryButtonText,
    this.onSecondaryPressed,
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

  static Future<bool?> showChoice(
    BuildContext context, {
    required String title,
    bool isSuccess = true,
    String? message,
    String primaryButtonText = "확인",
    String secondaryButtonText = "취소",
    VoidCallback? onPrimaryPressed,
    VoidCallback? onSecondaryPressed,
  }) {
    return showDialog<bool>(
      context: context,
      builder: (context) => CommonDialog(
        isSuccess: isSuccess,
        title: title,
        message: message,
        buttonText: primaryButtonText,
        onPressed: onPrimaryPressed,
        secondaryButtonText: secondaryButtonText,
        onSecondaryPressed: onSecondaryPressed,
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
            if (secondaryButtonText == null)
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  if (onPressed != null) onPressed!();
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 32,
                  child: CustomButton(
                    title: buttonText,
                    boxColor: AppColors.primary,
                    textColor: Colors.white,
                  ),
                ),
              )
            else
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context, false);
                        if (onSecondaryPressed != null) onSecondaryPressed!();
                      },
                      child: SizedBox(
                        height: 32,
                        child: CustomButton(
                          title: secondaryButtonText!,
                          boxColor: Colors.white,
                          textColor: AppColors.darkGrey,
                          borderColor: AppColors.mediumGrey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context, true);
                        if (onPressed != null) onPressed!();
                      },
                      child: SizedBox(
                        height: 32,
                        child: CustomButton(
                          title: buttonText,
                          boxColor: AppColors.primary,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
