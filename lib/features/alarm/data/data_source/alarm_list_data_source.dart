import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alarm_list_data_source.g.dart';

@riverpod
AlarmListDataSource alarmListDataSource(Ref ref) {
  return AlarmListDataSource(ref.watch(dioProvider));
}

class AlarmListDataSource {
  AlarmListDataSource(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> getNotifications({
    required String filter,
    required int page,
    required int size,
  }) async {
    final response = await _dio.get(
      AppHttpUrl.getNotifications,
      queryParameters: {'filter': filter, 'page': page, 'size': size},
    );
    return response.data;
  }
}
