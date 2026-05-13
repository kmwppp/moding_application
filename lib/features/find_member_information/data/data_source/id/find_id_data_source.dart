import 'package:dio/dio.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'find_id_data_source.g.dart';

@riverpod
FindIdDataSource findIdDataSource(Ref ref) {
  return FindIdDataSource(ref.watch(dioProvider));
}

class FindIdDataSource {
  final Dio _dio;

  FindIdDataSource(this._dio);
}
