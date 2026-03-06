import 'package:flutter/material.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';

class SignupStep2Box extends StatelessWidget {
  final Widget child;

  const SignupStep2Box({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.maxFinite,
        decoration: AppBoxStyles.borderBox,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
          child: child,
        ),
      ),
    );
  }
}
