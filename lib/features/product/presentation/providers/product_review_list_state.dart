import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/product/domain/entities/review_dto.dart';

part 'product_review_list_state.freezed.dart';

@freezed
abstract class ProductReviewListState with _$ProductReviewListState {
  const ProductReviewListState._();

  const factory ProductReviewListState({
    required bool isLoading,
    required List<ReviewDto> reviews,
    required int page,
    required bool hasNext,
    required bool isFetchingMore,
  }) = _ProductReviewListState;

  factory ProductReviewListState.initial() => const ProductReviewListState(
    isLoading: false,
    reviews: [],
    page: 0,
    hasNext: true,
    isFetchingMore: false,
  );
}
