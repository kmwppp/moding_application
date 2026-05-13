import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_version_data_source.g.dart';

@riverpod
AppVersionDataSource appVersionDataSource(Ref ref) {
  return AppVersionDataSource(ref.watch(dioProvider));
}

class AppVersionDataSource {
  AppVersionDataSource(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> getAppVersion({
    required String platform,
    required String currentVersion,
  }) async {
    final response = await _dio.get(
      AppHttpUrl.getAppVersion(platform),
      queryParameters: {'currentVersion': currentVersion},
      options: Options(extra: {'SkipAuth': true}),
    );
    return response.data;
  }
}
