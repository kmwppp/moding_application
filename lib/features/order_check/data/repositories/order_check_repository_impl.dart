import 'package:moding_application/features/order_check/data/data_source/order_check_data_source.dart';
import 'package:moding_application/features/order_check/domain/entities/order_detail_dto.dart';
import 'package:moding_application/features/order_check/domain/repositories/order_check_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_check_repository_impl.g.dart';

@riverpod
OrderCheckRepository orderCheckRepository(Ref ref) {
  final dataSource = ref.watch(orderCheckDataSourceProvider);
  return OrderCheckRepositoryImpl(dataSource);
}

class OrderCheckRepositoryImpl implements OrderCheckRepository {
  final OrderCheckDataSource _dataSource;

  OrderCheckRepositoryImpl(this._dataSource);

  @override
  Future<OrderDetailWrapper> getOrderDetail(int orderId) async {
    final response = await _dataSource.getOrderDetail(orderId);
    return OrderDetailWrapper.fromJson(response);
  }
}
