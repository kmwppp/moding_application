import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/alarm/data/data_source/alarm_data_source.dart';
import 'package:moding_application/features/alarm/domain/repositories/alarm_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alarm_repository_impl.g.dart';

@riverpod
AlarmRepository alarmRepository(Ref ref) {
  final dataSource = ref.watch(alarmDataSourceProvider);
  return AlarmRepositoryImpl(dataSource);
}

class AlarmRepositoryImpl implements AlarmRepository {
  AlarmRepositoryImpl(this._dataSource);

  final AlarmDataSource _dataSource;

  @override
  Future<ResponseModel> patchNotificationRead(int notificationId) {
    return _dataSource.patchNotificationRead(notificationId);
  }
}
