import 'package:moding_application/features/alarm/data/repositories/alarm_list_repository_impl.dart';
import 'package:moding_application/features/alarm/domain/entities/alarm_list_response_dto.dart';
import 'package:moding_application/features/alarm/domain/enums/alarm_filter.dart';
import 'package:moding_application/features/alarm/presentation/providers/alarm_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alarm_viewmodel.g.dart';

@Riverpod()
class AlarmViewModel extends _$AlarmViewModel {
  static const int _pageSize = 20;

  @override
  AlarmState build() {
    return AlarmState.initial();
  }

  Future<void> loadInitial(AlarmFilter filter) async {
    if (filter == AlarmFilter.activity) {
      state = state.copyWith(
        isActivityInitialLoading: true,
        activityItems: [],
        activityPage: 0,
        activityHasNext: true,
      );
    } else if (filter == AlarmFilter.notice) {
      state = state.copyWith(
        isNoticeInitialLoading: true,
        noticeItems: [],
        noticePage: 0,
        noticeHasNext: true,
      );
    }

    try {
      final response = await ref
          .read(alarmListRepositoryProvider)
          .getNotifications(filter: filter.code, page: 0, size: _pageSize);

      final data = response.data;
      if (filter == AlarmFilter.activity) {
        state = state.copyWith(
          isActivityInitialLoading: false,
          activityItems: data.content,
          activityPage: data.number,
          activityHasNext: data.number < data.totalPages - 1,
        );
      } else if (filter == AlarmFilter.notice) {
        state = state.copyWith(
          isNoticeInitialLoading: false,
          noticeItems: data.content,
          noticePage: data.number,
          noticeHasNext: data.number < data.totalPages - 1,
        );
      }
    } catch (_) {
      if (filter == AlarmFilter.activity) {
        state = state.copyWith(isActivityInitialLoading: false);
      } else if (filter == AlarmFilter.notice) {
        state = state.copyWith(isNoticeInitialLoading: false);
      }
    }
  }

  Future<void> loadMore(AlarmFilter filter) async {
    if (filter == AlarmFilter.activity) {
      if (state.isActivityFetchingMore || !state.activityHasNext) return;
      state = state.copyWith(isActivityFetchingMore: true);
    } else if (filter == AlarmFilter.notice) {
      if (state.isNoticeFetchingMore || !state.noticeHasNext) return;
      state = state.copyWith(isNoticeFetchingMore: true);
    }

    try {
      final nextPage = filter == AlarmFilter.activity
          ? state.activityPage + 1
          : state.noticePage + 1;

      final response = await ref
          .read(alarmListRepositoryProvider)
          .getNotifications(
            filter: filter.code,
            page: nextPage,
            size: _pageSize,
          );

      final data = response.data;
      if (filter == AlarmFilter.activity) {
        state = state.copyWith(
          isActivityFetchingMore: false,
          activityItems: [...state.activityItems, ...data.content],
          activityPage: data.number,
          activityHasNext: data.number < data.totalPages - 1,
        );
      } else if (filter == AlarmFilter.notice) {
        state = state.copyWith(
          isNoticeFetchingMore: false,
          noticeItems: [...state.noticeItems, ...data.content],
          noticePage: data.number,
          noticeHasNext: data.number < data.totalPages - 1,
        );
      }
    } catch (_) {
      if (filter == AlarmFilter.activity) {
        state = state.copyWith(isActivityFetchingMore: false);
      } else if (filter == AlarmFilter.notice) {
        state = state.copyWith(isNoticeFetchingMore: false);
      }
    }
  }

  void markAsRead(int notificationId) {
    state = state.copyWith(
      activityItems: [
        for (final item in state.activityItems)
          item.id == notificationId
              ? AlarmItemDto(
                  id: item.id,
                  category: item.category,
                  label: item.label,
                  title: item.title,
                  body: item.body,
                  page: item.page,
                  referenceId: item.referenceId,
                  sentAt: item.sentAt,
                  isRead: true,
                )
              : item,
      ],
      noticeItems: [
        for (final item in state.noticeItems)
          item.id == notificationId
              ? AlarmItemDto(
                  id: item.id,
                  category: item.category,
                  label: item.label,
                  title: item.title,
                  body: item.body,
                  page: item.page,
                  referenceId: item.referenceId,
                  sentAt: item.sentAt,
                  isRead: true,
                )
              : item,
      ],
    );
  }
}
