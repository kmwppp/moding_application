import 'package:moding_application/features/cart/domain/entities/wish_list/wish_list_dto.dart';

abstract class WishListRepository {
  Future<WishListDto> getWishList(int page);
}
