import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/claim_check/data/repositories/claim_check_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'claim_check_state.dart';

part 'claim_check_viewmodel.g.dart';

@Riverpod()
class ClaimCheckViewModel extends _$ClaimCheckViewModel {
  @override
  ClaimCheckState build() {
    return ClaimCheckState.initial();
  }

  Future<void> getClaimDetail(int claimId) async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(claimCheckRepositoryProvider);
      final claimDetail = await repository.getClaimDetail(claimId);
      state = state.copyWith(isLoading: false, claimDetail: claimDetail);
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(isLoading: false);
    }
  }

  Future<ResponseModel> submitAppeal({
    required int claimId,
    required String appealReason,
  }) async {
    try {
      final repository = ref.read(claimCheckRepositoryProvider);
      return await repository.patchClaimAppeal(
        claimId: claimId,
        appealReason: appealReason,
      );
    } catch (e) {
      debugPrint(e.toString());
      return const ResponseModel(success: false, message: '이의신청 중 오류가 발생했습니다.');
    }
  }
}
