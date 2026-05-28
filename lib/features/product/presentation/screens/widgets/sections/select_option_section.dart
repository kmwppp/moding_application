import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_text_styles.dart';

class SelectOptionSection extends ConsumerWidget {
  const SelectOptionSection({
    super.key,
    required this.cardWidth,
    required this.productId,
  });

  final double cardWidth;
  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productViewModelProvider(productId));
    final options = state.productInfo?.options ?? [];
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              children: options.asMap().entries.map((entry) {
                final option = entry.value;

                final isSelected = state.selectedOption?.id == option.id;

                final optionName = option.optionName ?? '';

                final sellingPrice = option.sellingPrice ?? option.price ?? 0;

                /// 100g당 가격
                final caption = option.pricePer100 != null
                    ? "100${option.capacityUnit ?? ''}당 ${StringUtil.formatCurrency(option.pricePer100)}원"
                    : "";

                /// 무료배송 여부
                final isFreeShipping = option.isFreeShipping ?? false;

                /// 재고
                final count = option.stockQuantity ?? 0;

                /// 추가 문구 (할인율 등)
                final caption2 = option.savingsVsCheapest != null
                    ? "해당 옵션 구매시 ${StringUtil.formatCurrency(option.savingsVsCheapest)}원 절약"
                    : "";

                final stockQuantity = option.stockQuantity ?? 0;

                return GestureDetector(
                  onTap: () {
                    if (stockQuantity != 0) {
                      ref
                          .read(productViewModelProvider(productId).notifier)
                          .selectOption(option);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: _buildOption(
                      context,
                      isSelected,
                      cardWidth,
                      optionName,
                      sellingPrice,
                      caption,
                      isFreeShipping,
                      count,
                      caption2,
                      stockQuantity,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(
    BuildContext context,
    bool isSelected,
    double cardWidth,
    String optionName,
    int sellingPrice,
    String caption,
    bool isFreeShipping,
    int count,
    String? caption2,
    int stockQuantity,
  ) {
    final isSoldOut = stockQuantity == 0;
    return Stack(
      children: [
        Container(
          decoration: AppBoxStyles.borderBox.copyWith(
            border: Border.all(color: AppColors.primary, width: 1.5),
            color: isSelected ? AppColors.primary : Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      optionName,
                      style: context.body.copyWith(
                        fontWeight: FontWeight.w600,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "${StringUtil.formatCurrency(sellingPrice)}원",
                      style: context.body.copyWith(
                        fontWeight: FontWeight.w600,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),

                    if (isFreeShipping)
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: isSelected ? Colors.white : AppColors.primary,
                        ),
                        child: Text(
                          "무료배송",
                          style: context.bodySmall.copyWith(
                            fontWeight: FontWeight.bold,
                            color: isSelected
                                ? AppColors.primary
                                : Colors.white,
                          ),
                        ),
                      ),
                  ],
                ),

                if (sellingPrice != 0)
                  /// 가격
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        caption,
                        style: context.bodySmall.copyWith(
                          fontWeight: FontWeight.w400,
                          color: isSelected ? Colors.white : AppColors.darkGrey,
                        ),
                      ),
                      if (stockQuantity < 10) ...[
                        SizedBox(width: 16),
                        Text(
                          "남은 재고 $stockQuantity개",
                          style: context.bodySmall.copyWith(
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.white : Colors.red,
                          ),
                        ),
                      ],
                    ],
                  ),

                if (caption2 != null && caption2.isNotEmpty)
                  Text(
                    caption2,
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.w500,
                      color: isSelected ? Colors.white : AppColors.pointColor,
                    ),
                  ),
              ],
            ),
          ),
        ),

        /// 🔥 품절 처리
        if (isSoldOut) ...[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black.withValues(alpha: 0.3),
              ),
            ),
          ),

          /// 품절 텍스트
          Positioned(
            bottom: 10,
            right: 10,
            child: Center(
              child: Text(
                "입고 대기 중",
                style: context.body.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _countButton(IconData icon) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(icon, size: 18),
    );
  }
}
