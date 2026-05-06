import 'package:moding_application/features/category/domain/entities/main_category_dto.dart';
import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';

abstract class CategoryRepository {
  Future<MainCategoryResponseDto> getMainCategoryList();

  Future<MainCategoryResponseDto> getSubCategoryList(int parentId);

  Future<ProductRecommandDto> getProductList({
    required int page,
    required List<int> categoryIds,
  });
}
