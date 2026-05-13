import 'package:flutter/foundation.dart';
import 'package:moding_application/features/category/data/repositories/category_repository_impl.dart';
import 'package:moding_application/features/category/presentation/providers/category_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/main_category_dto.dart';

part 'category_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class CategoryViewModel extends _$CategoryViewModel {
  @override
  CategoryState build() {
    return CategoryState.initial();
  }

  Future<void> init() async {
    if (state.mainCategory != null &&
        state.productList != null &&
        state.selectedCategory != null) {
      return;
    }

    await getMainCategoryList();

    final mainCategory = state.mainCategory;
    if (mainCategory == null || mainCategory.data.isEmpty) return;

    final selectedIndex =
        state.isMainCategorySelectedIndex >= 0 &&
            state.isMainCategorySelectedIndex < mainCategory.data.length
        ? state.isMainCategorySelectedIndex
        : 0;
    final selectedMainCategory = mainCategory.data[selectedIndex];

    if (state.subCategory == null) {
      await getSubCategoryList(
        index: selectedIndex,
        parentId: selectedMainCategory.id,
      );
    }

    if (state.productList == null) {
      await getProductList(
        page: 0,
        categoryIds: [state.selectedCategory?.id ?? selectedMainCategory.id],
      );
    }
  }

  Future<void> selectMainCategoryByName(String name) async {
    if (state.mainCategory == null || state.mainCategory!.data.isEmpty) {
      await getMainCategoryList();
    }

    final mainCategory = state.mainCategory;
    if (mainCategory == null || mainCategory.data.isEmpty) return;

    final index = mainCategory.data.indexWhere((item) => item.name == name);
    final selectedIndex = index >= 0 ? index : 0;
    final selectedCategory = mainCategory.data[selectedIndex];

    await getSubCategoryList(
      index: selectedIndex,
      parentId: selectedCategory.id,
    );
  }

  void clickedSubCategory(MainCategoryDto selectedSubCategory, {int? index}) {
    state = state.copyWith(
      selectedCategory: selectedSubCategory,
      selectedSubCategoryIndex: index ?? state.selectedSubCategoryIndex,
      isOpenSubCategoryView: false,
    );
    getProductList(page: 0, categoryIds: [selectedSubCategory.id]);
  }

  void toggleSubCategoryView() {
    if (state.subCategory == null || state.subCategory!.data.isEmpty) return;
    state = state.copyWith(isOpenSubCategoryView: !state.isOpenSubCategoryView);
  }

  Future<void> getMainCategoryList() async {
    try {
      final repository = ref.read(categoryRepositoryProvider);
      final mainCategoryList = await repository.getMainCategoryList();
      final previousSelectedCategory = state.selectedCategory;
      final matchedIndex = previousSelectedCategory == null
          ? -1
          : mainCategoryList.data.indexWhere(
              (item) => item.id == previousSelectedCategory.id,
            );

      state = state.copyWith(
        mainCategory: mainCategoryList,
        selectedCategory: matchedIndex >= 0
            ? mainCategoryList.data[matchedIndex]
            : mainCategoryList.data[0],
        isMainCategorySelectedIndex: matchedIndex >= 0 ? matchedIndex : 0,
      );
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> getSubCategoryList({
    required int index,
    required int parentId,
  }) async {
    try {
      final repository = ref.read(categoryRepositoryProvider);
      final subCategoryList = await repository.getSubCategoryList(parentId);
      final mainCategory = state.mainCategory;
      final selectedMainCategory =
          mainCategory != null && index >= 0 && index < mainCategory.data.length
          ? mainCategory.data[index]
          : state.selectedCategory;

      if (subCategoryList.data.isEmpty) {
        state = state.copyWith(
          subCategory: subCategoryList,
          isMainCategorySelectedIndex: index,
          isOpenSubCategoryView: false,
          selectedCategory: selectedMainCategory,
          selectedSubCategoryIndex: -1,
        );
        if (selectedMainCategory != null) {
          await getProductList(page: 0, categoryIds: [selectedMainCategory.id]);
        }
        return;
      }

      final firstSubCategory = subCategoryList.data.first;
      state = state.copyWith(
        subCategory: subCategoryList,
        isMainCategorySelectedIndex: index,
        isOpenSubCategoryView: false,
        selectedCategory: firstSubCategory,
        selectedSubCategoryIndex: 0,
      );
      await getProductList(page: 0, categoryIds: [firstSubCategory.id]);
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> getProductList({
    required int page,
    required List<int> categoryIds,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(categoryRepositoryProvider);

      final productList = await repository.getProductList(
        page: page,
        categoryIds: categoryIds,
      );

      state = state.copyWith(
        productList: productList,
        page: page,
        hasNext: true,
        isLoading: false,
      );
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchMore({required List<int> categoryIds}) async {
    if (state.isFetchingMore || !state.hasNext) return;

    state = state.copyWith(isFetchingMore: true);

    try {
      final repository = ref.read(categoryRepositoryProvider);

      final nextPage = state.page + 1;

      final response = await repository.getProductList(
        page: nextPage,
        categoryIds: categoryIds,
      );

      final currentList = state.productList?.content ?? [];

      state = state.copyWith(
        productList: state.productList!.copyWith(
          content: [...currentList, ...response.content],
        ),
        page: nextPage,
        hasNext: true, // 서버에서 last 내려준다고 가정
        isFetchingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isFetchingMore: false);
      debugPrint('$e');
    }
  }
}
