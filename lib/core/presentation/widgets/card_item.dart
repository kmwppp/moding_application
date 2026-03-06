import 'package:flutter/material.dart';
import 'package:moding_application/core/constants/app_strings.dart';

import '../../constants/app_colors.dart';
import '../../theme/app_text_styles.dart';

class CardItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String contents;
  final bool isMain;

  const CardItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.contents,
    required this.isMain,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 부모(Row 등)로부터 전달받은 최대 너비를 기준으로 계산 (안전성 확보)
        double minusWidth = isMain ? 50 : 30;
        double cardWidth =
            (MediaQuery.of(context).size.width / 2) -
            minusWidth; // 간격 조절을 위해 수치 조정
        double cardHeight = cardWidth * 1.9;
        // 폰트 사이즈를 카드 너비에 비례하게 계산
        // 예: 너비가 150이면 폰트는 18, 너비가 100이면 폰트는 12
        double dynamicTitleSize = cardWidth * 0.12;
        double dynamicBodySize = cardWidth * 0.10;

        return Container(
          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. 제목 (공간 부족 시 생략 처리)
                Text(
                  title,
                  style: context.bodyLarge.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: dynamicTitleSize,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),

                // 2. 이미지 (정사각형 유지 및 남은 공간 차지)
                _imageBox(),
                const SizedBox(height: 8),

                // 3. 상품명 (공간에 따라 최대 2줄)
                Text(
                  contents,
                  style: context.body.copyWith(fontSize: dynamicBodySize),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),

                // 4. 버튼 (높이 고정 대신 최소 높이 권장)
                _fastOrderButton(context),
              ],
            ),
          ),
        );
      },
    );
  }

  Expanded _imageBox() {
    return Expanded(
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(imageUrl, fit: BoxFit.contain),
        ),
      ),
    );
  }

  Container _fastOrderButton(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 36),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        AppStrings.fastOrder,
        style: context.body.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
