import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/home/domain/entities/home_basic_item_model.dart';
import 'package:moding_application/features/product/domain/entities/product_dto.dart';
import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';
import 'package:moding_application/features/product/domain/entities/product_review_list_response_dto.dart';
import 'package:moding_application/features/product/domain/entities/review_dto.dart';
import 'package:moding_application/features/product/domain/entities/seller_info_dto.dart';
import 'package:moding_application/features/product/domain/repositories/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

import '../../../../core/network/exceptions/api_code_exception.dart';
import '../../../../core/utils/alcohol_purchase_flow.dart';
import '../../domain/enums/product_recommand_type.dart';
import '../data_source/product_data_source.dart';

part 'product_repository_impl.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  final dataSource = ref.watch(productDataSourceProvider);
  return ProductRepositoryImpl(dataSource);
}

class ProductRepositoryImpl implements ProductRepository {
  final ProductDataSource _dataSource;

  ProductRepositoryImpl(this._dataSource);

  @override
  Future<ProductDto> getProductInfo(int productId) async {
    try {
      final response = await _dataSource.getProductInfo(productId);
      final data = response['data'];
      return ProductDto.fromJson(data);
    } on DioException catch (error) {
      final exception = ApiCodeException.fromDio(
        error,
        allowedCodes: alcoholPurchaseErrorCodes,
      );
      if (exception != null) throw exception;
      rethrow;
    }
  }

  @override
  Future<List<ReviewDto>> getProductReviewList(
    int productId,
    int pageNum,
    int size,
  ) async {
    final response = await getProductReviewPage(productId, pageNum, size);
    return response.content;
  }

  @override
  Future<ProductReviewListResponseDto> getProductReviewPage(
    int productId,
    int page,
    int size,
  ) async {
    final response = await _dataSource.getProductReview(productId, page, size);
    final data = response['data'];

    appLog(data);
    return ProductReviewListResponseDto.fromJson(data);
  }

  @override
  Future<List<HomeBasicItemModel>> getProductRecentlyList() async {
    final response = await _dataSource.getProductRecently();

    final data = response['data'] as List<dynamic>;

    appLog(data);
    return data
        .map<HomeBasicItemModel>(
          (item) => HomeBasicItemModel.fromJson(item as Map<String, dynamic>),
        )
        .toList(growable: false);
  }

  @override
  Future<ResponseModel> productWishListState(
    int productId,
    bool isWishList,
  ) async {
    final response = await _dataSource.productWishListState(
      productId,
      isWishList,
    );
    final data = response;
    return ResponseModel.fromJson(data);
  }

  @override
  Future<SellerInfoDto> getSellerInfo(int sellerProfileId) async {
    final response = await _dataSource.getSellerProfile(sellerProfileId);
    final data = response['data'];
    return SellerInfoDto.fromJson(data);
  }

  @override
  Future<ProductRecommandDto> getProductRecommendList({
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
  Future<ResponseModel> postPutInShoppingCart({
    required int productId,
    required int productOptionId,
    required int quantity,
  }) async {
    final response = await _dataSource.postPutInShoppingCart(
      productId: productId,
      productOptionId: productOptionId,
      quantity: quantity,
    );
    return ResponseModel.fromJson(response);
  }
}
