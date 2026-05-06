import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/utils/date_time_util.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_text_styles.dart';

final reviewList = [
  ("권*욱", "26.3.12", "5kg", "3개", "포장상태가 아주 훌륭했어요. 다음에 또 주문할게요. "),
  ("권*욱", "26.3.12", "5kg", "3개", "포장상태가 아주 훌륭했어요. 다음에 또 주문할게요."),
  ("권*욱", "26.3.12", "5kg", "3개", "정말 맛있게 요리해서 보내줬어요."),
  ("권*욱", "26.3.12", "5kg", "3개", "정말 맛있게 요리해서 보내줬어요. 고객도 상당히 만족합니다."),
  ("권*욱", "26.3.12", "5kg", "3개", "정말 맛있게 요리해서 보내줬어요. "),
];

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
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "리뷰 (${StringUtil.formatCurrency(state.productInfo?.reviewCount ?? 0)}건)",
            style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          state.reviewList!.isNotEmpty
              ? Column(
                  children: List.generate(state.reviewList!.length, (index) {
                    return Column(
                      children: [
                        _buildReviewItem(
                          context: context,
                          name: state.reviewList![index].name,
                          date: state.reviewList![index].createdAt.toDateOnly,
                          kg: "옵션",
                          count: "수량",
                          content: state.reviewList![index].content,
                        ),
                        if (index != reviewList.length - 1)
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

  Column _buildReviewItem({
    required BuildContext context,
    required String name,
    required String date,
    required String kg,
    required String count,
    required String content,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/porkImage.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(name, style: context.body),
                      Spacer(),
                      Text(
                        date,
                        style: context.body.copyWith(color: AppColors.darkGrey),
                      ),
                    ],
                  ),
                  Text(
                    "옵션: $kg / $count",
                    style: context.body.copyWith(color: AppColors.darkGrey),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    content,
                    style: context.body.copyWith(fontWeight: FontWeight.w500),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
