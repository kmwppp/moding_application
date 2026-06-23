import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/app_tooltip.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../order_check/domain/entities/order_detail_dto.dart';
import '../../providers/send_claim_viewmodel.dart';

class SelectProductInfo extends ConsumerWidget {
  const SelectProductInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sendClaimViewModelProvider);
    final items = state.orderInfo?.data.items ?? [];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Text("상품선택", style: context.titleMedium),
              SizedBox(width: 6),
              AppTooltip(
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "상품 이상, 파손, 누락, 오배송, 변질 등 문제가 있는 경우 배송완료 후 48시간 이내에 증빙 사진과 함께 접수해 주세요.",
                      style: context.bodySmall,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.help_outline,
                  size: 16,
                  color: AppColors.pointColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          if (state.isLoading)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(child: CircularProgressIndicator()),
            )
          else if (items.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                '주문 상품을 불러오지 못했습니다.',
                style: context.body.copyWith(color: AppColors.darkGrey),
              ),
            )
          else
            Column(
              children: [
                for (int index = 0; index < items.length; index++) ...[
                  _ClaimProductItem(item: items[index]),
                  if (index != items.length - 1) const SizedBox(height: 14),
                ],
              ],
            ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _ClaimProductItem extends ConsumerWidget {
  const _ClaimProductItem({required this.item});

  final OrderDetailItemDto item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sendClaimViewModelProvider);
    final selectedQuantity = state.claimedQuantities[item.id] ?? 0;
    final notifier = ref.read(sendClaimViewModelProvider.notifier);

    return SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 80,
              height: 80,
              child: Image.network(
                item.thumbnailImageUrl,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[200],
                    child: const Center(child: Icon(Icons.broken_image)),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
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
                  item.optionName,
                  style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Row(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => notifier.decreaseQuantity(item.id),
                      child: const Icon(Icons.remove, size: 20),
                    ),
                    SizedBox(
                      width: 36,
                      child: Text(
                        '$selectedQuantity',
                        style: context.body,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () =>
                          notifier.increaseQuantity(item.id, item.quantity),
                      child: const Icon(Icons.add, size: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
