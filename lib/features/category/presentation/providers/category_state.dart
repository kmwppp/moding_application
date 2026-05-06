import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';

import '../../domain/entities/main_category_dto.dart';

part 'category_state.freezed.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const CategoryState._();

  const factory CategoryState({
    required bool isLoading,
    required MainCategoryResponseDto? mainCategory,
    required int isMainCategorySelectedIndex,
    required bool isOpenSubCategoryView,
    required MainCategoryResponseDto? subCategory,
    required MainCategoryDto? selectedCategory,

    required ProductRecommandDto? productList,

    @Default(0) int page,
    @Default(true) bool hasNext,
    @Default(false) bool isFetchingMore,
  }) = _CategoryState;

  factory CategoryState.initial() => CategoryState(
    isLoading: true,
    mainCategory: null,
    isMainCategorySelectedIndex: 0,
    isOpenSubCategoryView: false,
    subCategory: null,
    selectedCategory: null,
    productList: null,
  );
}
