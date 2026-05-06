import 'package:moding_application/features/cart/domain/entities/wish_list/wish_list_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/repositories/wish_list/wish_list_repository.dart';
import '../../data_source/wish_list/wish_list_data_source.dart';

part 'wish_list_repository_impl.g.dart';

@riverpod
WishListRepository wishListRepository(Ref ref) {
  final dataSource = ref.watch(wishListDataSourceProvider);
  return WishListRepositoryImpl(dataSource);
}

class WishListRepositoryImpl implements WishListRepository {
  final WishListDataSource _dataSource;

  WishListRepositoryImpl(this._dataSource);

  @override
  Future<WishListDto> getWishList(int page) async {
    final response = await _dataSource.getWishList(page);
    final data = response['data'];
    return WishListDto.fromJson(data);
  }
}
