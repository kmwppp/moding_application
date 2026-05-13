import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_my_info_data_source.g.dart';

@riverpod
EditMyInfoDataSource editMyInfoDataSource(Ref ref) {
  return EditMyInfoDataSource(ref.watch(dioProvider));
}

class EditMyInfoDataSource {
  final Dio _dio;

  EditMyInfoDataSource(this._dio);

  Future<Map<String, dynamic>> getMaskingMyInfo() async {
    final response = await _dio.get(AppHttpUrl.getMaskingMyInfo);
    return response.data;
  }

  Future<Map<String, dynamic>> patchNotificationSettings({
    required bool notificationEnabled,
  }) async {
    final response = await _dio.patch(
      AppHttpUrl.patchNotificationSettings,
      data: {'notificationEnabled': notificationEnabled},
    );
    return response.data;
  }

  Future<Map<String, dynamic>> deleteUser() async {
    final response = await _dio.delete(AppHttpUrl.getMyAccountInfo);
    return response.data;
  }
}
