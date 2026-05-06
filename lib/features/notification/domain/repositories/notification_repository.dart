import 'package:moding_application/features/notification/domain/entities/faq_content_dto.dart';
import 'package:moding_application/features/notification/domain/entities/faq_list_response_dto.dart';
import 'package:moding_application/features/notification/domain/entities/notice_content_dto.dart';
import 'package:moding_application/features/notification/domain/entities/notice_list_response_dto.dart';

abstract class NotificationRepository {
  Future<NoticeListResponseWrapper> getNoticeList({
    required int page,
    required int size,
  });

  Future<NoticeContentResponseWrapper> getNoticeContent(int noticeId);

  Future<FaqListResponseWrapper> getFAQList({
    required int page,
    required int size,
    String? category,
  });

  Future<FaqContentResponseWrapper> getFAQContent(int faqId);
}
