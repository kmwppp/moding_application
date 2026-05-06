import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'terms_remote_data_source.g.dart';

@riverpod
TermsRemoteDataSource termsRemoteDataSource(Ref ref) {
  return TermsRemoteDataSource(ref.watch(dioProvider));
}

class TermsRemoteDataSource {
  final Dio dio;

  TermsRemoteDataSource(this.dio);

  Future<Map<String, dynamic>> getTerms() async {
    final response = await dio.get(AppHttpUrl.getTerms);
    return response.data;
  }
}
