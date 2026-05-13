import 'package:moding_application/features/product/domain/entities/seller_info_dto.dart';
import 'package:moding_application/features/seller_info/data/data_source/seller_info_data_source.dart';
import 'package:moding_application/features/seller_info/domain/repositories/seller_info_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'seller_info_repository_impl.g.dart';

@riverpod
SellerInfoRepository sellerInfoRepository(Ref ref) {
  final dataSource = ref.watch(sellerInfoDataSourceProvider);
  return SellerInfoRepositoryImpl(dataSource);
}

class SellerInfoRepositoryImpl implements SellerInfoRepository {
  final SellerInfoDataSource _dataSource;

  SellerInfoRepositoryImpl(this._dataSource);

  @override
  Future<SellerInfoDto> getSellerInfo(int sellerProfileId) async {
    final response = await _dataSource.getSellerProfile(sellerProfileId);
    final data = response['data'];
    return SellerInfoDto.fromJson(data);
  }
}
