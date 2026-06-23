import 'package:moding_application/features/app_version/domain/entities/app_version_response_dto.dart';

abstract class AppVersionRepository {
  Future<AppVersionResponseDto?> getAppVersion({
    required String platform,
    required String currentVersion,
  });
}
