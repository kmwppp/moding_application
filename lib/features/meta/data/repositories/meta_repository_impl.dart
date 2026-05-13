import 'package:moding_application/features/meta/data/data_source/meta_data_source.dart';
import 'package:moding_application/features/meta/domain/entities/meta_option_dto.dart';
import 'package:moding_application/features/meta/domain/repositories/meta_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meta_repository_impl.g.dart';

@riverpod
MetaRepository metaRepository(Ref ref) {
  final dataSource = ref.watch(metaDataSourceProvider);
  return MetaRepositoryImpl(dataSource);
}

class MetaRepositoryImpl implements MetaRepository {
  final MetaDataSource _dataSource;

  MetaRepositoryImpl(this._dataSource);

  @override
  Future<List<MetaOptionDto>> getBankCodes() async {
    final response = await _dataSource.getBankCodes();
    final rawList = response['data'] as List<dynamic>? ?? const [];

    return rawList
        .whereType<Map<String, dynamic>>()
        .map(MetaOptionDto.fromJson)
        .toList();
  }
}
