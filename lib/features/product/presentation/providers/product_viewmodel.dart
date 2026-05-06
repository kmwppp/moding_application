import 'package:flutter/foundation.dart';
import 'package:moding_application/features/cart/presentation/providers/wish_list/wish_list_viewmodel.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/product/data/repositories/product_repository_impl.dart';
import 'package:moding_application/features/product/presentation/providers/product_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/product_dto.dart';
import '../../domain/enums/product_recommand_type.dart';

part 'product_viewmodel.g.dart';

@Riverpod()
class ProductViewModel extends _$ProductViewModel {
  bool _isUpdating = false;

  @override
  ProductState build(int productId) {
    Future.microtask(() {
      if (ref.mounted) {
        _init(productId);
      }
    });

    return ProductState.initial();
  }

  Future<void> _init(int productId) async {
    await Future.wait([
      getProductInfo(productId),
      getProductReviewList(productId),
      getProductRecommendList(
        type: ProductRecommendType.similar,
        page: 0,
        size: 10,
        productId: productId,
      ),
      getProductRecommendList(
        type: ProductRecommendType.recentlyOrdered,
        page: 0,
        size: 10,
      ),
      getProductRecommendList(
        type: ProductRecommendType.businessPicks,
        page: 0,
        size: 10,
      ),
    ]);
    // await getProductListSimilar(productId);

    // await getProductListRecently();
    // await getProductListBusinessPick();
    if (!ref.mounted) return;
    state = state.copyWith(isLoading: false);
  }

  String get formattedTime {
    final t = state.remainingTime;

    String twoDigits(int n) => n.toString().padLeft(2, '0');

    return "${twoDigits(t.inHours)}:"
        "${twoDigits(t.inMinutes.remainder(60))}:"
        "${twoDigits(t.inSeconds.remainder(60))}";
  }

  void changeImageCurrentIndex(int index) {
    state = state.copyWith(imageCurrentIndex: index);
  }

  void toggleShippingCostInfo() {
    state = state.copyWith(showShippingCostInfo: !state.showShippingCostInfo);
  }

  void selectOption(OptionDto option) {
    final count = state.selectProductCount;
    final price = option.sellingPrice ?? 0;

    state = state.copyWith(selectedOption: option, totalPrice: count * price);
  }

  void selectProductCountMinus() {
    final newCount = (state.selectProductCount - 1) < 0
        ? 0
        : state.selectProductCount - 1;

    final price = state.selectedOption?.sellingPrice ?? 0;

    state = state.copyWith(
      selectProductCount: newCount,
      totalPrice: newCount * price,
    );
  }

  void selectProductCountPlus() {
    final newCount = state.selectProductCount + 1;
    final price = state.selectedOption?.sellingPrice ?? 0;

    state = state.copyWith(
      selectProductCount: newCount,
      totalPrice: newCount * price,
    );
  }

  Future<void> getProductInfo(int productId) async {
    try {
      final repository = ref.read(productRepositoryProvider);
      final response = await repository.getProductInfo(productId);
      if (!ref.mounted) return;
      state = state.copyWith(productInfo: response);
    } catch (e) {
      debugPrint('$e');
    }
  }

  // Future<void> getProductListSimilar(int productId) async {
  //   try {
  //     final repository = ref.read(productRepositoryProvider);
  //     final similarList = await repository.getProductListSimilar(productId);
  //     state = state.copyWith(similarList: similarList);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<void> getProductReviewList(int productId) async {
    try {
      final repository = ref.read(productRepositoryProvider);
      final reviewList = await repository.getProductReviewList(productId, 0, 5);
      if (!ref.mounted) return;
      state = state.copyWith(reviewList: reviewList);
    } catch (e) {
      debugPrint('$e');
    }
  }

  // Future<void> getProductListRecently() async {
  //   try {
  //     final repository = ref.read(productRepositoryProvider);
  //     final recentlyList = await repository.getProductRecentlyList();
  //     state = state.copyWith(recentlyList: recentlyList);
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  //
  // Future<void> getProductListBusinessPick() async {
  //   try {
  //     final repository = ref.read(productRepositoryProvider);
  //     final businessPickList = await repository.getProductListBusinessPicks();
  //     state = state.copyWith(
  //       businessPickList: businessPickList,
  //       isLoading: false,
  //     );
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  void updateProductWishList(bool isWishList) {
    if (_isUpdating) return;
    _isUpdating = true;
    // 1. UI 먼저 반영 (낙관적 업데이트)
    state = state.copyWith(
      productInfo: state.productInfo?.copyWith(isWishlisted: isWishList),
    );

    // 2. 서버 요청
    productWishListState(isWishList);
  }

  Future<void> productWishListState(bool isWishList) async {
    try {
      final repository = ref.read(productRepositoryProvider);
      await repository.productWishListState(productId, isWishList);
      if (!ref.mounted) return;
      ref.invalidate(wishListModelProvider);
    } catch (e) {
      debugPrint('$e');
      if (!ref.mounted) return;
      state = state.copyWith(
        productInfo: state.productInfo?.copyWith(isWishlisted: !isWishList),
      );
    } finally {
      _isUpdating = false;
    }
  }

  Future<ResponseModel> postPutInShoppingCart({
    required int productId,
    required int productOptionId,
    required int quantity,
  }) async {
    try {
      final repository = ref.read(productRepositoryProvider);
      final result = await repository.postPutInShoppingCart(
        productId: productId,
        productOptionId: productOptionId,
        quantity: quantity,
      );
      return ResponseModel(success: result.success, message: result.message);
    } catch (e) {
      debugPrint('$e');
      return ResponseModel(success: false, message: "일시적인 오류가 발생했습니다.");
    }
  }

  Future<void> getSellerProfileInfo(int sellerProfileId) async {
    try {
      final repository = ref.read(productRepositoryProvider);
      final sellerInfo = await repository.getSellerInfo(sellerProfileId);
      if (!ref.mounted) return;
      state = state.copyWith(sellerInfo: sellerInfo);
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> getProductRecommendList({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  }) async {
    if (type == ProductRecommendType.businessPicks) {
      if (state.businessLoading || !state.businessHasNext) return;

      state = state.copyWith(businessLoading: true);
    }

    try {
      final repository = ref.read(productRepositoryProvider);
      final response = await repository.getProductRecommendList(
        type: type,
        page: page,
        size: size,
        productId: productId,
      );

      if (!ref.mounted) return;

      switch (type) {
        case ProductRecommendType.businessPicks:
          final current = state.businessPickList ?? [];

          final newList = [...current, ...response.content];

          final hasNext = page < response.totalPages - 1;

          state = state.copyWith(
            businessPickList: newList,
            businessPage: page,
            businessHasNext: hasNext,
            businessLoading: false,
          );
          break;

        case ProductRecommendType.similar:
          state = state.copyWith(similarList: response.content);
          break;

        case ProductRecommendType.recentlyOrdered:
          state = state.copyWith(recentlyList: response.content);
          break;

        default:
          break;
      }
    } catch (e) {
      if (type == ProductRecommendType.businessPicks) {
        state = state.copyWith(businessLoading: false);
      }
      debugPrint('$e');
    }
  }

  int _getPageSize(int page) {
    return page == 0 ? 10 : 20;
  }

  void loadNextBusiness(int productId) {
    final nextPage = state.businessPage + 1;

    getProductRecommendList(
      type: ProductRecommendType.businessPicks,
      page: nextPage,
      size: _getPageSize(nextPage),
    );
  }
}
