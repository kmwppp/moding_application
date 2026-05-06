import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/terms_item_dto.dart';
import '../../domain/repositories/terms_repository.dart';
import '../data_source/terms_remote_data_source.dart';

part 'terms_repository_impl.g.dart';

@riverpod
TermsRepository termsRepository(Ref ref) {
  final dataSource = ref.watch(termsRemoteDataSourceProvider);
  return TermsRepositoryImpl(dataSource);
}

class TermsRepositoryImpl implements TermsRepository {
  final TermsRemoteDataSource dataSource;

  TermsRepositoryImpl(this.dataSource);

  @override
  Future<TermsDto> getTerms() async {
    final response = await dataSource.getTerms();

    return TermsDto.fromJson({'data': response['data']});
  }
}
