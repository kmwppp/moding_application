import 'package:moding_application/features/profile/data/data_source/profile_data_source.dart';
import 'package:moding_application/features/profile/domain/entities/profile_summary_dto.dart';
import 'package:moding_application/features/profile/domain/repositories/profile_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repository_impl.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) {
  final dataSource = ref.watch(profileDataSourceProvider);
  return ProfileRepositoryImpl(dataSource);
}

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _dataSource;

  ProfileRepositoryImpl(this._dataSource);

  @override
  Future<ProfileSummaryWrapper> getProfileSummary() async {
    final response = await _dataSource.getProfileSummary();
    return ProfileSummaryWrapper.fromJson(response);
  }
}
