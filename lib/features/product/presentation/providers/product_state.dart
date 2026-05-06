import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/product/domain/entities/product_dto.dart';
import 'package:moding_application/features/product/domain/entities/review_dto.dart';
import 'package:moding_application/features/product/domain/entities/seller_info_dto.dart';

import '../../domain/entities/product_recommand_dto.dart';

part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const ProductState._();

  const factory ProductState({
    required bool isLoading,
    required int imageCurrentIndex,
    required bool showShippingCostInfo,

    required ProductDto? productInfo,
    required OptionDto? selectedOption,
    required int totalPrice,
    required int selectProductCount,

    required List<RecommandDto>? similarList,
    required List<ReviewDto>? reviewList,

    required List<RecommandDto>? recentlyList,

    required List<RecommandDto>? businessPickList,

    required Duration remainingTime,

    required SellerInfoDto? sellerInfo,

    @Default(0) int businessPage,
    @Default(true) bool businessHasNext,
    @Default(false) bool businessLoading,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
    isLoading: true,
    imageCurrentIndex: 0,
    showShippingCostInfo: false,
    productInfo: null,
    selectedOption: null,
    totalPrice: 0,
    selectProductCount: 0,

    similarList: [],
    reviewList: [],

    recentlyList: [],

    businessPickList: [],

    remainingTime: const Duration(hours: 2, minutes: 32, seconds: 58),
    sellerInfo: null,
  );
}
