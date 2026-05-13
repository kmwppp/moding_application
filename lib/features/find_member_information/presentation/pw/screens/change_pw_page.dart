import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_text_styles.dart';

class ChangePwPage extends StatelessWidget {
  const ChangePwPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).popUntil(ModalRoute.withName('/login'));
                },
                child: CustomButton(
                  title: '비밀번호 변경',
                  boxColor: AppColors.primary,
                  borderColor: AppColors.primary,
                  textColor: Colors.white,
                  paddingVertical: 6,
                  textStyle: context.body.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "비밀번호 변경"),

            SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PaymentCompleteCommonBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ChangePwTextField(
                            label: '아이디',
                            hint: '아이디를 입력해주세요.',
                            onChanged: (String v) {},
                          ),
                          SizedBox(height: 10),
                          ChangePwTextField(
                            label: '새 비밀번호',
                            hint: '새 비밀번호를 입력해주세요.',
                            onChanged: (String v) {},
                          ),
                          SizedBox(height: 10),
                          ChangePwTextField(
                            label: '새 비밀번호 확인',
                            hint: '새 비밀번호를 한번더 입력해주세요.',
                            onChanged: (String v) {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangePwTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;
  final TextInputType inputType;
  final List<TextInputFormatter> inputFormatters;
  final ValueChanged<String> onChanged;

  const ChangePwTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.onChanged,
    this.obscureText = false,
    this.inputType = TextInputType.text,
    this.inputFormatters = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: context.body),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.dividerGrey),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextField(
            obscureText: obscureText,
            keyboardType: inputType,
            inputFormatters: inputFormatters,
            onChanged: onChanged,
            style: context.body,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              hintText: hint,
              hintStyle: context.body.copyWith(color: AppColors.darkGrey),
            ),
          ),
        ),
      ],
    );
  }
}
