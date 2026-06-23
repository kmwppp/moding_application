import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/product/domain/entities/review_dto.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/product_review_item.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_text_styles.dart';

class ReviewSection extends ConsumerWidget {
  const ReviewSection({
    super.key,
    required this.cardWidth,
    required this.productId,
  });

  final double cardWidth;
  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productViewModelProvider(productId));
    final reviews = state.reviewList ?? const <ReviewDto>[];
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "리뷰 (${StringUtil.formatCurrency(state.productInfo?.reviewCount ?? 0)}건)",
                style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => context.push('/product/$productId/reviews'),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '더보기',
                      style: context.bodySmall.copyWith(
                        color: AppColors.darkGrey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.chevron_right,
                      size: 16,
                      color: AppColors.darkGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          reviews.isNotEmpty
              ? Column(
                  children: List.generate(reviews.length, (index) {
                    return Column(
                      children: [
                        ProductReviewItem(review: reviews[index]),
                        if (index != reviews.length - 1)
                          const Divider(height: 20, thickness: 1),
                      ],
                    );
                  }),
                )
              : Padding(
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: Text("아직 작성된 리뷰가 없습니다.", style: context.body),
                  ),
                ),
        ],
      ),
    );
  }
}
