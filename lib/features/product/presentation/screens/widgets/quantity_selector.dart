import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_box_styles.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({
    super.key,
    required this.selectProductCount,
    required this.onChangedMinus,
    required this.onChangedPlus,
  });

  final int selectProductCount;
  final ValueChanged<String> onChangedMinus;
  final ValueChanged<String> onChangedPlus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxStyles.borderBox,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => onChangedMinus(""),
            child: _QtyButton(icon: Icons.remove, isLeft: true),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "$selectProductCount",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () => onChangedPlus(""),
            child: _QtyButton(icon: Icons.add, isRight: true),
          ),
        ],
      ),
    );
  }
}

class _QtyButton extends StatelessWidget {
  const _QtyButton({
    required this.icon,
    this.isLeft = false,
    this.isRight = false,
  });

  final IconData icon;
  final bool isLeft;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 28,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.horizontal(
          left: isLeft ? Radius.circular(10) : Radius.zero,
          right: isRight ? Radius.circular(10) : Radius.zero,
        ),
      ),
      child: Icon(icon, size: 18),
    );
  }
}
