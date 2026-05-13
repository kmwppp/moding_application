import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_text_styles.dart';

class LoginHelpArea extends StatelessWidget {
  const LoginHelpArea({
    super.key,
    required this.content,
    required this.accentContent1,
    required this.accentContent2,
  });

  final String content;
  final String accentContent1;
  final String accentContent2;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        Row(
          spacing: 6,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(content, style: context.caption),
            InkWell(
              onTap: () {
                context.push('/find_id');
              },
              child: Text(
                accentContent1,
                style: context.caption.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationThickness: 1,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                context.push('/find_pw');
              },
              child: Text(
                accentContent2,
                style: context.caption.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationThickness: 1,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
