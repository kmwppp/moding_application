import 'package:flutter/material.dart';

import '../../../../../core/theme/app_box_styles.dart';

class OrderCommonBox extends StatelessWidget {
  const OrderCommonBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: AppBoxStyles.borderBox,
        child: child,
      ),
    );
  }
}
