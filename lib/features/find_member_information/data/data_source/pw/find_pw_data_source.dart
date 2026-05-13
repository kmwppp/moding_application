import 'package:dio/dio.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'find_pw_data_source.g.dart';

@riverpod
FindPwDataSource findPwDataSource(Ref ref) {
  return FindPwDataSource(ref.watch(dioProvider));
}

class FindPwDataSource {
  final Dio _dio;

  FindPwDataSource(this._dio);
}
