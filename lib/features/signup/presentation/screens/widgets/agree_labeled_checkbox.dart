import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/pdf_util.dart';

class CustomLabeledCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Color? activeColor;
  final String? pdfPath; // PDF 경로를 선택적으로 받음

  const CustomLabeledCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.pdfPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          // 1. 체크박스와 라벨 영역 (전체 클릭 가능)
          Expanded(
            child: InkWell(
              onTap: () => onChanged(!value),
              borderRadius: BorderRadius.circular(4),
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: IgnorePointer(
                      // 중복 클릭 방지를 위해 체크박스 자체 이벤트 무시
                      child: Checkbox(
                        value: value,
                        onChanged: (_) {},
                        activeColor: activeColor ?? AppColors.primary,
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: label == "전체 동의"
                        ? context.bodyLarge
                        : context.bodySmall,
                  ),
                ],
              ),
            ),
          ),

          // 2. [보기] 버튼 영역
          if (pdfPath != null)
            GestureDetector(
              onTap: () => PdfUtil.openPdf(context, pdfPath!, label),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "(${AppStrings.watch})",
                  style: context.caption.copyWith(color: AppColors.darkGrey),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
