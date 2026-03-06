import 'package:flutter/material.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

import '../../../../../core/constants/app_colors.dart';

class CustomLabeledCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Color? activeColor;

  const CustomLabeledCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value), // 텍스트 영역을 눌러도 체크되게 설정
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6), // 터치 영역 확보
        child: Row(
          // 컨텐츠 크기만큼만 차지 (왼쪽 정렬 유지)
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: value,
                onChanged: onChanged,
                activeColor: activeColor ?? AppColors.primary,
                visualDensity: VisualDensity.compact,
                // 내부 여백 최소화
                materialTapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // 클릭 영역 최적화
              ),
            ),
            SizedBox(width: 6), // 체크박스와 텍스트 사이 간격

            Text(label, style: context.body),
            // Flexible(
            //   // 텍스트가 길어져도 화면을 벗어나지 않게 처리
            //   child: ,
            // ),
            Spacer(),
            Text(
              "(보기)",
              style: context.body.copyWith(color: AppColors.darkGrey),
              textAlign: TextAlign.end,
            ),
            // Flexible(
            //   // 텍스트가 길어져도 화면을 벗어나지 않게 처리
            //   child:
            // ),
          ],
        ),
      ),
    );
  }
}
