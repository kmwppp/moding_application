import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/confirm_button.dart';
import 'package:moding_application/core/presentation/widgets/input_widget.dart';
import 'package:moding_application/features/login/presentation/providers/login_viewmodel.dart';
import 'package:moding_application/features/login/presentation/screens/widgets/login_help_area.dart';

import '../../../../core/presentation/widgets/appbar_profile.dart';

class LoginPageMain extends ConsumerWidget {
  const LoginPageMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String logoPath = "assets/images/logo.png";
    final notifier = ref.read(loginViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBarProfile(title: "로그인"),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // 로고 이미지
          Positioned(
            top: 100,
            child: Center(
              child: Image.asset(logoPath, width: 100, height: 100),
            ),
          ),
          // 로그인 정보 입력란
          _loginInputSection(context),
        ],
      ),
    );
  }

  Column _loginInputSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 14,
      children: [
        InputWidget(
          inputTitle: '아이디',
          inputHint: '아이디를 입력하세요.',
          paddingH: 20,
          onChanged: (String value) {},
        ),
        InputWidget(
          inputTitle: '비밀번호',
          inputHint: '비밀번호를 입력하세요.',
          paddingH: 20,
          onChanged: (String value) {},
        ),
        SizedBox(height: 10),
        ConfirmButton(buttonTitle: "로그인", paddingH: 20),
        GestureDetector(
          onTap: () {
            context.push('/signup/step1');
          },
          child: ConfirmButton(buttonTitle: "회원가입", paddingH: 20),
        ),
        _bottomSection(),
      ],
    );
  }

  Widget _bottomSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 6,
        children: [
          Container(
            color: AppColors.dividerGrey,
            width: double.infinity,
            height: 1,
          ),
          LoginHelpArea(content: "회원정보가 기억나지 않나요?", accentContent: "회원정보 찾기"),
        ],
      ),
    );
  }

  Center _testMainButton(LoginViewModel notifier) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          notifier.changeUserId(userId: "testuser03");
          notifier.changeUserPassword(userPassword: "TestPassword123!");
          notifier.login();
        },
        child: Text("로그인"),
      ),
    );
  }
}
