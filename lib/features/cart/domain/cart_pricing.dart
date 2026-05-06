import 'package:moding_application/features/cart/domain/entities/cart/cart_response_dto.dart';

/// 장바구니 금액·배송비 계산 (화면 표시용).
abstract final class CartPricing {
  static int lineProductTotal(CartItemDto item) =>
      item.options.fold<int>(0, (sum, o) => sum + o.totalPrice);

  /// 옵션 합계가 무료배송 기준 이상이면 0, 아니면 shippingFee.
  static int lineShippingFee(CartItemDto item) {
    final lineTotal = lineProductTotal(item);
    final threshold = item.freeShippingThreshold;
    if (threshold != null && lineTotal >= threshold) {
      return 0;
    }
    return item.shippingFee;
  }

  /// 무료배송까지 남은 금액 (없거나 이미 무료이면 null).
  static int? amountUntilFreeShipping(CartItemDto item) {
    final threshold = item.freeShippingThreshold;
    if (threshold == null || item.shippingFee <= 0) return null;
    final lineTotal = lineProductTotal(item);
    if (lineTotal >= threshold) return null;
    return threshold - lineTotal;
  }

  static int sumProductAmount(Iterable<CartItemDto> items) =>
      items.fold<int>(0, (s, e) => s + lineProductTotal(e));

  static int sumShipping(Iterable<CartItemDto> items) =>
      items.fold<int>(0, (s, e) => s + lineShippingFee(e));

  static int sumProductAmountSelected(
    List<CartItemDto> items,
    Set<int> selectedCartItemIds,
  ) {
    return sumProductAmount(
      items.where((e) => selectedCartItemIds.contains(e.cartItemId)),
    );
  }

  static int sumShippingSelected(
    List<CartItemDto> items,
    Set<int> selectedCartItemIds,
  ) {
    return sumShipping(
      items.where((e) => selectedCartItemIds.contains(e.cartItemId)),
    );
  }
}
