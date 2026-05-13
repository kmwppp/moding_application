import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/app_version/data/data_source/app_version_data_source.dart';
import 'package:moding_application/features/app_version/domain/repositories/app_version_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_version_repository_impl.g.dart';

@riverpod
AppVersionRepository appVersionRepository(Ref ref) {
  final dataSource = ref.watch(appVersionDataSourceProvider);
  return AppVersionRepositoryImpl(dataSource);
}

class AppVersionRepositoryImpl implements AppVersionRepository {
  AppVersionRepositoryImpl(this._dataSource);

  final AppVersionDataSource _dataSource;

  @override
  Future<ResponseModel> getAppVersion({
    required String platform,
    required String currentVersion,
  }) async {
    try {
      final response = await _dataSource.getAppVersion(
        platform: platform,
        currentVersion: currentVersion,
      );
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      final data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return ResponseModel.fromJson(data);
      }
      return const ResponseModel(success: true, message: '');
    } catch (_) {
      return const ResponseModel(success: true, message: '');
    }
  }
}
