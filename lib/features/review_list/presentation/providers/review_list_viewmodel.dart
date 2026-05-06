import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:moding_application/features/review_list/data/repositories/review_list_repository_impl.dart';
import 'package:moding_application/features/review_list/presentation/providers/review_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_list_viewmodel.g.dart';

@Riverpod()
class ReviewListViewModel extends _$ReviewListViewModel {
  static const int _pageSize = 10;

  @override
  ReviewListState build() {
    Future.microtask(loadInitial);
    return ReviewListState.initial();
  }

  Future<void> loadInitial() async {
    state = state.copyWith(
      isLoading: true,
      reviews: [],
      page: 0,
      hasNext: true,
      isFetchingMore: false,
    );

    try {
      final repository = ref.read(reviewListRepositoryProvider);
      final response = await repository.getMyReviewList(0, _pageSize);
      if (!ref.mounted) return;
      final data = response.data;

      state = state.copyWith(
        isLoading: false,
        reviews: data.content,
        page: data.number,
        hasNext: data.number + 1 < data.totalPages,
      );
    } catch (e) {
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, reviews: [], hasNext: false);
      debugPrint('$e');
    }
  }

  Future<void> loadNext() async {
    if (state.isLoading || state.isFetchingMore || !state.hasNext) return;

    state = state.copyWith(isFetchingMore: true);

    try {
      final repository = ref.read(reviewListRepositoryProvider);
      final nextPage = state.page + 1;
      final response = await repository.getMyReviewList(nextPage, _pageSize);
      if (!ref.mounted) return;
      final data = response.data;

      state = state.copyWith(
        reviews: [...state.reviews, ...data.content],
        page: data.number,
        hasNext: data.number + 1 < data.totalPages,
        isFetchingMore: false,
      );
    } catch (e) {
      if (!ref.mounted) return;
      state = state.copyWith(isFetchingMore: false);
      debugPrint('$e');
    }
  }

  Future<ResponseModel> putChangeReview({
    required int reviewId,
    required String content,
    required List<String> existingPhotoUrls,
    required List<String> localPhotoPaths,
  }) async {
    try {
      final repository = ref.read(reviewListRepositoryProvider);
      final existingPhotoFiles = await Future.wait(
        existingPhotoUrls.map(_imageUrlToMultipartFile),
      );
      final localPhotoFiles = await Future.wait(
        localPhotoPaths.map(_photoPathToMultipartFile),
      );

      final request = <String, dynamic>{
        'content': content.trim(),
        'photos': [...existingPhotoFiles, ...localPhotoFiles],
      };

      final response = await repository.putChangeReview(reviewId, request);

      if (response.success) {
        await loadInitial();
      }

      return response;
    } catch (e) {
      debugPrint('$e');
      return const ResponseModel(success: false, message: '리뷰 수정에 실패했습니다.');
    }
  }

  Future<ResponseModel> postCreateReview({
    required int orderId,
    required String content,
    required List<String> localPhotoPaths,
  }) async {
    try {
      final repository = ref.read(reviewListRepositoryProvider);
      final localPhotoFiles = await Future.wait(
        localPhotoPaths.map(_photoPathToMultipartFile),
      );

      final request = <String, dynamic>{
        'content': content.trim(),
        'photos': localPhotoFiles,
      };

      final response = await repository.postCreateReview(orderId, request);
      return response;
    } catch (e) {
      debugPrint('$e');
      return const ResponseModel(success: false, message: '리뷰 작성에 실패했습니다.');
    }
  }

  Future<ResponseModel> deleteMyReview({required int reviewId}) async {
    try {
      final repository = ref.read(reviewListRepositoryProvider);
      final response = await repository.deleteMyReview(reviewId);
      return response;
    } catch (e) {
      debugPrint('$e');
      return const ResponseModel(success: false, message: '리뷰 삭제에 실패했습니다.');
    }
  }

  Future<MultipartFile> _photoPathToMultipartFile(String photoPath) {
    return MultipartFile.fromFile(
      photoPath,
      filename: photoPath.split('/').last,
    );
  }

  Future<MultipartFile> _imageUrlToMultipartFile(String imageUrl) async {
    final dio = ref.read(dioProvider);
    final response = await dio.get<List<int>>(
      imageUrl,
      options: Options(responseType: ResponseType.bytes),
    );

    final bytes = response.data;
    if (bytes == null || bytes.isEmpty) {
      throw Exception('이미지 데이터를 불러오지 못했습니다.');
    }

    final uri = Uri.tryParse(imageUrl);
    final filename = uri != null && uri.pathSegments.isNotEmpty
        ? uri.pathSegments.last
        : 'review_photo.jpg';

    return MultipartFile.fromBytes(bytes, filename: filename);
  }
}
