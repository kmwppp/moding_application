import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meta_data_source.g.dart';

@riverpod
MetaDataSource metaDataSource(Ref ref) {
  return MetaDataSource(ref.watch(dioProvider));
}

class MetaDataSource {
  final Dio _dio;

  MetaDataSource(this._dio);

  Future<Map<String, dynamic>> getBankCodes() async {
    final response = await _dio.get(AppHttpUrl.getBankCodes);
    return response.data;
  }
}
