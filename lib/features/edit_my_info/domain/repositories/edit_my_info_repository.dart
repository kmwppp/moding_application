import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/alcohol_buyer_status_response_dto.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/notification_settings_response_dto.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/user_info_masking_response_dto.dart';

abstract class EditMyInfoRepository {
  Future<UserInfoMaskingResponseWrapper> getMaskingMyInfo();

  Future<AlcoholBuyerStatusResponseWrapper> getAlcoholBuyerStatus();

  Future<NotificationSettingsResponseWrapper> getNotificationSettings();

  Future<ResponseModel> postAlcoholBuyerApply();

  Future<ResponseModel> patchNotificationSettings({
    required bool notificationEnabled,
  });

  Future<ResponseModel> deleteUser();
}
