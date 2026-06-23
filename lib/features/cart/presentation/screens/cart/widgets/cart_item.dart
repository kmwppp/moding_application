import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:moding_application/features/cart/domain/cart_pricing.dart';
import 'package:moding_application/features/cart/domain/entities/cart/cart_response_dto.dart';
import 'package:moding_application/features/cart/domain/enums/cart_unavailable_reason.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_box_styles.dart';
import '../../../../../../core/theme/app_text_styles.dart';

class CartItemWidget extends ConsumerWidget {
  const CartItemWidget({super.key, required this.item});

  final CartItemDto item;

  static final _currency = NumberFormat('#,###', 'ko_KR');

  String _storageLabel(String method) {
    switch (method) {
      case 'REFRIGERATED':
        return '냉장';
      case 'FROZEN':
        return '냉동';
      case 'ROOM_TEMP':
        return '상온';
      default:
        return method;
    }
  }

  String _deliveryLabel(int deliveryDays) {
    if (deliveryDays <= 1) return '내일도착';
    return '$deliveryDays일 후 도착';
  }

  String _unavailableLabel(CartUnavailableReason? reason) =>
      reason?.label ?? '구매 불가';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(cartViewModelProvider.notifier);
    final cartItemId = item.cartItemId;
    final productId = item.productId;
    final options = item.options ?? const <CartItemOptionDto>[];
    final isAvailable = item.isAvailable == true;
    final selected = ref.watch(
      cartViewModelProvider.select(
        (s) => cartItemId != null && s.selectedCartItemIds.contains(cartItemId),
      ),
    );

    final untilFree = CartPricing.amountUntilFreeShipping(item);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: !isAvailable || cartItemId == null
                    ? null
                    : () => notifier.toggleProduct(cartItemId),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 28,
                      height: 28,
                      child: Checkbox(
                        value: selected,
                        onChanged: !isAvailable || cartItemId == null
                            ? null
                            : (_) => notifier.toggleProduct(cartItemId),
                        activeColor: AppColors.primary,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        '${_deliveryLabel(item.deliveryDays ?? 1)} · ${_storageLabel(item.storageMethod ?? '')}',
                        style: context.bodyLarge.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: productId == null
                    ? null
                    : () {
                        context.push('/product/$productId');
                      },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: item.thumbnailUrl ?? '',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey.shade200,
                        ),
                        errorWidget: (context, url, error) => Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey.shade200,
                          child: const Icon(Icons.image_not_supported_outlined),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.productName ?? '',
                            style: context.body.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            CartPricing.lineShippingFee(item) == 0
                                ? '배송비 무료'
                                : '배송비 ${_currency.format(CartPricing.lineShippingFee(item))}원',
                            style: context.bodySmall.copyWith(
                              color: AppColors.darkGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ...options.map(
                (option) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: _CartOptionTile(
                    option: option,
                    enabled: isAvailable && cartItemId != null,
                    onRemove: cartItemId == null
                        ? () {}
                        : () => notifier.removeOption(
                            cartItemId,
                            option.cartItemOptionId,
                          ),
                    onDelta: cartItemId == null
                        ? (_) {}
                        : (d) => notifier.changeOptionQuantity(
                            cartItemId,
                            option.cartItemOptionId,
                            d,
                          ),
                  ),
                ),
              ),
              if (untilFree != null)
                Text(
                  '${_currency.format(untilFree)}원 더 주문시 무료배송',
                  style: context.body.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              if (options.any((o) => o.isUnavailable))
                Text(
                  '품절 상품이 포함되어 있어, 해당 상품은 주문이 불가능합니다.',
                  style: context.bodySmall.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.pointColor,
                  ),
                ),
            ],
          ),
          if (!isAvailable)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.66),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    _unavailableLabel(item.unavailableReason),
                    style: context.body.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _CartOptionTile extends StatelessWidget {
  const _CartOptionTile({
    required this.option,
    required this.enabled,
    required this.onRemove,
    required this.onDelta,
  });

  final CartItemOptionDto option;
  final bool enabled;
  final VoidCallback onRemove;
  final void Function(int delta) onDelta;

  static final _currency = NumberFormat('#,###', 'ko_KR');

  @override
  Widget build(BuildContext context) {
    final isUnavailable = option.isUnavailable;
    final canEdit = enabled && !isUnavailable;
    final contentColor = isUnavailable ? AppColors.darkGrey : null;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          decoration: isUnavailable
              ? AppBoxStyles.borderBox.copyWith(color: AppColors.lightGrey)
              : AppBoxStyles.borderBox,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '옵션  ',
                        style: context.body.copyWith(
                          fontWeight: FontWeight.bold,
                          color: contentColor,
                        ),
                      ),
                      TextSpan(
                        text: option.optionName,
                        style: context.body.copyWith(color: contentColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    IconButton(
                      onPressed: !canEdit || option.quantity <= 1
                          ? null
                          : () => onDelta(-1),
                      icon: const Icon(Icons.remove, size: 20),
                      color: contentColor,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      visualDensity: VisualDensity.compact,
                    ),
                    SizedBox(
                      width: 36,
                      child: Text(
                        '${option.quantity}',
                        style: context.body.copyWith(color: contentColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      onPressed:
                          !canEdit || option.quantity >= option.stockQuantity
                          ? null
                          : () => onDelta(1),
                      icon: const Icon(Icons.add, size: 20),
                      color: contentColor,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      visualDensity: VisualDensity.compact,
                    ),
                    const Spacer(),
                    Text(
                      '${_currency.format(option.totalPrice)}원',
                      style: context.body.copyWith(
                        fontWeight: FontWeight.bold,
                        color: contentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: IconButton(
            onPressed: enabled ? onRemove : null,
            icon: const Icon(Icons.close, size: 20),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
            color: AppColors.darkGrey,
          ),
        ),
      ],
    );
  }
}
