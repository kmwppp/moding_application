import 'package:moding_application/core/network/entities/response_model.dart';

abstract class AppVersionRepository {
  Future<ResponseModel> getAppVersion({
    required String platform,
    required String currentVersion,
  });
}
