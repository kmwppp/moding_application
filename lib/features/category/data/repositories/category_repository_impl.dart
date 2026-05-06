import 'package:moding_application/features/category/data/data_source/category_data_source.dart';
import 'package:moding_application/features/category/domain/entities/main_category_dto.dart';
import 'package:moding_application/features/category/domain/repositories/category_repository.dart';
import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository_impl.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  final dataSource = ref.watch(categoryDataSourceProvider);
  return CategoryRepositoryImpl(dataSource);
}

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource _dataSource;

  CategoryRepositoryImpl(this._dataSource);

  @override
  Future<MainCategoryResponseDto> getMainCategoryList() async {
    final response = await _dataSource.getMainCategoryList();
    return MainCategoryResponseDto.fromJson(response);
  }

  @override
  Future<MainCategoryResponseDto> getSubCategoryList(int parentId) async {
    final response = await _dataSource.getSubCategoryList(parentId);
    return MainCategoryResponseDto.fromJson(response);
  }

  @override
  Future<ProductRecommandDto> getProductList({
    required int page,
    required List<int> categoryIds,
  }) async {
    final response = await _dataSource.getProductList(
      page: page,
      categoryIds: categoryIds,
    );
    final data = response['data'];
    return ProductRecommandDto.fromJson(data);
  }
}
