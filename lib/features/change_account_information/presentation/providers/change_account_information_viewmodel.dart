import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/change_account_information/data/repositories/change_account_information_repository_impl.dart';
import 'package:moding_application/features/change_account_information/presentation/providers/change_account_information_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_account_information_viewmodel.g.dart';

@Riverpod()
class ChangeAccountInformationViewModel
    extends _$ChangeAccountInformationViewModel {
  @override
  ChangeAccountInformationState build() {
    return ChangeAccountInformationState.initial();
  }

  Future<void> getMyAccountInfo() async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(changeAccountInformationRepositoryProvider);
      final response = await repository.getMyAccountInfo();
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, accountInfo: response.data);
    } catch (e) {
      debugPrint(e.toString());
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false);
    }
  }

  Future<ResponseModel> patchMyAccountInfo({
    required String email,
    required String phone,
  }) async {
    state = state.copyWith(isSubmitting: true);
    try {
      final repository = ref.read(changeAccountInformationRepositoryProvider);
      final response = await repository.patchMyAccountInfo(
        email: email,
        phone: phone,
      );
      if (!ref.mounted) return response;

      state = state.copyWith(
        isSubmitting: false,
        accountInfo: response.success && state.accountInfo != null
            ? state.accountInfo!.copyWith(email: email, phone: phone)
            : state.accountInfo,
      );

      return response;
    } catch (e) {
      debugPrint(e.toString());
      if (ref.mounted) {
        state = state.copyWith(isSubmitting: false);
      }
      return const ResponseModel(success: false, message: '계정 정보 변경에 실패했습니다.');
    }
  }
}
