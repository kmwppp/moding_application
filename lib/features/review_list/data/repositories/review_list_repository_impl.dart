import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/review_list/domain/entities/review_list_response_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/review_list_repository.dart';
import '../data_source/review_list_data_source.dart';

part 'review_list_repository_impl.g.dart';

@riverpod
ReviewListRepository reviewListRepository(Ref ref) {
  final dataSource = ref.watch(reviewListDataSourceProvider);
  return ReviewListRepositoryImpl(dataSource);
}

class ReviewListRepositoryImpl implements ReviewListRepository {
  final ReviewListDataSource _dataSource;

  ReviewListRepositoryImpl(this._dataSource);

  @override
  Future<ReviewListResponseWrapper> getMyReviewList(int page, int size) async {
    final response = await _dataSource.getReviewList(page, size);
    return ReviewListResponseWrapper.fromJson(response);
  }

  @override
  Future<ResponseModel> postCreateReview(
    int orderId,
    Map<String, dynamic> request,
  ) async {
    try {
      final response = await _dataSource.postCreateReview(orderId, request);
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }
      return const ResponseModel(success: false, message: '리뷰 작성에 실패했습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '리뷰 작성에 실패했습니다.');
    }
  }

  @override
  Future<ResponseModel> putChangeReview(
    int reviewId,
    Map<String, dynamic> request,
  ) async {
    try {
      final response = await _dataSource.putChangeReview(reviewId, request);
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }
      return const ResponseModel(success: false, message: '리뷰 수정에 실패했습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '리뷰 수정에 실패했습니다.');
    }
  }

  @override
  Future<ResponseModel> deleteMyReview(int reviewId) async {
    try {
      final response = await _dataSource.deleteMyReview(reviewId);
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }
      return const ResponseModel(success: false, message: '리뷰 삭제에 실패했습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '리뷰 삭제에 실패했습니다.');
    }
  }
}
