import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/app_sliver_appbar.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_box_styles.dart';
import '../../../../../core/theme/app_text_styles.dart';

class FindPwPage extends StatelessWidget {
  const FindPwPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "비밀번호 찾기"),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: AppBoxStyles.borderBox,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "비밀번호를 찾기 위해 본인인증이 필요합니다.",
                              style: context.bodyLarge.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            // SizedBox(height: 20),
                            // FindPwTextField(
                            //   label: '아이디',
                            //   hint: '아이디를 입력해주세요.',
                            //   onChanged: (String v) {},
                            // ),
                            SizedBox(height: 50),
                            GestureDetector(
                              onTap: () {
                                context.push('/find_pw/change_pw');
                              },
                              child: CustomButton(
                                title: '본인인증',
                                boxColor: AppColors.primary,
                                borderColor: AppColors.primary,
                                textColor: Colors.white,
                                paddingVertical: 6,
                                textStyle: context.body.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
