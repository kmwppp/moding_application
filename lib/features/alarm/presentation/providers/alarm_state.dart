import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/alarm/domain/entities/alarm_list_response_dto.dart';

part 'alarm_state.freezed.dart';

@freezed
abstract class AlarmState with _$AlarmState {
  const factory AlarmState({
    @Default(true) bool isActivityInitialLoading,
    @Default(false) bool isActivityFetchingMore,
    @Default(<AlarmItemDto>[]) List<AlarmItemDto> activityItems,
    @Default(0) int activityPage,
    @Default(true) bool activityHasNext,
    @Default(true) bool isNoticeInitialLoading,
    @Default(false) bool isNoticeFetchingMore,
    @Default(<AlarmItemDto>[]) List<AlarmItemDto> noticeItems,
    @Default(0) int noticePage,
    @Default(true) bool noticeHasNext,
  }) = _AlarmState;

  factory AlarmState.initial() => const AlarmState();
}
