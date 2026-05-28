import 'package:moding_application/features/find_member_information/data/data_source/pw/find_pw_data_source.dart';
import 'package:moding_application/features/find_member_information/domain/entities/pw/find_pw_response_dto.dart';
import 'package:moding_application/features/find_member_information/domain/repositories/pw/find_pw_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'find_pw_repository_impl.g.dart';

@riverpod
FindPwRepository findPwRepository(Ref ref) {
  return FindPwRepositoryImpl(ref.watch(findPwDataSourceProvider));
}

class FindPwRepositoryImpl implements FindPwRepository {
  const FindPwRepositoryImpl(this._dataSource);

  final FindPwDataSource _dataSource;

  @override
  Future<FindPwResponseDto> patchFindPassword({
    required String loginId,
    required String identityVerificationKey,
    required String newPassword,
  }) async {
    final response = await _dataSource.patchFindPassword(
      loginId: loginId,
      identityVerificationKey: identityVerificationKey,
      newPassword: newPassword,
    );
    return FindPwResponseDto.fromJson(response);
  }
}
