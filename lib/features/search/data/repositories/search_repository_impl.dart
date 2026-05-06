import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../product/domain/entities/product_recommand_dto.dart';
import '../../../product/domain/enums/product_recommand_type.dart';
import '../../domain/repositories/search_repository.dart';
import '../data_source/search_data_source.dart';

part 'search_repository_impl.g.dart';

@riverpod
SearchRepository searchRepository(Ref ref) {
  final dataSource = ref.watch(searchDataSourceProvider);
  return SearchRepositoryImpl(dataSource);
}

class SearchRepositoryImpl implements SearchRepository {
  final SearchDataSource _dataSource;

  SearchRepositoryImpl(this._dataSource);

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

  @override
  Future<ProductRecommandDto> getSearchProductList({
    required String keyword,
    required int page,
    required int size,
    int? productId,
  }) async {
    final response = await _dataSource.getSearchProductList(
      keyword: keyword,
      page: page,
      size: size,
    );
    final data = response['data'];
    return ProductRecommandDto.fromJson(data);
  }
}
