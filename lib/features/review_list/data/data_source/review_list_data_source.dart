import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_list_data_source.g.dart';

@riverpod
ReviewListDataSource reviewListDataSource(Ref ref) {
  return ReviewListDataSource(ref.watch(dioProvider));
}

class ReviewListDataSource {
  final Dio _dio;

  ReviewListDataSource(this._dio);

  Future<Map<String, dynamic>> getReviewList(int page, int size) async {
    final response = await _dio.get(AppHttpUrl.getMyReviewList(page, size));
    return response.data;
  }

  Future<Map<String, dynamic>> putChangeReview(
    int reviewId,
    Map<String, dynamic> request,
  ) async {
    final formData = FormData.fromMap(request);
    final response = await _dio.put(
      AppHttpUrl.myReviewControl(reviewId),
      data: formData,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> postCreateReview(
    int orderId,
    Map<String, dynamic> request,
  ) async {
    final formData = FormData.fromMap(request);
    final response = await _dio.post(
      AppHttpUrl.postOrderReview(orderId),
      data: formData,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> deleteMyReview(int reviewId) async {
    final response = await _dio.delete(AppHttpUrl.myReviewControl(reviewId));
    return response.data;
  }
}
