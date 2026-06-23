import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:moding_application/features/badge/presentation/providers/app_badge_provider.dart';
import 'package:moding_application/features/cart/data/repositories/cart/cart_repository_impl.dart';
import 'package:moding_application/features/cart/domain/entities/cart/cart_response_dto.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../product/domain/enums/product_recommand_type.dart';

part 'cart_viewmodel.g.dart';

@Riverpod()
class CartViewModel extends _$CartViewModel {
  static const _quantityDebounceDuration = Duration(milliseconds: 400);
  final Map<int, Timer> _quantityUpdateTimers = {};

  @override
  CartState build() {
    ref.onDispose(() {
      for (final timer in _quantityUpdateTimers.values) {
        timer.cancel();
      }
      _quantityUpdateTimers.clear();
    });

    _init();
    return CartState.initial();
  }

  Future<void> _init() async {
    await getCartData();
    await getProductRecommendList(
      type: ProductRecommendType.recentlyOrdered,
      page: 0,
      size: 10,
    );
  }

  List<CartItemDto> get _items => state.cartData?.data ?? [];

  bool _isSelectable(CartItemDto item) =>
      item.isAvailable == true && item.cartItemId != null;

  Set<int> _availableItemIds(Iterable<CartItemDto> items) =>
      items.where(_isSelectable).map((e) => e.cartItemId!).toSet();

  bool get isAllSelected {
    final availableIds = _availableItemIds(_items);
    if (availableIds.isEmpty) return false;
    return availableIds.every(state.selectedCartItemIds.contains);
  }

  bool isSelected(int cartItemId) =>
      state.selectedCartItemIds.contains(cartItemId);

  bool get hasSelectedUnavailableItems {
    for (final item in _items) {
      final cartItemId = item.cartItemId;
      if (cartItemId == null || !state.selectedCartItemIds.contains(cartItemId)) {
        continue;
      }

      if (item.isAvailable != true) {
        return true;
      }

      final options = item.options ?? const <CartItemOptionDto>[];
      if (options.any((option) => option.isUnavailable)) {
        return true;
      }
    }

    return false;
  }

  Future<void> getCartData() async {
    try {
      final repository = ref.read(cartRepositoryProvider);
      final response = await repository.getCartList();
      final availableIds = _availableItemIds(response.data);
      state = state.copyWith(
        cartData: response,
        selectedCartItemIds: availableIds,
      );
    } catch (e) {
      debugPrint('$e');
    }
  }

  void toggleSelectAll() {
    final availableIds = _availableItemIds(_items);
    if (availableIds.isEmpty) return;
    if (isAllSelected) {
      state = state.copyWith(selectedCartItemIds: {});
    } else {
      state = state.copyWith(selectedCartItemIds: availableIds);
    }
  }

  void toggleProduct(int cartItemId) {
    final item = _items.cast<CartItemDto?>().firstWhere(
      (e) => e?.cartItemId == cartItemId,
      orElse: () => null,
    );
    if (item == null || !_isSelectable(item)) return;

    final next = Set<int>.from(state.selectedCartItemIds);
    if (next.contains(cartItemId)) {
      next.remove(cartItemId);
    } else {
      next.add(cartItemId);
    }
    state = state.copyWith(selectedCartItemIds: next);
  }

  Future<void> deleteSelectedProducts() async {
    final ids = state.selectedCartItemIds;

    if (ids.isEmpty || state.cartData == null) return;

    final prevState = state; // 롤백 대비

    // 로컬에서 먼저 제거 (optimistic)
    final newList = state.cartData!.data
        .where((e) => !ids.contains(e.cartItemId))
        .toList();

    state = state.copyWith(
      cartData: state.cartData!.copyWith(data: newList),
      selectedCartItemIds: {},
    );

    // 서버 요청
    try {
      await deleteCartProductItems(cartItemIds: ids.toList());
    } catch (e) {
      debugPrint('$e');

      // 실패 시 롤백
      state = prevState;
    }
  }

  void changeOptionQuantity(int cartItemId, int cartItemOptionId, int delta) {
    if (state.cartData == null) return;

    int? updatedQuantity;

    final newList = state.cartData!.data.map((item) {
      if (item.cartItemId != cartItemId) return item;

      final newOptions = (item.options ?? []).map((o) {
        if (o.cartItemOptionId != cartItemOptionId) return o;

        final newQty = (o.quantity + delta).clamp(1, o.stockQuantity);
        // 변경된 수량 저장
        updatedQuantity = newQty;

        return o.copyWith(quantity: newQty, totalPrice: o.unitPrice * newQty);
      }).toList();

      final productTotal = newOptions.fold<int>(0, (s, o) => s + o.totalPrice);

      return item.copyWith(
        options: newOptions,
        productTotalPrice: productTotal,
      );
    }).toList();

    state = state.copyWith(cartData: state.cartData!.copyWith(data: newList));

    // 수량 변경 API 호출
    if (updatedQuantity != null) {
      _schedulePatchCartOptionCount(
        optionId: cartItemOptionId,
        quantity: updatedQuantity!,
      );
    }
  }

  Future<void> removeOption(int cartItemId, int cartItemOptionId) async {
    if (state.cartData == null) return;

    final prevState = state; // 롤백 대비

    final newList = <CartItemDto>[];

    for (final item in state.cartData!.data) {
      if (item.cartItemId != cartItemId) {
        newList.add(item);
        continue;
      }

      final opts = (item.options ?? [])
          .where((o) => o.cartItemOptionId != cartItemOptionId)
          .toList();

      // 옵션 다 사라지면 상품 자체 제거
      if (opts.isEmpty) {
        continue;
      }

      final productTotal = opts.fold<int>(0, (s, o) => s + o.totalPrice);

      newList.add(
        item.copyWith(options: opts, productTotalPrice: productTotal),
      );
    }

    // 선택 상태 정리
    final nextSelected = Set<int>.from(state.selectedCartItemIds);
    for (final id in state.selectedCartItemIds) {
      if (!newList.any((e) => e.cartItemId == id)) {
        nextSelected.remove(id);
      }
    }

    // 먼저 UI 반영 (optimistic)
    state = state.copyWith(
      cartData: state.cartData!.copyWith(data: newList),
      selectedCartItemIds: nextSelected,
    );

    // 서버 요청
    try {
      await deleteCartOption(optionId: cartItemOptionId);
      await getCartData();
    } catch (e) {
      debugPrint('$e');

      // 실패 시 롤백
      state = prevState;
    }
  }

  Future<void> getProductRecommendList({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  }) async {
    try {
      final repository = ref.read(cartRepositoryProvider);
      final response = await repository.getProductRecommendList(
        type: type,
        page: page,
        size: size,
        productId: productId,
      );
      state = state.copyWith(recentlyList: response.content);
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> patchCartOptionCount({
    required int optionId,
    required int quantity,
  }) async {
    try {
      final repository = ref.read(cartRepositoryProvider);
      await repository.patchCartOptionCount(optionId, quantity);
    } catch (e) {
      debugPrint('$e');
    }
  }

  void _schedulePatchCartOptionCount({
    required int optionId,
    required int quantity,
  }) {
    _quantityUpdateTimers[optionId]?.cancel();
    _quantityUpdateTimers[optionId] = Timer(
      _quantityDebounceDuration,
      () async {
        _quantityUpdateTimers.remove(optionId);
        await patchCartOptionCount(optionId: optionId, quantity: quantity);
      },
    );
  }

  Future<void> deleteCartOption({required int optionId}) async {
    try {
      final repository = ref.read(cartRepositoryProvider);
      await repository.deleteCartOption(optionId);
      ref.invalidate(appBadgeProvider);
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> deleteCartProductItems({required List<int> cartItemIds}) async {
    try {
      final repository = ref.read(cartRepositoryProvider);
      await repository.deleteCartItems(cartItemIds);
      ref.invalidate(appBadgeProvider);
    } catch (e) {
      debugPrint('$e');
    }
  }
}
