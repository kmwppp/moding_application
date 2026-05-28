import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_account_information_data_source.g.dart';

@riverpod
ChangeAccountInformationDataSource changeAccountInformationDataSource(Ref ref) {
  return ChangeAccountInformationDataSource(ref.watch(dioProvider));
}

class ChangeAccountInformationDataSource {
  final Dio _dio;

  ChangeAccountInformationDataSource(this._dio);

  Future<Map<String, dynamic>> getMyAccountInfo() async {
    final response = await _dio.get(AppHttpUrl.getMyAccountInfo);
    return response.data;
  }

  Future<Map<String, dynamic>> patchMyAccountInfo({
    required String email,
    required String identityKey,
  }) async {
    final response = await _dio.patch(
      AppHttpUrl.getMyAccountInfo,
      data: {'email': email, 'identityKey': identityKey},
    );
    return response.data;
  }
}
