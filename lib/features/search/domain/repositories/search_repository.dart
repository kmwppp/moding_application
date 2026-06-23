import '../../../product/domain/entities/product_recommand_dto.dart';
import '../../../product/domain/enums/product_recommand_type.dart';
import '../entities/search_sort.dart';

abstract class SearchRepository {
  Future<ProductRecommandDto> getProductList({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  });

  Future<ProductRecommandDto> getSearchProductList({
    required String keyword,
    required int page,
    required int size,
    required SearchSort sort,
  });
}
