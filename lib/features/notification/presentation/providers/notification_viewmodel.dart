import 'package:moding_application/features/notification/presentation/providers/notification_state.dart';
import 'package:moding_application/features/notification/data/repositories/notification_repository_impl.dart';
import 'package:moding_application/router/enums/notification_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_viewmodel.g.dart';

@Riverpod()
class NotificationViewModel extends _$NotificationViewModel {
  static const int _pageSize = 10;

  @override
  NotificationState build() {
    return NotificationState.initial();
  }

  Future<void> loadInitial(NotificationType type) async {
    state = state.copyWith(isInitialLoading: true);
    try {
      if (type == NotificationType.NOTIFICATION) {
        final response = await ref
            .read(notificationRepositoryProvider)
            .getNoticeList(page: 0, size: _pageSize);

        if (!ref.mounted) return;

        state = state.copyWith(
          isInitialLoading: false,
          noticeItems: response.data.content,
          noticePage: response.data.number,
          noticeHasNext: response.data.number + 1 < response.data.totalPages,
          noticeExpandedId: null,
          noticeContents: <int, String>{},
        );
        return;
      }

      final response = await ref
          .read(notificationRepositoryProvider)
          .getFAQList(
            page: 0,
            size: _pageSize,
            category: state.selectedFaqCategory.queryValue,
          );

      if (!ref.mounted) return;

      state = state.copyWith(
        isInitialLoading: false,
        faqItems: response.data.content,
        faqPage: response.data.number,
        faqHasNext: response.data.number + 1 < response.data.totalPages,
        faqExpandedId: null,
        faqContents: <int, String>{},
      );
    } catch (_) {
      if (!ref.mounted) return;
      state = state.copyWith(isInitialLoading: false);
    }
  }

  Future<void> loadMore(NotificationType type) async {
    if (state.isFetchingMore) return;

    if (type == NotificationType.NOTIFICATION && !state.noticeHasNext) return;
    if (type == NotificationType.FAQ && !state.faqHasNext) return;

    state = state.copyWith(isFetchingMore: true);

    try {
      if (type == NotificationType.NOTIFICATION) {
        final nextPage = state.noticePage + 1;
        final response = await ref
            .read(notificationRepositoryProvider)
            .getNoticeList(page: nextPage, size: _pageSize);

        if (!ref.mounted) return;

        state = state.copyWith(
          isFetchingMore: false,
          noticeItems: [...state.noticeItems, ...response.data.content],
          noticePage: response.data.number,
          noticeHasNext: response.data.number + 1 < response.data.totalPages,
        );
        return;
      }

      final nextPage = state.faqPage + 1;
      final response = await ref
          .read(notificationRepositoryProvider)
          .getFAQList(
            page: nextPage,
            size: _pageSize,
            category: state.selectedFaqCategory.queryValue,
          );

      if (!ref.mounted) return;

      state = state.copyWith(
        isFetchingMore: false,
        faqItems: [...state.faqItems, ...response.data.content],
        faqPage: response.data.number,
        faqHasNext: response.data.number + 1 < response.data.totalPages,
      );
    } catch (_) {
      if (!ref.mounted) return;
      state = state.copyWith(isFetchingMore: false);
    }
  }

  Future<void> selectFaqCategory(NotificationFaqCategory category) async {
    if (state.selectedFaqCategory == category) return;

    state = state.copyWith(
      selectedFaqCategory: category,
      faqItems: const [],
      faqContents: const <int, String>{},
      faqExpandedId: null,
      faqPage: 0,
      faqHasNext: true,
    );

    await loadInitial(NotificationType.FAQ);
  }

  Future<void> toggleNotice(int noticeId) async {
    if (state.noticeExpandedId == noticeId) {
      state = state.copyWith(noticeExpandedId: null);
      return;
    }

    state = state.copyWith(noticeExpandedId: noticeId);

    if (state.noticeContents.containsKey(noticeId)) return;

    state = state.copyWith(
      isContentLoading: {...state.isContentLoading, noticeId},
    );

    try {
      final response = await ref
          .read(notificationRepositoryProvider)
          .getNoticeContent(noticeId);

      if (!ref.mounted) return;

      final loadingSet = {...state.isContentLoading}..remove(noticeId);

      state = state.copyWith(
        isContentLoading: loadingSet,
        noticeContents: {
          ...state.noticeContents,
          noticeId: response.data.content,
        },
      );
    } catch (_) {
      if (!ref.mounted) return;
      final loadingSet = {...state.isContentLoading}..remove(noticeId);
      state = state.copyWith(isContentLoading: loadingSet);
    }
  }

  Future<void> toggleFaq(int faqId) async {
    if (state.faqExpandedId == faqId) {
      state = state.copyWith(faqExpandedId: null);
      return;
    }

    state = state.copyWith(faqExpandedId: faqId);

    if (state.faqContents.containsKey(faqId)) return;

    state = state.copyWith(
      isContentLoading: {...state.isContentLoading, faqId},
    );

    try {
      final response = await ref
          .read(notificationRepositoryProvider)
          .getFAQContent(faqId);

      if (!ref.mounted) return;

      final loadingSet = {...state.isContentLoading}..remove(faqId);

      state = state.copyWith(
        isContentLoading: loadingSet,
        faqContents: {...state.faqContents, faqId: response.data.answer},
      );
    } catch (_) {
      if (!ref.mounted) return;
      final loadingSet = {...state.isContentLoading}..remove(faqId);
      state = state.copyWith(isContentLoading: loadingSet);
    }
  }
}
