import 'package:moding_application/features/alarm/domain/entities/alarm_list_response_dto.dart';

abstract class AlarmListRepository {
  Future<AlarmListResponseWrapper> getNotifications({
    required String filter,
    required int page,
    required int size,
  });
}
