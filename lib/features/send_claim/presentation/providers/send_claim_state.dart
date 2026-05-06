import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../order_check/domain/entities/order_detail_dto.dart';

part 'send_claim_state.freezed.dart';

@freezed
abstract class SendClaimState with _$SendClaimState {
  const SendClaimState._();

  const factory SendClaimState({
    required int orderId,
    required bool isLoading,
    required bool isSubmitting,
    required OrderDetailWrapper? orderInfo,
    required String? claimType,
    required String claimReason,
    required Map<int, int> claimedQuantities,
    required List<String> photos,
  }) = _SendClaimState;

  factory SendClaimState.initial() => const SendClaimState(
    orderId: 0,
    isLoading: false,
    isSubmitting: false,
    orderInfo: null,
    claimType: null,
    claimReason: '',
    claimedQuantities: {},
    photos: [],
  );
}
