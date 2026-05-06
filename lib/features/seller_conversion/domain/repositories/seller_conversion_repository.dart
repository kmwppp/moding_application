import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/seller_conversion/domain/entities/category_permits_dto.dart';

import '../entities/seller_conversion_request.dart';

abstract class SellerConversionRepository {
  Future<ResponseModel> postSellerConversion({
    required SellerConversionRequest request,
  });

  Future<CategoryPermitsResponseWrapper> getMainPermits();

  Future<CategoryPermitsResponseWrapper> getSubPermits({required int parentId});
}
