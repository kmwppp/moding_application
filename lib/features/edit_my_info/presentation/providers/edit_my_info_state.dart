import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/user_info_masking_response_dto.dart';

part 'edit_my_info_state.freezed.dart';

@freezed
abstract class EditMyInfoState with _$EditMyInfoState {
  const EditMyInfoState._();

  const factory EditMyInfoState({
    required bool isLoading,
    @Default(false) bool isNotificationLoading,
    bool? notificationEnabled,
    UserInfoMaskingResponseWrapper? maskingMyInfo,
  }) = _EditMyInfoState;

  factory EditMyInfoState.initial() =>
      const EditMyInfoState(
        isLoading: true,
        isNotificationLoading: false,
        notificationEnabled: null,
        maskingMyInfo: null,
      );
}
