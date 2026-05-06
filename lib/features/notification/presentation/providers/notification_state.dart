import 'package:moding_application/features/notification/domain/entities/faq_list_response_dto.dart';
import 'package:moding_application/features/notification/domain/entities/notice_list_response_dto.dart';

class NotificationState {
  const NotificationState({
    required this.isInitialLoading,
    required this.isFetchingMore,
    required this.isContentLoading,
    required this.noticeItems,
    required this.faqItems,
    required this.noticeContents,
    required this.faqContents,
    required this.noticeExpandedId,
    required this.faqExpandedId,
    required this.noticePage,
    required this.faqPage,
    required this.noticeHasNext,
    required this.faqHasNext,
    required this.selectedFaqCategory,
  });

  final bool isInitialLoading;
  final bool isFetchingMore;
  final Set<int> isContentLoading;
  final List<NoticeListDto> noticeItems;
  final List<FaqDto> faqItems;
  final Map<int, String> noticeContents;
  final Map<int, String> faqContents;
  final int? noticeExpandedId;
  final int? faqExpandedId;
  final int noticePage;
  final int faqPage;
  final bool noticeHasNext;
  final bool faqHasNext;
  final NotificationFaqCategory selectedFaqCategory;

  factory NotificationState.initial() {
    return const NotificationState(
      isInitialLoading: false,
      isFetchingMore: false,
      isContentLoading: <int>{},
      noticeItems: <NoticeListDto>[],
      faqItems: <FaqDto>[],
      noticeContents: <int, String>{},
      faqContents: <int, String>{},
      noticeExpandedId: null,
      faqExpandedId: null,
      noticePage: 0,
      faqPage: 0,
      noticeHasNext: true,
      faqHasNext: true,
      selectedFaqCategory: NotificationFaqCategory.all,
    );
  }

  NotificationState copyWith({
    bool? isInitialLoading,
    bool? isFetchingMore,
    Set<int>? isContentLoading,
    List<NoticeListDto>? noticeItems,
    List<FaqDto>? faqItems,
    Map<int, String>? noticeContents,
    Map<int, String>? faqContents,
    Object? noticeExpandedId = _sentinel,
    Object? faqExpandedId = _sentinel,
    int? noticePage,
    int? faqPage,
    bool? noticeHasNext,
    bool? faqHasNext,
    NotificationFaqCategory? selectedFaqCategory,
  }) {
    return NotificationState(
      isInitialLoading: isInitialLoading ?? this.isInitialLoading,
      isFetchingMore: isFetchingMore ?? this.isFetchingMore,
      isContentLoading: isContentLoading ?? this.isContentLoading,
      noticeItems: noticeItems ?? this.noticeItems,
      faqItems: faqItems ?? this.faqItems,
      noticeContents: noticeContents ?? this.noticeContents,
      faqContents: faqContents ?? this.faqContents,
      noticeExpandedId: noticeExpandedId == _sentinel
          ? this.noticeExpandedId
          : noticeExpandedId as int?,
      faqExpandedId: faqExpandedId == _sentinel
          ? this.faqExpandedId
          : faqExpandedId as int?,
      noticePage: noticePage ?? this.noticePage,
      faqPage: faqPage ?? this.faqPage,
      noticeHasNext: noticeHasNext ?? this.noticeHasNext,
      faqHasNext: faqHasNext ?? this.faqHasNext,
      selectedFaqCategory: selectedFaqCategory ?? this.selectedFaqCategory,
    );
  }
}

enum NotificationFaqCategory {
  all(label: '전체', queryValue: null),
  shipping(label: '배송', queryValue: 'SHIPPING'),
  payment(label: '결제', queryValue: 'PAYMENT'),
  order(label: '주문', queryValue: 'ORDER'),
  product(label: '상품', queryValue: 'PRODUCT'),
  account(label: '계정', queryValue: 'ACCOUNT'),
  etc(label: '그 외', queryValue: 'ETC');

  const NotificationFaqCategory({
    required this.label,
    required this.queryValue,
  });

  final String label;
  final String? queryValue;
}

const Object _sentinel = Object();
