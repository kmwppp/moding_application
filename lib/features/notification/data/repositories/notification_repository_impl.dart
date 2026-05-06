import 'package:moding_application/features/notification/data/data_source/notification_data_source.dart';
import 'package:moding_application/features/notification/domain/entities/faq_content_dto.dart';
import 'package:moding_application/features/notification/domain/entities/faq_list_response_dto.dart';
import 'package:moding_application/features/notification/domain/entities/notice_content_dto.dart';
import 'package:moding_application/features/notification/domain/entities/notice_list_response_dto.dart';
import 'package:moding_application/features/notification/domain/repositories/notification_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_repository_impl.g.dart';

@riverpod
NotificationRepository notificationRepository(Ref ref) {
  final dataSource = ref.watch(notificationDataSourceProvider);
  return NotificationRepositoryImpl(dataSource);
}

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationDataSource _dataSource;

  NotificationRepositoryImpl(this._dataSource);

  @override
  Future<FaqContentResponseWrapper> getFAQContent(int faqId) async {
    final response = await _dataSource.getFAQContent(faqId);
    return FaqContentResponseWrapper.fromJson(response);
  }

  @override
  Future<FaqListResponseWrapper> getFAQList({
    required int page,
    required int size,
    String? category,
  }) async {
    final response = await _dataSource.getFAQs(
      page: page,
      size: size,
      category: category,
    );
    return FaqListResponseWrapper.fromJson(response);
  }

  @override
  Future<NoticeContentResponseWrapper> getNoticeContent(int noticeId) async {
    final response = await _dataSource.getNoticeContent(noticeId);
    return NoticeContentResponseWrapper.fromJson(response);
  }

  @override
  Future<NoticeListResponseWrapper> getNoticeList({
    required int page,
    required int size,
  }) async {
    final response = await _dataSource.getNotices(page: page, size: size);
    return NoticeListResponseWrapper.fromJson(response);
  }
}
