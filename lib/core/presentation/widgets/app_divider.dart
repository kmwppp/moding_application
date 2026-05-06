import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key, this.height = 10});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: AppColors.lightGrey,
    );
  }
}
