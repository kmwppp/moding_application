import '../../features/order/domain/enums/pg_provider.dart';

class CartOrderPageParams {
  final List<int> cartItemIds;
  final PgProvider pgProvider;

  CartOrderPageParams({required this.cartItemIds, required this.pgProvider});
}
