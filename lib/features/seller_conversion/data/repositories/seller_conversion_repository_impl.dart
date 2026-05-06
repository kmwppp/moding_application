import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/seller_conversion/data/data_source/seller_conversion_data_source.dart';
import 'package:moding_application/features/seller_conversion/domain/entities/category_permits_dto.dart';
import 'package:moding_application/features/seller_conversion/domain/entities/seller_conversion_request.dart';
import 'package:moding_application/features/seller_conversion/domain/repositories/seller_conversion_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'seller_conversion_repository_impl.g.dart';

@riverpod
SellerConversionRepository sellerConversionRepository(Ref ref) {
  final dataSource = ref.watch(sellerConversionDataSourceProvider);
  return SellerConversionRepositoryImpl(dataSource);
}

class SellerConversionRepositoryImpl implements SellerConversionRepository {
  final SellerConversionDataSource _dataSource;

  SellerConversionRepositoryImpl(this._dataSource);

  @override
  Future<ResponseModel> postSellerConversion({
    required SellerConversionRequest request,
  }) async {
    try {
      final response = await _dataSource.postSellerConversion(request: request);
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response != null && e.response?.data != null) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }

      return const ResponseModel(success: false, message: '서버와 연결할 수 없습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '시스템 오류가 발생했습니다.');
    }
  }

  @override
  Future<CategoryPermitsResponseWrapper> getMainPermits() async {
    final response = await _dataSource.getMainPermits();
    return CategoryPermitsResponseWrapper.fromJson(response);
  }

  @override
  Future<CategoryPermitsResponseWrapper> getSubPermits({
    required int parentId,
  }) async {
    final response = await _dataSource.getSubPermits(parentId);
    return CategoryPermitsResponseWrapper.fromJson(response);
  }
}
