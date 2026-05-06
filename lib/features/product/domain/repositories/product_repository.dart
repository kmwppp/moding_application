import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/home/domain/entities/home_basic_item_model.dart';
import 'package:moding_application/features/product/domain/entities/product_dto.dart';
import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';
import 'package:moding_application/features/product/domain/entities/seller_info_dto.dart';

import '../entities/review_dto.dart';
import '../enums/product_recommand_type.dart';

abstract class ProductRepository {
  Future<ProductDto> getProductInfo(int productId);

  Future<ResponseModel> productWishListState(int productId, bool isWishList);

  Future<List<ReviewDto>> getProductReviewList(
    int productId,
    int pageNum,
    int size,
  );

  Future<List<HomeBasicItemModel>> getProductRecentlyList();

  Future<SellerInfoDto> getSellerInfo(int sellerProfileId);

  Future<ProductRecommandDto> getProductRecommendList({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  });

  Future<ResponseModel> postPutInShoppingCart({
    required int productId,
    required int productOptionId,
    required int quantity,
  });
}
