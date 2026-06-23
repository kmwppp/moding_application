import '../../features/order/domain/entities/order_request_dto.dart';
import '../../features/order/domain/enums/pg_provider.dart';

class OrderPageParams {
  final OrderRequestDto requestDto;
  final PgProvider pgProvider;

  OrderPageParams({required this.requestDto, required this.pgProvider});
}
