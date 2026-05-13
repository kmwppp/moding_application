import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_data_source.g.dart';

@riverpod
ProfileDataSource profileDataSource(Ref ref) {
  return ProfileDataSource(ref.watch(dioProvider));
}

class ProfileDataSource {
  final Dio _dio;

  ProfileDataSource(this._dio);

  Future<Map<String, dynamic>> getProfileSummary() async {
    final response = await _dio.get(AppHttpUrl.getProfileSummary);
    return response.data;
  }

  Future<Map<String, dynamic>> postWebViewTokens() async {
    final response = await _dio.post(AppHttpUrl.postWebViewTokens);
    return response.data;
  }
}
