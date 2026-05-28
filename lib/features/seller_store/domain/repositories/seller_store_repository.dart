import '../../../product/domain/entities/product_recommand_dto.dart';

abstract class SellerStoreRepository {
  Future<ProductRecommandDto> getSellerProducts({
    required int sellerProfileId,
    required int page,
    required int size,
  });
}
