import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/profile/domain/entities/profile_summary_dto.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({required ProfileSummaryWrapper? profileSummary}) =
      _ProfileState;

  factory ProfileState.initial() => ProfileState(profileSummary: null);
}
