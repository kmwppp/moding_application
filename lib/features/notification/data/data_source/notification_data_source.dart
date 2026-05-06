import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_data_source.g.dart';

@riverpod
NotificationDataSource notificationDataSource(Ref ref) {
  return NotificationDataSource(ref.watch(dioProvider));
}

class NotificationDataSource {
  final Dio _dio;

  NotificationDataSource(this._dio);

  Future<Map<String, dynamic>> getNotices({
    required int page,
    required int size,
  }) async {
    final response = await _dio.get(
      AppHttpUrl.getNotices(page: page, size: size),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getNoticeContent(int noticeId) async {
    final response = await _dio.get(AppHttpUrl.getNoticeContent(noticeId));
    return response.data;
  }

  Future<Map<String, dynamic>> getFAQs({
    required int page,
    required int size,
    String? category,
  }) async {
    final response = await _dio.get(
      AppHttpUrl.getFAQs(page: page, size: size, category: category),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getFAQContent(int faqId) async {
    final response = await _dio.get(AppHttpUrl.getFAQContent(faqId));
    return response.data;
  }
}
