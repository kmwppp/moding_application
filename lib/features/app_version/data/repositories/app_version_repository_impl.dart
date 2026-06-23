import 'package:dio/dio.dart';
import 'package:moding_application/features/app_version/data/data_source/app_version_data_source.dart';
import 'package:moding_application/features/app_version/domain/entities/app_version_response_dto.dart';
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
  Future<AppVersionResponseDto?> getAppVersion({
    required String platform,
    required String currentVersion,
  }) async {
    try {
      final response = await _dataSource.getAppVersion(
        platform: platform,
        currentVersion: currentVersion,
      );
      return AppVersionResponseDto.fromJson(response);
    } on DioException catch (e) {
      final data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return AppVersionResponseDto.fromJson(
          data,
          statusCode: e.response?.statusCode,
        );
      }
      return null;
    } catch (_) {
      return null;
    }
  }
}
