import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../theme/app_text_styles.dart';

class ConfirmButton extends StatelessWidget {
  final String buttonTitle;
  final double paddingH;
  final double paddingV;
  final double circleValue;
  final Color backgroudColor;

  const ConfirmButton({
    super.key,
    required this.buttonTitle,
    this.paddingH = 0,
    this.paddingV = 0,
    this.circleValue = 6,
    this.backgroudColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(circleValue),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 40,
          color: backgroudColor,
          child: Text(
            buttonTitle,
            style: context.body.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
