import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/review_list/domain/entities/review_list_response_dto.dart';

part 'review_list_state.freezed.dart';

@freezed
abstract class ReviewListState with _$ReviewListState {
  const ReviewListState._();

  const factory ReviewListState({
    required bool isLoading,
    required List<ReviewDto> reviews,
    @Default(0) int page,
    @Default(true) bool hasNext,
    @Default(false) bool isFetchingMore,
  }) = _ReviewListState;

  factory ReviewListState.initial() =>
      const ReviewListState(isLoading: true, reviews: []);
}
