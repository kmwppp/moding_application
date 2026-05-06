import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/string_util.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../../providers/claim_check_viewmodel.dart';

class ClaimProductInfo extends ConsumerWidget {
  const ClaimProductInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final thumbnailCacheSize = (80 * MediaQuery.devicePixelRatioOf(context))
        .round();
    final state = ref.watch(claimCheckViewModelProvider);
    final claim = state.claimDetail?.data;

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "클레임 신청 상품 정보",
            style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 14),
          if (claim == null)
            const SizedBox.shrink()
          else
            Column(
              children: claim.items
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              item.thumbnailImageUrl!,
                              width: 80,
                              height: 80,
                              cacheWidth: thumbnailCacheSize,
                              cacheHeight: thumbnailCacheSize,
                              fit: BoxFit.cover,
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }
                                    return const SizedBox(
                                      width: 80,
                                      height: 80,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      ),
                                    );
                                  },
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 80,
                                  height: 80,
                                  color: Colors.grey.shade200,
                                  child: const Icon(Icons.broken_image),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SizedBox(
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.productName,
                                    style: context.body,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "${item.optionName} ${item.claimedQuantity}개",
                                    style: context.bodySmall.copyWith(
                                      color: AppColors.darkGrey,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "${StringUtil.formatCurrency(item.refundAmount)}원",
                                    style: context.body,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("총 상품 가격", style: context.body),
              const Spacer(),
              Text(
                "${StringUtil.formatCurrency(claim?.totalRefundAmount)}원",
                style: context.body.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
