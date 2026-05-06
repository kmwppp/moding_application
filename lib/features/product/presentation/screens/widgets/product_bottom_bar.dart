import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/badge/presentation/providers/app_badge_provider.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/product_put_in_cart_bottom_sheet.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/quantity_selector.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../cart/presentation/providers/cart/cart_viewmodel.dart';
import '../../../../order/domain/entities/order_request_dto.dart';

class ProductBottomBar extends ConsumerWidget {
  const ProductBottomBar({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productViewModelProvider(productId));
    final notifier = ref.read(productViewModelProvider(productId).notifier);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(6, -6), // 🔥 위쪽으로 그림자
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (state.selectedOption != null) ...[
            const SizedBox(height: 10),
            _infoRow(context, "상품명", state.productInfo?.name ?? ""),
            const SizedBox(height: 4),
            _infoRow(context, "선택 옵션", state.selectedOption?.optionName ?? ""),
            const SizedBox(height: 4),
            _infoRow(
              context,
              "가격",
              "${StringUtil.formatCurrency(state.selectedOption?.sellingPrice ?? 0)}원",
            ),

            const Divider(height: 20),

            Row(
              children: [
                Text(
                  "총 ${StringUtil.formatCurrency(state.totalPrice)}원",
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                QuantitySelector(
                  selectProductCount: state.selectProductCount,
                  onChangedMinus: (String value) {
                    notifier.selectProductCountMinus();
                  },
                  onChangedPlus: (String value) {
                    notifier.selectProductCountPlus();
                  },
                ),
              ],
            ),

            const SizedBox(height: 10),
          ],

          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    final qty = state.selectProductCount;
                    if (qty == 0) return;

                    final productIdToSend = state.productInfo?.id ?? 0;
                    final optionIdToSend = state.selectedOption?.id ?? 0;

                    // 토큰이 없으면 API를 쏘지 않고 먼저 로그인으로 보냄.
                    final accessToken = await ref
                        .read(tokenStorageProvider)
                        .getAccessToken();
                    if (!context.mounted) return;

                    if (accessToken == null || accessToken.trim().isEmpty) {
                      final loginResult = await context.push<bool>('/login');
                      if (!context.mounted || loginResult != true) return;
                    }

                    final result = await ref
                        .read(productViewModelProvider(productId).notifier)
                        .postPutInShoppingCart(
                          productId: productIdToSend,
                          productOptionId: optionIdToSend,
                          quantity: qty,
                        );
                    if (!context.mounted) return;

                    if (result.success) {
                      ref.invalidate(cartViewModelProvider);
                      ref.invalidate(appBadgeProvider);
                      AppBottomSheet.show(
                        context: context,
                        child: ProductPutInCartBottomSheet(
                          productId: productId,
                        ),
                      );
                    } else {
                      AppBottomSheet.show(
                        context: context,
                        child: Text(result.message),
                      );
                    }
                  },
                  child: CustomButton(
                    title: "장바구니 담기",
                    boxColor: Colors.white,
                    textColor: state.selectProductCount != 0
                        ? AppColors.primary
                        : AppColors.darkGrey,
                    borderColor: state.selectProductCount != 0
                        ? AppColors.primary
                        : AppColors.darkGrey,
                    paddingVertical: 8,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (state.selectProductCount != 0) {
                      context.push(
                        '/order',
                        extra: OrderRequestDto(
                          items: [
                            OrderItemRequestDto(
                              productId: productId,
                              productOptionId: state.selectedOption!.id ?? 0,
                              quantity: state.selectProductCount,
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: CustomButton(
                    title: "구매하기",
                    boxColor: state.selectProductCount != 0
                        ? AppColors.primary
                        : AppColors.darkGrey,
                    borderColor: state.selectProductCount != 0
                        ? AppColors.primary
                        : AppColors.darkGrey,
                    textColor: Colors.white,
                    paddingVertical: 8,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoRow(
    BuildContext context,
    String title,
    String value, {
    bool isPrice = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 60, // 🔥 고정폭 (정렬 핵심)
          child: Text(
            title,
            style: context.bodySmall.copyWith(color: Colors.grey[600]),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: isPrice
                ? context.body.copyWith(fontWeight: FontWeight.w600)
                : context.body,
          ),
        ),
      ],
    );
  }
}
