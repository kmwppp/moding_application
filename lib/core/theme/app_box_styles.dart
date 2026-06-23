import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppBoxStyles {
  static final borderBox = BoxDecoration(
    color: Colors.white, // 그림자가 보이려면 배경색이 반드시 있어야 합니다!
    border: Border.all(color: AppColors.boxBorderGrey),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05), // 아주 은은한 검정색
        spreadRadius: 2,
        blurRadius: 8,
        offset: Offset(0, 4), // 아래쪽으로 살짝 그림자 생성
      ),
    ],
  );

  static final borderBoxNoneShadow = BoxDecoration(
    color: Colors.white, // 그림자가 보이려면 배경색이 반드시 있어야 합니다!
    border: Border.all(color: AppColors.boxBorderGrey),
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration focusContainerDecoration({bool isError = false}) {
    return BoxDecoration(
      color: Colors.white, // 배경색이 필요할 경우 추가
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        /// 에러 여부에 따라 테두리 색상 변경
        color: isError ? Colors.red : AppColors.darkGrey,

        /// 기본 두께는 1.0 (InputDecoration의 기본값과 동일)
        width: 1.0,
      ),
    );
  }
}
