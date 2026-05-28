import 'package:moding_application/features/alarm/data/data_source/alarm_list_data_source.dart';
import 'package:moding_application/features/alarm/domain/entities/alarm_list_response_dto.dart';
import 'package:moding_application/features/alarm/domain/repositories/alarm_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alarm_list_repository_impl.g.dart';

@riverpod
AlarmListRepository alarmListRepository(Ref ref) {
  final dataSource = ref.watch(alarmListDataSourceProvider);
  return AlarmListRepositoryImpl(dataSource);
}

class AlarmListRepositoryImpl implements AlarmListRepository {
  AlarmListRepositoryImpl(this._dataSource);

  final AlarmListDataSource _dataSource;

  @override
  Future<AlarmListResponseWrapper> getNotifications({
    required String filter,
    required int page,
    required int size,
  }) async {
    final response = await _dataSource.getNotifications(
      filter: filter,
      page: page,
      size: size,
    );
    return AlarmListResponseWrapper.fromJson(response);
  }
}
