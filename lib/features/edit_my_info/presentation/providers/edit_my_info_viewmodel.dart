import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/edit_my_info/data/repositories/edit_my_info_repository_impl.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_my_info_viewmodel.g.dart';

@Riverpod()
class EditMyInfoViewModel extends _$EditMyInfoViewModel {
  @override
  EditMyInfoState build() {
    return EditMyInfoState.initial();
  }

  Future<void> getMaskingMyInfo() async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(editMyInfoRepositoryProvider);
      final response = await repository.getMaskingMyInfo();
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, maskingMyInfo: response);
    } catch (e) {
      debugPrint(e.toString());
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> getNotificationSettings() async {
    state = state.copyWith(isNotificationLoading: true);
    try {
      final repository = ref.read(editMyInfoRepositoryProvider);
      final response = await repository.getNotificationSettings();
      if (!ref.mounted) return;
      state = state.copyWith(
        isNotificationLoading: false,
        notificationEnabled: response.data.notificationEnabled,
      );
    } catch (e) {
      debugPrint(e.toString());
      if (!ref.mounted) return;
      state = state.copyWith(isNotificationLoading: false);
    }
  }

  Future<ResponseModel> patchNotificationSettings(bool isEnabled) async {
    final currentMasking = state.maskingMyInfo;
    final currentNotificationEnabled = state.notificationEnabled;
    if (currentNotificationEnabled == null) {
      return const ResponseModel(success: false, message: '알림 설정을 불러오지 못했습니다.');
    }

    state = state.copyWith(notificationEnabled: isEnabled);

    try {
      final repository = ref.read(editMyInfoRepositoryProvider);
      final response = await repository.patchNotificationSettings(
        notificationEnabled: isEnabled,
      );

      if (!response.success && ref.mounted) {
        state = state.copyWith(
          notificationEnabled: currentNotificationEnabled,
          maskingMyInfo: currentMasking,
        );
      }

      return response;
    } catch (e) {
      debugPrint(e.toString());
      if (ref.mounted) {
        state = state.copyWith(
          notificationEnabled: currentNotificationEnabled,
          maskingMyInfo: currentMasking,
        );
      }
      return const ResponseModel(success: false, message: '알림 설정 변경에 실패했습니다.');
    }
  }

  Future<ResponseModel> deleteUser() async {
    try {
      final repository = ref.read(editMyInfoRepositoryProvider);
      return await repository.deleteUser();
    } catch (e) {
      debugPrint(e.toString());
      return const ResponseModel(success: false, message: '회원탈퇴에 실패했습니다.');
    }
  }
}
