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
    await getMainCategoryList();
    await getSubCategoryList(index: 0, parentId: 1);
    await getProductList(page: 0, categoryIds: [1]);
  }

  void clickedSubCategory(MainCategoryDto selectedSubCategory) {
    state = state.copyWith(
      selectedCategory: selectedSubCategory,
      isOpenSubCategoryView: false,
    );
    getProductList(page: 0, categoryIds: [selectedSubCategory.id]);
  }

  Future<void> getMainCategoryList() async {
    try {
      final repository = ref.read(categoryRepositoryProvider);
      final mainCategoryList = await repository.getMainCategoryList();
      state = state.copyWith(
        mainCategory: mainCategoryList,
        selectedCategory: mainCategoryList.data[0],
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> getSubCategoryList({
    required int index,
    required int parentId,
  }) async {
    try {
      final repository = ref.read(categoryRepositoryProvider);
      final subCategoryList = await repository.getSubCategoryList(parentId);
      state = state.copyWith(
        subCategory: subCategoryList,
        isMainCategorySelectedIndex: index,
        isOpenSubCategoryView: true,
      );
    } catch (e) {
      print(e);
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
      print(e);
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
      print(e);
    }
  }
}
