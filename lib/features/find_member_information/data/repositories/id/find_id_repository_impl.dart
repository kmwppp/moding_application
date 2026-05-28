import 'package:moding_application/features/find_member_information/data/data_source/id/find_id_data_source.dart';
import 'package:moding_application/features/find_member_information/domain/entities/id/find_id_response_dto.dart';
import 'package:moding_application/features/find_member_information/domain/repositories/id/find_id_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'find_id_repository_impl.g.dart';

@riverpod
FindIdRepository findIdRepository(Ref ref) {
  return FindIdRepositoryImpl(ref.watch(findIdDataSourceProvider));
}

class FindIdRepositoryImpl implements FindIdRepository {
  const FindIdRepositoryImpl(this._dataSource);

  final FindIdDataSource _dataSource;

  @override
  Future<FindIdResponseDto> postFindId(String identityVerificationKey) async {
    final response = await _dataSource.postFindId(identityVerificationKey);
    return FindIdResponseDto.fromJson(response);
  }
}
