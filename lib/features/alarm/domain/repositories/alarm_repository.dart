import 'package:moding_application/core/network/entities/response_model.dart';

abstract class AlarmRepository {
  Future<ResponseModel> patchNotificationRead(int notificationId);
}
