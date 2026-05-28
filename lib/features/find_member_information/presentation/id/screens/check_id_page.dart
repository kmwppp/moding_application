import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/appbar_profile.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

class CheckIdPage extends StatelessWidget {
  const CheckIdPage({super.key, required this.loginId});

  final String loginId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarProfile(title: '아이디 확인'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: AppBoxStyles.borderBox,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '회원님의 아이디를 찾았습니다.',
                      style: context.bodyLarge.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      loginId,
                      style: context.titleMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (context.canPop()) {
                    context.pop();
                    return;
                  }
                  context.go('/login');
                },
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    title: '로그인으로 돌아가기',
                    boxColor: AppColors.primary,
                    textColor: Colors.white,
                    textStyle: context.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    paddingVertical: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
