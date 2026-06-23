import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';
import 'package:moding_application/features/cart/presentation/screens/cart/sections/bottom_button_section.dart';
import 'package:moding_application/features/cart/presentation/screens/cart/sections/cart_recommandation_section.dart';
import 'package:moding_application/features/cart/presentation/screens/cart/widgets/cart_item.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key, required this.controller});

  final ScrollController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartViewModelProvider);
    final notifier = ref.read(cartViewModelProvider.notifier);
    final items = state.cartData?.data ?? [];
    final sortedItems = [
      ...items.where((e) => e.isAvailable == true),
      ...items.where((e) => e.isAvailable != true),
    ];
    final showLoading = state.cartData == null;
    final showEmpty = !showLoading && items.isEmpty;
    final availableItems = items.where((e) => e.isAvailable == true).toList();

    final allSelected =
        availableItems.isNotEmpty &&
        availableItems.every(
          (e) => e.cartItemId != null
              ? state.selectedCartItemIds.contains(e.cartItemId)
              : false,
        );

    return ListView(
      controller: controller,
      padding: const EdgeInsets.only(bottom: 120),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '안내',
                style: context.body.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkGrey,
                ),
              ),
              Text(
                '판매자 배송정책에 따라 상품별 배송비가 각각 적용되며, 장바구니 주문은 상품별로 분리 주문될 수 있습니다.',
                style: context.bodySmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkGrey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
            bottom: 10,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 28,
                height: 28,
                child: Checkbox(
                  value: allSelected && items.isNotEmpty,
                  onChanged: availableItems.isEmpty
                      ? null
                      : (_) => notifier.toggleSelectAll(),
                  activeColor: AppColors.primary,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: availableItems.isEmpty ? null : notifier.toggleSelectAll,
                child: Text(
                  '전체선택',
                  style: context.bodyLarge.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: state.selectedCartItemIds.isEmpty
                    ? null
                    : notifier.deleteSelectedProducts,
                child: Text(
                  '선택삭제',
                  style: context.body.copyWith(
                    fontWeight: FontWeight.bold,
                    color: state.selectedCartItemIds.isEmpty
                        ? AppColors.mediumGrey
                        : AppColors.darkGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
        if (showLoading)
          const Padding(
            padding: EdgeInsets.all(40),
            child: Center(child: CircularProgressIndicator()),
          )
        else if (showEmpty)
          Padding(
            padding: const EdgeInsets.all(40),
            child: Center(
              child: Text(
                '장바구니에 담긴 상품이 없습니다.',
                style: context.body.copyWith(color: AppColors.darkGrey),
              ),
            ),
          )
        else
          ListView.builder(
            itemCount: sortedItems.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CartItemWidget(item: sortedItems[index]);
            },
          ),
        const SizedBox(height: 10),
        if (items.isNotEmpty) const CartPriceSection(),
        CartRecommendationSection(
          title: '최근 주문한 상품',
          recommandType: ProductRecommendType.recentlyOrdered,
        ),
      ],
    );
  }
}
