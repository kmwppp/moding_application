import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/review_list/domain/entities/review_list_response_dto.dart';

abstract class ReviewListRepository {
  Future<ReviewListResponseWrapper> getMyReviewList(int page, int size);
  Future<ResponseModel> postCreateReview(
    int orderId,
    Map<String, dynamic> request,
  );
  Future<ResponseModel> putChangeReview(
    int reviewId,
    Map<String, dynamic> request,
  );
  Future<ResponseModel> deleteMyReview(int reviewId);
}
