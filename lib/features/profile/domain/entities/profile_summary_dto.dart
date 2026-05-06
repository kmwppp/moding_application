import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/profile/domain/enums/approval_status.dart';

import '../enums/role.dart';

part 'profile_summary_dto.freezed.dart';
part 'profile_summary_dto.g.dart';

@freezed
abstract class ProfileSummaryWrapper with _$ProfileSummaryWrapper {
  const factory ProfileSummaryWrapper({required ProfileSummaryDto data}) =
      _ProfileSummaryWrapper;

  factory ProfileSummaryWrapper.fromJson(Map<String, dynamic> json) =>
      _$ProfileSummaryWrapperFromJson(json);
}

@freezed
abstract class ProfileSummaryDto with _$ProfileSummaryDto {
  const factory ProfileSummaryDto({
    required String businessName,
    required Role role,
    ApprovalStatus? approvalStatus,
    required ProfileOrderCountsDto orderCounts,
  }) = _ProfileSummaryDto;

  factory ProfileSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileSummaryDtoFromJson(json);
}

@freezed
abstract class ProfileOrderCountsDto with _$ProfileOrderCountsDto {
  const factory ProfileOrderCountsDto({
    required int total,
    required int paymentPending,
    required int ordered,
    required int confirmed,
    required int shipped,
    required int delivered,
    required int purchaseConfirmed,
    required int claimInProgress,
    required int cancelled,
  }) = _ProfileOrderCountsDto;

  factory ProfileOrderCountsDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileOrderCountsDtoFromJson(json);
}
