import 'package:moding_application/features/profile/domain/entities/profile_summary_dto.dart';

abstract class ProfileRepository {
  Future<ProfileSummaryWrapper> getProfileSummary();
}
