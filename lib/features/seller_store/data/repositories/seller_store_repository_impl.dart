import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../product/domain/entities/product_recommand_dto.dart';
import '../../domain/repositories/seller_store_repository.dart';
import '../data_source/seller_store_data_source.dart';

part 'seller_store_repository_impl.g.dart';

@riverpod
SellerStoreRepository sellerStoreRepository(Ref ref) {
  final dataSource = ref.watch(sellerStoreDataSourceProvider);
  return SellerStoreRepositoryImpl(dataSource);
}

class SellerStoreRepositoryImpl implements SellerStoreRepository {
  SellerStoreRepositoryImpl(this._dataSource);

  final SellerStoreDataSource _dataSource;

  @override
  Future<ProductRecommandDto> getSellerProducts({
    required int sellerProfileId,
    required int page,
    required int size,
  }) async {
    final response = await _dataSource.getSellerProducts(
      sellerProfileId: sellerProfileId,
      page: page,
      size: size,
    );
    final data = response['data'];
    return ProductRecommandDto.fromJson(data);
  }
}
