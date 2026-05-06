import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../product/domain/enums/product_recommand_type.dart';
import '../../domain/repositories/product_list_repository.dart';
import '../data_source/product_list_data_source.dart';

part 'product_list_repository_impl.g.dart';

@riverpod
ProductListRepository productListRepository(Ref ref) {
  final dataSource = ref.watch(productListDataSourceProvider);
  return ProductListRepositoryImpl(dataSource);
}

class ProductListRepositoryImpl implements ProductListRepository {
  final ProductListDataSource _dataSource;

  ProductListRepositoryImpl(this._dataSource);

  @override
  Future<ProductRecommandDto> getProductList({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  }) async {
    final response = await _dataSource.getProductRecommend(
      type: type,
      page: page,
      size: size,
      productId: productId,
    );
    final data = response['data'];
    return ProductRecommandDto.fromJson(data);
  }
}
