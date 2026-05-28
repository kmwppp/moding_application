import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alarm_data_source.g.dart';

@riverpod
AlarmDataSource alarmDataSource(Ref ref) {
  return AlarmDataSource(ref.watch(dioProvider));
}

class AlarmDataSource {
  AlarmDataSource(this._dio);

  final Dio _dio;

  Future<ResponseModel> patchNotificationRead(int notificationId) async {
    final response = await _dio.patch(
      AppHttpUrl.patchNotificationRead(notificationId),
    );
    return ResponseModel.fromJson(response.data);
  }
}
