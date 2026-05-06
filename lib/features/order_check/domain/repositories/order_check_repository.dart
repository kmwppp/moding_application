import 'package:moding_application/features/order_check/domain/entities/order_detail_dto.dart';

abstract class OrderCheckRepository {
  Future<OrderDetailWrapper> getOrderDetail(int orderId);
}
